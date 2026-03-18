// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Mar 18 15:17:40 2026
// Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yousef/Vivado_workspace/AH_CMOD_35t/AH_CMOD_35t.gen/sources_1/bd/design_1/ip/design_1_SW_follow_input_Sign_0_0/design_1_SW_follow_input_Sign_0_0_sim_netlist.v
// Design      : design_1_SW_follow_input_Sign_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_SW_follow_input_Sign_0_0,SW_follow_input_Signal_Modes,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SW_follow_input_Signal_Modes,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_SW_follow_input_Sign_0_0
   (clk,
    rst,
    in_sig,
    mode_sel,
    in_sig_sync,
    out_sig);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input in_sig;
  input [1:0]mode_sel;
  output in_sig_sync;
  output out_sig;

  wire clk;
  wire in_sig;
  wire in_sig_sync;
  wire [1:0]mode_sel;
  wire out_sig;
  wire rst;

  design_1_SW_follow_input_Sign_0_0_SW_follow_input_Signal_Modes U0
       (.clk(clk),
        .in_sig(in_sig),
        .in_sig_sync(in_sig_sync),
        .mode_sel(mode_sel),
        .out_sig(out_sig),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "SW_follow_input_Signal_Modes" *) 
module design_1_SW_follow_input_Sign_0_0_SW_follow_input_Signal_Modes
   (in_sig_sync,
    out_sig,
    mode_sel,
    rst,
    in_sig,
    clk);
  output in_sig_sync;
  output out_sig;
  input [1:0]mode_sel;
  input rst;
  input in_sig;
  input clk;

  wire clk;
  wire em_sync1;
  wire em_sync1_i_1_n_0;
  wire em_sync2_i_1_n_0;
  wire in_sig;
  wire in_sig_sync;
  wire [1:0]mode_sel;
  wire out_sig;
  wire out_sig_i_1_n_0;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    em_sync1_i_1
       (.I0(in_sig),
        .I1(rst),
        .O(em_sync1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    em_sync1_reg
       (.C(clk),
        .CE(1'b1),
        .D(em_sync1_i_1_n_0),
        .Q(em_sync1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    em_sync2_i_1
       (.I0(em_sync1),
        .I1(rst),
        .O(em_sync2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    em_sync2_reg
       (.C(clk),
        .CE(1'b1),
        .D(em_sync2_i_1_n_0),
        .Q(in_sig_sync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    out_sig_i_1
       (.I0(in_sig_sync),
        .I1(mode_sel[0]),
        .I2(mode_sel[1]),
        .I3(rst),
        .O(out_sig_i_1_n_0));
  FDRE out_sig_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_sig_i_1_n_0),
        .Q(out_sig),
        .R(1'b0));
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
