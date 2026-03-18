#include <string.h>
#include <stdint.h>

#include "xparameters.h"
#include "xil_printf.h"
#include "xil_exception.h"
#include "sleep.h"

#include "xintc.h"
#include "xuartlite.h"
#include "xgpio.h"

#include "xaxidma.h"
#include "xil_cache.h"

/* ============================================================
 * Addresses / IRQ  (aligned with your NEW xparameters.h)
 * ============================================================ */
#define INTC_BASEADDR      XPAR_XINTC_0_BASEADDR
#define UART_BASEADDR      XPAR_XUARTLITE_0_BASEADDR
#define UART_IRQ_ID        XPAR_FABRIC_XUARTLITE_0_INTR

/* AXI_GPIO_0 / AXI_GPIO_1 */
#define GPIO0_BASEADDR XPAR_XGPIO_0_BASEADDR
#define GPIO1_BASEADDR XPAR_XGPIO_1_BASEADDR

/* AXI_GPIO_10 (presence interrupt) */
#define GPIO_PRES_BASEADDR XPAR_XGPIO_2_BASEADDR
#define GPIO_PRES_IRQ_ID   XPAR_FABRIC_XGPIO_2_INTR

/* NEW AXI_GPIO_11 (newly added GPIO, no interrupt) */
#define GPIO10_BASEADDR  XPAR_XGPIO_3_BASEADDR

/* AXI_GPIO_2 / AXI_GPIO_3 */
#define GPIO2_BASEADDR XPAR_XGPIO_4_BASEADDR
#define GPIO3_BASEADDR XPAR_XGPIO_5_BASEADDR

/* AXI_GPIO_4 / AXI_GPIO_5 / AXI_GPIO_6 with interrupts */
#define GPIO4_BASEADDR XPAR_XGPIO_6_BASEADDR
#define GPIO4_IRQ_ID   XPAR_FABRIC_XGPIO_6_INTR

#define GPIO5_BASEADDR XPAR_XGPIO_7_BASEADDR
#define GPIO5_IRQ_ID   XPAR_FABRIC_XGPIO_7_INTR

#define GPIO6_BASEADDR XPAR_XGPIO_8_BASEADDR
#define GPIO6_IRQ_ID   XPAR_FABRIC_XGPIO_8_INTR

/* AXI_GPIO_7 / AXI_GPIO_8 / AXI_GPIO_9 */
#define GPIO7_BASEADDR XPAR_XGPIO_9_BASEADDR
#define GPIO8_BASEADDR XPAR_XGPIO_10_BASEADDR
#define GPIO9_BASEADDR XPAR_XGPIO_11_BASEADDR

/* AXI_GPIO_IRQ_SPI */
#define GPIO_IRQ_SPI_BASEADDR XPAR_XGPIO_12_BASEADDR
#define GPIO_SPI_IRQ_ID       XPAR_FABRIC_XGPIO_12_INTR

#define GPIO_CHAN_1 1
#define GPIO_CHAN_2 2

/* ============================================================
 * BRAM / DMA
 * ============================================================ */
 #ifndef XPAR_AXIDMA_0_DEVICE_ID
# define XPAR_AXIDMA_0_DEVICE_ID 0
#endif
#define BRAM_DMA_BASE      ((u32)XPAR_AXI_BRAM_CTRL_0_BASEADDR)
#define DMA_DEV_ID         XPAR_AXIDMA_0_DEVICE_ID

#define DMA_WORD_BYTES     4U
#define N_SAMPLES          256U
#define CAP_BYTES          (N_SAMPLES * DMA_WORD_BYTES)
#define DMA_TIMEOUT_LOOP   60000000U

#define ADC_CODE_SHIFT     4U

/* ============================================================
 * Instances
 * ============================================================ */
static XIntc     Intc;
static XUartLite Uart;

static XGpio     Gpio0, Gpio1, Gpio2, Gpio3;
static XGpio     Gpio4, Gpio5, Gpio6;
static XGpio     Gpio7, Gpio8, Gpio9, Gpio10;
static XGpio     GpioIrqSpi;
static XGpio     GpioPres;          /* NEW GPIO (0/1) with interrupt */

static XAxiDma   AxiDma;

/* UART RX */
static volatile u8  rx_byte = 0;
static volatile int g_capture_req = 0;

/* PWM frame parser */
#define FRAME_LEN 19
static char frame_buf[FRAME_LEN];
static int  frame_idx = 0;
static enum { WAIT_START, RECV_FRAME } rx_state = WAIT_START;

/* Presence last value */
static volatile u32 g_pres_last = 0xFFFFFFFFu;

/* ============================================================
 * Prototypes
 * ============================================================ */
static int  InitGpio_ByBase(XGpio *Inst, u32 BaseAddr);
static int  InitUartLite_ByBase(XUartLite *Inst, u32 BaseAddr);
static int  SetupInterrupts_ByBase(XIntc *Inst, u32 BaseAddr);

static void Uart_RecvHandler(void *CallBackRef, unsigned int EventData);
static void Uart_SendHandler(void *CallBackRef, unsigned int EventData);

static void GpioIrqSpi_Handler(void *CallbackRef);
static void Gpio4_Handler(void *CallbackRef);
static void Gpio5_Handler(void *CallbackRef);
static void Gpio6_Handler(void *CallbackRef);
static void GpioPres_Handler(void *CallbackRef);

static int  InitDma(void);
static int  DmaCaptureToMem(u32 dst_addr, u32 nbytes);

typedef struct {
    u32 n;
    u32 min_mv;
    u32 max_mv;
    u32 mean_mv;
} StatsMv;

static void ComputeStatsFromBram(const u32 *bram_words, u32 nwords, StatsMv *out);
static inline u32 CodeToMv(u16 raw16);

/* ============================================================
 * DMA init (Simple mode, S2MM)
 * ============================================================ */
static int InitDma(void)
{
    XAxiDma_Config *cfg = XAxiDma_LookupConfig(DMA_DEV_ID);
    if (!cfg) {
        xil_printf("[DMA] LookupConfig failed\r\n");
        return XST_FAILURE;
    }

    int st = XAxiDma_CfgInitialize(&AxiDma, cfg);
    if (st != XST_SUCCESS) {
        xil_printf("[DMA] CfgInitialize failed %d\r\n", st);
        return st;
    }

    if (XAxiDma_HasSg(&AxiDma)) {
        xil_printf("[DMA] ERROR: SG mode enabled, need Simple mode\r\n");
        return XST_FAILURE;
    }

    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

    XAxiDma_Reset(&AxiDma);
    while (!XAxiDma_ResetIsDone(&AxiDma)) {;}

    xil_printf("[DMA] initialized (S2MM)\r\n");
    return XST_SUCCESS;
}

static int DmaCaptureToMem(u32 dst_addr, u32 nbytes)
{
    if ((dst_addr & 0x3U) || (nbytes & 0x3U)) {
        xil_printf("[DMA] align error: addr=0x%08x bytes=%u\r\n",
                   (unsigned)dst_addr, (unsigned)nbytes);
        return XST_FAILURE;
    }

    if (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
        XAxiDma_Reset(&AxiDma);
        while (!XAxiDma_ResetIsDone(&AxiDma)) {;}
    }

    XAxiDma_IntrAckIrq(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

    int st = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)dst_addr, nbytes, XAXIDMA_DEVICE_TO_DMA);
    if (st != XST_SUCCESS) {
        xil_printf("[DMA] SimpleTransfer failed st=%d\r\n", st);
        return st;
    }

    for (u32 t = 0; t < DMA_TIMEOUT_LOOP; t++) {
        if (!XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
            return XST_SUCCESS;
        }
    }

    xil_printf("[DMA] timeout\r\n");
    return XST_FAILURE;
}

/* ============================================================
 * GPIO init
 * ============================================================ */
static int InitGpio_ByBase(XGpio *Inst, u32 BaseAddr)
{
    int stat = XGpio_Initialize(Inst, BaseAddr);
    if (stat != XST_SUCCESS) {
        xil_printf("GPIO init error @ 0x%08x\r\n", (unsigned)BaseAddr);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

/* ============================================================
 * UART init
 * ============================================================ */
static int InitUartLite_ByBase(XUartLite *Inst, u32 BaseAddr)
{
    XUartLite_Config cfg;
    memset(&cfg, 0, sizeof(cfg));
    cfg.RegBaseAddr = BaseAddr;

    int s = XUartLite_CfgInitialize(Inst, &cfg, BaseAddr);
    if (s != XST_SUCCESS) return s;

    XUartLite_ResetFifos(Inst);

    XUartLite_SetRecvHandler(Inst, Uart_RecvHandler, Inst);
    XUartLite_SetSendHandler(Inst, Uart_SendHandler, Inst);

    rx_byte = 0;
    XUartLite_Recv(Inst, (u8 *)&rx_byte, 1);
    XUartLite_EnableInterrupt(Inst);

    return XST_SUCCESS;
}

/* ============================================================
 * INTC setup
 * ============================================================ */
static int SetupInterrupts_ByBase(XIntc *Inst, u32 BaseAddr)
{
    int s = XIntc_Initialize(Inst, BaseAddr);
    if (s != XST_SUCCESS) return s;

    /* UART */
    s = XIntc_Connect(Inst, UART_IRQ_ID,
                      (XInterruptHandler)XUartLite_InterruptHandler,
                      (void *)&Uart);
    if (s != XST_SUCCESS) return s;

    /* GPIO IRQ SPI */
    s = XIntc_Connect(Inst, GPIO_SPI_IRQ_ID,
                      (XInterruptHandler)GpioIrqSpi_Handler,
                      (void *)&GpioIrqSpi);
    if (s != XST_SUCCESS) return s;

    /* GPIO4/5/6 */
    s = XIntc_Connect(Inst, GPIO4_IRQ_ID, (XInterruptHandler)Gpio4_Handler, (void *)&Gpio4);
    if (s != XST_SUCCESS) return s;

    s = XIntc_Connect(Inst, GPIO5_IRQ_ID, (XInterruptHandler)Gpio5_Handler, (void *)&Gpio5);
    if (s != XST_SUCCESS) return s;

    s = XIntc_Connect(Inst, GPIO6_IRQ_ID, (XInterruptHandler)Gpio6_Handler, (void *)&Gpio6);
    if (s != XST_SUCCESS) return s;

    /* NEW Presence GPIO interrupt */
    s = XIntc_Connect(Inst, GPIO_PRES_IRQ_ID, (XInterruptHandler)GpioPres_Handler, (void *)&GpioPres);
    if (s != XST_SUCCESS) return s;

    s = XIntc_Start(Inst, XIN_REAL_MODE);
    if (s != XST_SUCCESS) return s;

    XIntc_Enable(Inst, UART_IRQ_ID);
    XIntc_Enable(Inst, GPIO_SPI_IRQ_ID);
    XIntc_Enable(Inst, GPIO4_IRQ_ID);
    XIntc_Enable(Inst, GPIO5_IRQ_ID);
    XIntc_Enable(Inst, GPIO6_IRQ_ID);
    XIntc_Enable(Inst, GPIO_PRES_IRQ_ID);

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XIntc_InterruptHandler,
                                 Inst);
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

/* ============================================================
 * UART handlers
 * ============================================================ */
static void Uart_RecvHandler(void *CallBackRef, unsigned int EventData)
{
    (void)EventData;
    XUartLite *U = (XUartLite *)CallBackRef;
    u8 c = (u8)rx_byte;

    if (rx_state == WAIT_START) {
        if (c == 'C') {
            g_capture_req = 1;
        } else if (c == 'S') {
            rx_state  = RECV_FRAME;
            frame_idx = 0;
            memset(frame_buf, 0, FRAME_LEN);
            frame_buf[frame_idx++] = (char)c;
        }
    } else {
    
        if (frame_idx < FRAME_LEN) {
            frame_buf[frame_idx++] = (char)c;
            
            if (frame_idx == FRAME_LEN) {
                if ((u8)frame_buf[FRAME_LEN - 1] == 'E') {
                    u16 v1 = ((u16)(u8)frame_buf[1] << 8) | (u16)(u8)frame_buf[2];
                    u16 v2 = ((u16)(u8)frame_buf[3] << 8) | (u16)(u8)frame_buf[4];
                    u16 v3 = ((u16)(u8)frame_buf[5] << 8) | (u16)(u8)frame_buf[6];
                    u16 v4 = ((u16)(u8)frame_buf[7] << 8) | (u16)(u8)frame_buf[8];
                    u8  v5 = (u8)frame_buf[9];
                    u8  v6 = (u8)frame_buf[10];
                    u8  v7 = (u8)frame_buf[11];
                    u8  v8 = (u8)frame_buf[12];
                    u8  v9 = (u8)frame_buf[13];
                    u8  v10 = (u8)frame_buf[14];
                    u8  v11 = (u8)frame_buf[15];
                    u8  v12 = (u8)frame_buf[16];
                    u8  v13 = (u8)frame_buf[17];
                    xil_printf("v7 = %d\r\n", v7);

                    XGpio_DiscreteWrite(&Gpio0, GPIO_CHAN_1, v1);
                    XGpio_DiscreteWrite(&Gpio0, GPIO_CHAN_2, v2);
                    XGpio_DiscreteWrite(&Gpio3, GPIO_CHAN_1, v3);
                    XGpio_DiscreteWrite(&Gpio3, GPIO_CHAN_2, v4);
                    XGpio_DiscreteWrite(&Gpio1, GPIO_CHAN_1, v5);
                    XGpio_DiscreteWrite(&Gpio1, GPIO_CHAN_2, v6);
                    XGpio_DiscreteWrite(&Gpio7, GPIO_CHAN_1, v7);
                    XGpio_DiscreteWrite(&Gpio7, GPIO_CHAN_2, v8);
                    XGpio_DiscreteWrite(&Gpio8, GPIO_CHAN_1, v9);
                    XGpio_DiscreteWrite(&Gpio8, GPIO_CHAN_2, v10);
                    XGpio_DiscreteWrite(&Gpio9, GPIO_CHAN_1, v11);
                    XGpio_DiscreteWrite(&Gpio10, GPIO_CHAN_1, v12);
                    XGpio_DiscreteWrite(&Gpio10, GPIO_CHAN_2, v13);
                }
                rx_state  = WAIT_START;
                frame_idx = 0;
                memset(frame_buf, 0, FRAME_LEN);
            }
        } else {
            rx_state  = WAIT_START;
            frame_idx = 0;
            memset(frame_buf, 0, FRAME_LEN);
        }
    }

    XUartLite_Recv(U, (u8 *)&rx_byte, 1);
}

static void Uart_SendHandler(void *CallBackRef, unsigned int EventData)
{
    (void)CallBackRef;
    (void)EventData;
}

/* ============================================================
 * GPIO IRQ handlers
 * ============================================================ */
static void GpioIrqSpi_Handler(void *CallbackRef)
{
    XGpio *GpioPtr = (XGpio *)CallbackRef;
    u32 status = XGpio_InterruptGetStatus(GpioPtr);

    if (status & 0x1) {
        XGpio_InterruptClear(GpioPtr, 0x1);
        (void)(XGpio_DiscreteRead(GpioPtr, GPIO_CHAN_1) & 0xFFFF);
    }
}

static void Gpio4_Handler(void *CallbackRef)
{
    XGpio *GpioPtr = (XGpio *)CallbackRef;
    u32 status = XGpio_InterruptGetStatus(GpioPtr);
    XGpio_InterruptClear(GpioPtr, status);

    if (status & 0x1) {
        u32 val = XGpio_DiscreteRead(GpioPtr, GPIO_CHAN_1) & 0x1;
        xil_printf("P1:%d\r\n", (int)val);
    }
    if (status & 0x2) {
        u32 val = XGpio_DiscreteRead(GpioPtr, GPIO_CHAN_2) & 0x1;
        xil_printf("P2:%d\r\n", (int)val);
    }
}

static void Gpio5_Handler(void *CallbackRef)
{
    XGpio *GpioPtr = (XGpio *)CallbackRef;
    u32 status = XGpio_InterruptGetStatus(GpioPtr);
    XGpio_InterruptClear(GpioPtr, status);

    if (status & 0x1) {
        u32 val = XGpio_DiscreteRead(GpioPtr, GPIO_CHAN_1) & 0x1;
        xil_printf("G5_P1:%d\r\n", (int)val);
    }
    if (status & 0x2) {
        u32 val = XGpio_DiscreteRead(GpioPtr, GPIO_CHAN_2) & 0x1;
        xil_printf("G5_P2:%d\r\n", (int)val);
    }
}

static void Gpio6_Handler(void *CallbackRef)
{
    XGpio *GpioPtr = (XGpio *)CallbackRef;
    u32 status = XGpio_InterruptGetStatus(GpioPtr);
    XGpio_InterruptClear(GpioPtr, status);

    if (status & 0x1) {
        u32 val = XGpio_DiscreteRead(GpioPtr, GPIO_CHAN_1) & 0x1;
        xil_printf("G6_P1:%d\r\n", (int)val);
    }
    if (status & 0x2) {
        u32 val = XGpio_DiscreteRead(GpioPtr, GPIO_CHAN_2) & 0x1;
        xil_printf("G6_P2:%d\r\n", (int)val);
    }
}

/* NEW: GPIO presence interrupt handler
 * On any change (0->1 or 1->0): send the new level to the IHM via UART.
 * Format example: "PRES:1\r\n" or "PRES:0\r\n"
 */
static void GpioPres_Handler(void *CallbackRef)
{
    XGpio *GpioPtr = (XGpio *)CallbackRef;
    u32 status = XGpio_InterruptGetStatus(GpioPtr);

    if (status & 0x1) {
        XGpio_InterruptClear(GpioPtr, 0x1);

        u32 val = XGpio_DiscreteRead(GpioPtr, GPIO_CHAN_1) & 0x1;

        if (val != g_pres_last) {
            g_pres_last = val;
            xil_printf("PRES:%d\r\n", (int)val);
        }
    } else {
        XGpio_InterruptClear(GpioPtr, status);
    }
}

/* ============================================================
 * ADC convert / stats (unchanged)
 * ============================================================ */
static inline u32 CodeToMv(u16 raw16)
{
    u32 code12 = (u32)((raw16 >> ADC_CODE_SHIFT) & 0x0FFFU);
    return (code12 * 3300U) / 4096U;
}

static void ComputeStatsFromBram(const u32 *bram_words, u32 nwords, StatsMv *out)
{
    if (!out) return;
    memset(out, 0, sizeof(*out));
    if (nwords == 0) return;

    u32 minv = 0xFFFFFFFFU;
    u32 maxv = 0;
    u64 sum  = 0;

    for (u32 i = 0; i < nwords; i++) {
        u16 lo = (u16)(bram_words[i] & 0xFFFFU);
        u32 mv = CodeToMv(lo);

        if (mv < minv) minv = mv;
        if (mv > maxv) maxv = mv;
        sum += mv;
    }

    out->n = nwords;
    out->min_mv = minv;
    out->max_mv = maxv;
    out->mean_mv = (u32)(sum / nwords);
}

/* ============================================================
 * MAIN
 * ============================================================ */
int main(void)
{
    int s;

    xil_printf("\r\nFlashed successfully\r\n");
    xil_printf("Welcome to CMODA7 35t\r\n");

    

    /* GPIO init */
    if (InitGpio_ByBase(&Gpio0, GPIO0_BASEADDR) != XST_SUCCESS) return XST_FAILURE;
    if (InitGpio_ByBase(&Gpio1, GPIO1_BASEADDR) != XST_SUCCESS) return XST_FAILURE;

    if (InitGpio_ByBase(&GpioPres, GPIO_PRES_BASEADDR) != XST_SUCCESS) return XST_FAILURE;

    if (InitGpio_ByBase(&Gpio2, GPIO2_BASEADDR) != XST_SUCCESS) return XST_FAILURE;
    if (InitGpio_ByBase(&Gpio3, GPIO3_BASEADDR) != XST_SUCCESS) return XST_FAILURE;

    if (InitGpio_ByBase(&Gpio4, GPIO4_BASEADDR) != XST_SUCCESS) return XST_FAILURE;
    if (InitGpio_ByBase(&Gpio5, GPIO5_BASEADDR) != XST_SUCCESS) return XST_FAILURE;
    if (InitGpio_ByBase(&Gpio6, GPIO6_BASEADDR) != XST_SUCCESS) return XST_FAILURE;

    if (InitGpio_ByBase(&Gpio7, GPIO7_BASEADDR) != XST_SUCCESS) return XST_FAILURE;
    if (InitGpio_ByBase(&Gpio8, GPIO8_BASEADDR) != XST_SUCCESS) return XST_FAILURE;
    if (InitGpio_ByBase(&Gpio9, GPIO9_BASEADDR) != XST_SUCCESS) return XST_FAILURE;

    if (InitGpio_ByBase(&Gpio10, GPIO10_BASEADDR) != XST_SUCCESS) return XST_FAILURE;

    if (InitGpio_ByBase(&GpioIrqSpi, GPIO_IRQ_SPI_BASEADDR) != XST_SUCCESS) return XST_FAILURE;
    
    /* Directions */
    XGpio_SetDataDirection(&Gpio0, GPIO_CHAN_1, 0x00000000);
    XGpio_SetDataDirection(&Gpio0, GPIO_CHAN_2, 0x00000000);

    XGpio_SetDataDirection(&Gpio1, GPIO_CHAN_1, 0x00000000);
    XGpio_SetDataDirection(&Gpio1, GPIO_CHAN_2, 0x00000000);
    
    /* NEW presence input (single bit) */
    XGpio_SetDataDirection(&GpioPres, GPIO_CHAN_1, 0xFFFFFFFF);
    
    XGpio_SetDataDirection(&Gpio2, GPIO_CHAN_1, 0xFFFFFFFF);
    XGpio_SetDataDirection(&Gpio2, GPIO_CHAN_2, 0x00000000);

    XGpio_SetDataDirection(&Gpio3, GPIO_CHAN_1, 0x00000000);
    XGpio_SetDataDirection(&Gpio3, GPIO_CHAN_2, 0x00000000);

    XGpio_SetDataDirection(&Gpio7, GPIO_CHAN_1, 0x00000000);
    XGpio_SetDataDirection(&Gpio7, GPIO_CHAN_2, 0x00000000);

    XGpio_SetDataDirection(&Gpio8, GPIO_CHAN_1, 0x00000000);
    XGpio_SetDataDirection(&Gpio8, GPIO_CHAN_2, 0x00000000);

    XGpio_SetDataDirection(&Gpio9, GPIO_CHAN_1, 0x00000000);

    XGpio_SetDataDirection(&Gpio10, GPIO_CHAN_1, 0x00000000);
    XGpio_SetDataDirection(&Gpio10, GPIO_CHAN_2, 0x00000000);

    
    /* IRQ GPIOs as inputs */
    XGpio_SetDataDirection(&Gpio4, GPIO_CHAN_1, 0xFFFFFFFF);
    XGpio_SetDataDirection(&Gpio4, GPIO_CHAN_2, 0xFFFFFFFF);

    XGpio_SetDataDirection(&Gpio5, GPIO_CHAN_1, 0xFFFFFFFF);
    XGpio_SetDataDirection(&Gpio5, GPIO_CHAN_2, 0xFFFFFFFF);

    XGpio_SetDataDirection(&Gpio6, GPIO_CHAN_1, 0xFFFFFFFF);
    XGpio_SetDataDirection(&Gpio6, GPIO_CHAN_2, 0xFFFFFFFF);

    XGpio_SetDataDirection(&GpioIrqSpi, GPIO_CHAN_1, 0xFFFFFFFF);
    
    /* Enable GPIO interrupts */
    XGpio_InterruptClear(&GpioIrqSpi, 0x1);
    XGpio_InterruptEnable(&GpioIrqSpi, 0x1);
    XGpio_InterruptGlobalEnable(&GpioIrqSpi);

    XGpio_InterruptClear(&Gpio4, 0x3);
    XGpio_InterruptEnable(&Gpio4, 0x3);
    XGpio_InterruptGlobalEnable(&Gpio4);

    XGpio_InterruptClear(&Gpio5, 0x3);
    XGpio_InterruptEnable(&Gpio5, 0x3);
    XGpio_InterruptGlobalEnable(&Gpio5);

    XGpio_InterruptClear(&Gpio6, 0x3);
    XGpio_InterruptEnable(&Gpio6, 0x3);
    XGpio_InterruptGlobalEnable(&Gpio6);

    /* NEW presence interrupt enable (bit0) */
    XGpio_InterruptClear(&GpioPres, 0x1);
    XGpio_InterruptEnable(&GpioPres, 0x1);
    XGpio_InterruptGlobalEnable(&GpioPres);
    

    /* UART + INTC */
    s = InitUartLite_ByBase(&Uart, UART_BASEADDR);
    if (s != XST_SUCCESS) { xil_printf("UART init fail\r\n"); return XST_FAILURE; }

    s = SetupInterrupts_ByBase(&Intc, INTC_BASEADDR);
    if (s != XST_SUCCESS) { xil_printf("INTC setup fail\r\n"); return XST_FAILURE; }

    /* DMA */
    s = InitDma();
    if (s != XST_SUCCESS) { xil_printf("DMA init error\r\n"); return XST_FAILURE; }

    /* parser state */
    rx_state = WAIT_START;
    frame_idx = 0;
    memset(frame_buf, 0, sizeof(frame_buf));

    /* Send initial presence state once */
    {
        u32 val = XGpio_DiscreteRead(&GpioPres, GPIO_CHAN_1) & 0x1;
        g_pres_last = val;
        xil_printf("PRES:%d\r\n", (int)val);
    }

    while (1) {

        if (g_capture_req) {
            g_capture_req = 0;

            memset((void *)BRAM_DMA_BASE, 0, CAP_BYTES);
            Xil_DCacheFlushRange(BRAM_DMA_BASE, CAP_BYTES);

            s = DmaCaptureToMem(BRAM_DMA_BASE, CAP_BYTES);
            if (s == XST_SUCCESS) {
                Xil_DCacheInvalidateRange(BRAM_DMA_BASE, CAP_BYTES);

                StatsMv st_mv;
                ComputeStatsFromBram((const u32 *)BRAM_DMA_BASE, N_SAMPLES, &st_mv);

                xil_printf("=== Parsed stats (mv_lo) ===\r\n");
                xil_printf("n     = %u\r\n", (unsigned)st_mv.n);
                xil_printf("min   = %u.00 mV\r\n", (unsigned)st_mv.min_mv);
                xil_printf("max   = %u.00 mV\r\n", (unsigned)st_mv.max_mv);
                xil_printf("mean  = %u.00 mV\r\n", (unsigned)st_mv.mean_mv);
                xil_printf("\r\n");
            } else {
                xil_printf("[MB] Capture failed st=%d\r\n", s);
            }
        }

        usleep(1000);
    }

    return XST_SUCCESS;
}