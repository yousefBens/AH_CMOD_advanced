// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Feb  3 11:22:03 2026
// Host        : Yousef-Machine running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/yousef/Vivado_workspace/AH_CMOD_35t/AH_CMOD_35t.gen/sources_1/bd/design_1/ip/design_1_SPI_slave_0_0/design_1_SPI_slave_0_0_stub.v
// Design      : design_1_SPI_slave_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_SPI_slave_0_0,SPI_slave,{}" *) (* core_generation_info = "design_1_SPI_slave_0_0,SPI_slave,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SPI_slave,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Clock_Freq=12000000,data_length=16}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "SPI_slave,Vivado 2025.1" *) 
module design_1_SPI_slave_0_0(Clk, rst, cpol, cpha, sclk, ss_n, mosi, miso, rx_enable, 
  tx, rx, busy, rx_done)
/* synthesis syn_black_box black_box_pad_pin="rst,cpol,cpha,sclk,ss_n,mosi,miso,rx_enable,tx[15:0],rx[15:0],busy,rx_done" */
/* synthesis syn_force_seq_prim="Clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_mode = "slave Clk" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk /* synthesis syn_isclock = 1 */;
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
endmodule
