// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Mar 18 15:17:43 2026
// Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yousef/Vivado_workspace/AH_CMOD_35t/AH_CMOD_35t.gen/sources_1/bd/design_1/ip/design_1_SPI_slave_0_0/design_1_SPI_slave_0_0_sim_netlist.v
// Design      : design_1_SPI_slave_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_SPI_slave_0_0,SPI_slave,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SPI_slave,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_SPI_slave_0_0
   (Clk,
    rst,
    cpol,
    cpha,
    sclk,
    ss_n,
    mosi,
    miso,
    rx_enable,
    tx,
    rx,
    busy,
    rx_done);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_mode = "slave Clk" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input cpol;
  input cpha;
  input sclk;
  input ss_n;
  input mosi;
  output miso;
  input rx_enable;
  input [15:0]tx;
  output [15:0]rx;
  output busy;
  output rx_done;

  wire Clk;
  wire U0_n_2;
  wire busy;
  wire miso;
  wire miso_INST_0_i_1_n_0;
  wire mosi;
  wire rst;
  wire [15:0]rx;
  wire rx_done;
  wire rx_enable;
  wire sclk;
  wire ss_n;
  wire [15:0]tx;

  design_1_SPI_slave_0_0_SPI_slave U0
       (.Clk(Clk),
        .busy(busy),
        .miso(miso),
        .miso_INST_0_i_1(U0_n_2),
        .miso_INST_0_i_1_0(miso_INST_0_i_1_n_0),
        .mosi(mosi),
        .rst(rst),
        .rx(rx),
        .rx_done(rx_done),
        .rx_enable(rx_enable),
        .sclk(sclk),
        .ss_n(ss_n),
        .tx(tx));
  FDRE #(
    .INIT(1'b1)) 
    miso_INST_0_i_1
       (.C(Clk),
        .CE(1'b1),
        .D(U0_n_2),
        .Q(miso_INST_0_i_1_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SPI_slave" *) 
module design_1_SPI_slave_0_0_SPI_slave
   (busy,
    rx_done,
    miso_INST_0_i_1,
    miso,
    rx,
    rst,
    ss_n,
    Clk,
    sclk,
    mosi,
    miso_INST_0_i_1_0,
    rx_enable,
    tx);
  output busy;
  output rx_done;
  output miso_INST_0_i_1;
  output miso;
  output [15:0]rx;
  input rst;
  input ss_n;
  input Clk;
  input sclk;
  input mosi;
  input miso_INST_0_i_1_0;
  input rx_enable;
  input [15:0]tx;

  wire \/i__n_0 ;
  wire Clk;
  wire busy;
  wire busy0;
  wire miso;
  wire miso_INST_0_i_1;
  wire miso_INST_0_i_1_0;
  wire miso_tristate_oe_i_1_n_0;
  wire miso_tristate_oe_reg_n_0;
  wire mosi;
  wire mosi_meta;
  wire [15:0]p_0_in;
  wire [0:0]p_0_in_0;
  wire [15:0]p_1_in;
  wire rst;
  wire [15:0]rx;
  wire \rxBuffer[15]_i_1_n_0 ;
  wire \rxBuffer_reg_n_0_[15] ;
  wire rx_done;
  wire rx_done_i_1_n_0;
  wire rx_enable;
  wire sclk;
  wire sclk_meta;
  wire sclk_prev;
  wire sclk_sync;
  wire ss_meta;
  wire ss_n;
  wire ss_prev;
  wire ss_sync;
  wire [15:0]tx;
  wire txBuffer_n_0;
  wire \txBuffer_reg_n_0_[0] ;
  wire \txBuffer_reg_n_0_[10] ;
  wire \txBuffer_reg_n_0_[11] ;
  wire \txBuffer_reg_n_0_[12] ;
  wire \txBuffer_reg_n_0_[13] ;
  wire \txBuffer_reg_n_0_[14] ;
  wire \txBuffer_reg_n_0_[1] ;
  wire \txBuffer_reg_n_0_[2] ;
  wire \txBuffer_reg_n_0_[3] ;
  wire \txBuffer_reg_n_0_[4] ;
  wire \txBuffer_reg_n_0_[5] ;
  wire \txBuffer_reg_n_0_[6] ;
  wire \txBuffer_reg_n_0_[7] ;
  wire \txBuffer_reg_n_0_[8] ;
  wire \txBuffer_reg_n_0_[9] ;

  LUT3 #(
    .INIT(8'h08)) 
    \/i_ 
       (.I0(rx_enable),
        .I1(ss_sync),
        .I2(ss_prev),
        .O(\/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    busy_i_1
       (.I0(ss_sync),
        .O(busy0));
  FDRE busy_reg
       (.C(Clk),
        .CE(1'b1),
        .D(busy0),
        .Q(busy),
        .R(rst));
  LUT2 #(
    .INIT(4'h8)) 
    miso_INST_0
       (.I0(miso_tristate_oe_reg_n_0),
        .I1(miso_INST_0_i_1_0),
        .O(miso));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00002232)) 
    miso_INST_0_i_2
       (.I0(miso_INST_0_i_1_0),
        .I1(rst),
        .I2(sclk_prev),
        .I3(sclk_sync),
        .I4(ss_sync),
        .O(miso_INST_0_i_1));
  LUT6 #(
    .INIT(64'hAAAABBABAAAA88A8)) 
    miso_tristate_oe_i_1
       (.I0(p_0_in_0),
        .I1(rst),
        .I2(sclk_prev),
        .I3(sclk_sync),
        .I4(ss_sync),
        .I5(miso_tristate_oe_reg_n_0),
        .O(miso_tristate_oe_i_1_n_0));
  FDRE miso_tristate_oe_reg
       (.C(Clk),
        .CE(1'b1),
        .D(miso_tristate_oe_i_1_n_0),
        .Q(miso_tristate_oe_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    mosi_meta_reg
       (.C(Clk),
        .CE(1'b1),
        .D(mosi),
        .Q(mosi_meta),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    mosi_sync_reg
       (.C(Clk),
        .CE(1'b1),
        .D(mosi_meta),
        .Q(p_0_in[0]),
        .R(rst));
  LUT3 #(
    .INIT(8'h04)) 
    \rxBuffer[15]_i_1 
       (.I0(sclk_prev),
        .I1(sclk_sync),
        .I2(ss_sync),
        .O(\rxBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[0] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(p_0_in[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[10] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(p_0_in[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[11] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(p_0_in[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[12] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(p_0_in[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[13] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(p_0_in[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[14] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(p_0_in[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[15] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(\rxBuffer_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[1] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[2] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[3] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[4] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[5] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[6] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[7] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(p_0_in[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[8] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(p_0_in[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rxBuffer_reg[9] 
       (.C(Clk),
        .CE(\rxBuffer[15]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(p_0_in[10]),
        .R(rst));
  LUT3 #(
    .INIT(8'h04)) 
    rx_done_i_1
       (.I0(ss_prev),
        .I1(ss_sync),
        .I2(rst),
        .O(rx_done_i_1_n_0));
  FDRE rx_done_reg
       (.C(Clk),
        .CE(1'b1),
        .D(rx_done_i_1_n_0),
        .Q(rx_done),
        .R(1'b0));
  FDRE \rx_reg[0] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[1]),
        .Q(rx[0]),
        .R(rst));
  FDRE \rx_reg[10] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[11]),
        .Q(rx[10]),
        .R(rst));
  FDRE \rx_reg[11] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[12]),
        .Q(rx[11]),
        .R(rst));
  FDRE \rx_reg[12] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[13]),
        .Q(rx[12]),
        .R(rst));
  FDRE \rx_reg[13] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[14]),
        .Q(rx[13]),
        .R(rst));
  FDRE \rx_reg[14] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[15]),
        .Q(rx[14]),
        .R(rst));
  FDRE \rx_reg[15] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(\rxBuffer_reg_n_0_[15] ),
        .Q(rx[15]),
        .R(rst));
  FDRE \rx_reg[1] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[2]),
        .Q(rx[1]),
        .R(rst));
  FDRE \rx_reg[2] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[3]),
        .Q(rx[2]),
        .R(rst));
  FDRE \rx_reg[3] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[4]),
        .Q(rx[3]),
        .R(rst));
  FDRE \rx_reg[4] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[5]),
        .Q(rx[4]),
        .R(rst));
  FDRE \rx_reg[5] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[6]),
        .Q(rx[5]),
        .R(rst));
  FDRE \rx_reg[6] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[7]),
        .Q(rx[6]),
        .R(rst));
  FDRE \rx_reg[7] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[8]),
        .Q(rx[7]),
        .R(rst));
  FDRE \rx_reg[8] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[9]),
        .Q(rx[8]),
        .R(rst));
  FDRE \rx_reg[9] 
       (.C(Clk),
        .CE(\/i__n_0 ),
        .D(p_0_in[10]),
        .Q(rx[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    sclk_meta_reg
       (.C(Clk),
        .CE(1'b1),
        .D(sclk),
        .Q(sclk_meta),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    sclk_prev_reg
       (.C(Clk),
        .CE(1'b1),
        .D(sclk_sync),
        .Q(sclk_prev),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    sclk_sync_reg
       (.C(Clk),
        .CE(1'b1),
        .D(sclk_meta),
        .Q(sclk_sync),
        .R(rst));
  FDSE #(
    .INIT(1'b1)) 
    ss_meta_reg
       (.C(Clk),
        .CE(1'b1),
        .D(ss_n),
        .Q(ss_meta),
        .S(rst));
  FDSE #(
    .INIT(1'b1)) 
    ss_prev_reg
       (.C(Clk),
        .CE(1'b1),
        .D(ss_sync),
        .Q(ss_prev),
        .S(rst));
  FDSE #(
    .INIT(1'b1)) 
    ss_sync_reg
       (.C(Clk),
        .CE(1'b1),
        .D(ss_meta),
        .Q(ss_sync),
        .S(rst));
  LUT4 #(
    .INIT(16'h5510)) 
    txBuffer
       (.I0(ss_sync),
        .I1(sclk_sync),
        .I2(sclk_prev),
        .I3(ss_prev),
        .O(txBuffer_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[0]_i_1 
       (.I0(p_0_in_0),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[10]_i_1 
       (.I0(\txBuffer_reg_n_0_[9] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[10]),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[11]_i_1 
       (.I0(\txBuffer_reg_n_0_[10] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[11]),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[12]_i_1 
       (.I0(\txBuffer_reg_n_0_[11] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[12]),
        .O(p_1_in[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[13]_i_1 
       (.I0(\txBuffer_reg_n_0_[12] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[13]),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[14]_i_1 
       (.I0(\txBuffer_reg_n_0_[13] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[14]),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[15]_i_1 
       (.I0(\txBuffer_reg_n_0_[14] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[15]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[1]_i_1 
       (.I0(\txBuffer_reg_n_0_[0] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[1]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[2]_i_1 
       (.I0(\txBuffer_reg_n_0_[1] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[2]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[3]_i_1 
       (.I0(\txBuffer_reg_n_0_[2] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[3]),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[4]_i_1 
       (.I0(\txBuffer_reg_n_0_[3] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[4]),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[5]_i_1 
       (.I0(\txBuffer_reg_n_0_[4] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[5]),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[6]_i_1 
       (.I0(\txBuffer_reg_n_0_[5] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[6]),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[7]_i_1 
       (.I0(\txBuffer_reg_n_0_[6] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[7]),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[8]_i_1 
       (.I0(\txBuffer_reg_n_0_[7] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[8]),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \txBuffer[9]_i_1 
       (.I0(\txBuffer_reg_n_0_[8] ),
        .I1(sclk_prev),
        .I2(sclk_sync),
        .I3(tx[9]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[0] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[0]),
        .Q(\txBuffer_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[10] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[10]),
        .Q(\txBuffer_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[11] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[11]),
        .Q(\txBuffer_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[12] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[12]),
        .Q(\txBuffer_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[13] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[13]),
        .Q(\txBuffer_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[14] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[14]),
        .Q(\txBuffer_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[15] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[15]),
        .Q(p_0_in_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[1] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[1]),
        .Q(\txBuffer_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[2] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[2]),
        .Q(\txBuffer_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[3] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[3]),
        .Q(\txBuffer_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[4] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[4]),
        .Q(\txBuffer_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[5] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[5]),
        .Q(\txBuffer_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[6] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[6]),
        .Q(\txBuffer_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[7] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[7]),
        .Q(\txBuffer_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[8] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[8]),
        .Q(\txBuffer_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \txBuffer_reg[9] 
       (.C(Clk),
        .CE(txBuffer_n_0),
        .D(p_1_in[9]),
        .Q(\txBuffer_reg_n_0_[9] ),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
