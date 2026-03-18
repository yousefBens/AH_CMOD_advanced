// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Mar  9 14:21:32 2026
// Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yousef/Vivado_workspace/AH_CMOD_35t/AH_CMOD_35t.gen/sources_1/bd/design_1/ip/design_1_EM_REC_Delay_Duty_Mo_1_0/design_1_EM_REC_Delay_Duty_Mo_1_0_sim_netlist.v
// Design      : design_1_EM_REC_Delay_Duty_Mo_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_EM_REC_Delay_Duty_Mo_1_0,EM_REC_Delay_Duty_Mode,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "EM_REC_Delay_Duty_Mode,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_EM_REC_Delay_Duty_Mo_1_0
   (clk,
    rst,
    EM_REC,
    delay_cycles,
    pulse_cycles,
    mode_sel,
    EM_REC_sync,
    out_sig);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input EM_REC;
  input [15:0]delay_cycles;
  input [15:0]pulse_cycles;
  input [1:0]mode_sel;
  output EM_REC_sync;
  output out_sig;

  wire EM_REC;
  wire EM_REC_sync;
  wire clk;
  wire [15:0]delay_cycles;
  wire [1:0]mode_sel;
  wire out_sig;
  wire [15:0]pulse_cycles;
  wire rst;

  design_1_EM_REC_Delay_Duty_Mo_1_0_EM_REC_Delay_Duty_Mode U0
       (.EM_REC(EM_REC),
        .clk(clk),
        .delay_cycles(delay_cycles),
        .em_sync2_reg_0(EM_REC_sync),
        .mode_sel(mode_sel),
        .out_sig(out_sig),
        .pulse_cycles(pulse_cycles),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "EM_REC_Delay_Duty_Mode" *) 
module design_1_EM_REC_Delay_Duty_Mo_1_0_EM_REC_Delay_Duty_Mode
   (em_sync2_reg_0,
    out_sig,
    clk,
    delay_cycles,
    pulse_cycles,
    rst,
    mode_sel,
    EM_REC);
  output em_sync2_reg_0;
  output out_sig;
  input clk;
  input [15:0]delay_cycles;
  input [15:0]pulse_cycles;
  input rst;
  input [1:0]mode_sel;
  input EM_REC;

  wire EM_REC;
  wire clk;
  wire delay_active_i_1_n_0;
  wire delay_active_i_2_n_0;
  wire delay_active_i_3_n_0;
  wire delay_active_i_5_n_0;
  wire delay_active_i_6_n_0;
  wire delay_active_i_7_n_0;
  wire delay_active_i_8_n_0;
  wire delay_active_reg_n_0;
  wire delay_cnt1_carry__0_i_1_n_0;
  wire delay_cnt1_carry__0_i_2_n_0;
  wire delay_cnt1_carry__0_n_2;
  wire delay_cnt1_carry__0_n_3;
  wire delay_cnt1_carry_i_1_n_0;
  wire delay_cnt1_carry_i_2_n_0;
  wire delay_cnt1_carry_i_3_n_0;
  wire delay_cnt1_carry_i_4_n_0;
  wire delay_cnt1_carry_n_0;
  wire delay_cnt1_carry_n_1;
  wire delay_cnt1_carry_n_2;
  wire delay_cnt1_carry_n_3;
  wire \delay_cnt[0]_i_1_n_0 ;
  wire \delay_cnt[0]_i_2_n_0 ;
  wire \delay_cnt[0]_i_4_n_0 ;
  wire [15:0]delay_cnt_reg;
  wire \delay_cnt_reg[0]_i_3_n_0 ;
  wire \delay_cnt_reg[0]_i_3_n_1 ;
  wire \delay_cnt_reg[0]_i_3_n_2 ;
  wire \delay_cnt_reg[0]_i_3_n_3 ;
  wire \delay_cnt_reg[0]_i_3_n_4 ;
  wire \delay_cnt_reg[0]_i_3_n_5 ;
  wire \delay_cnt_reg[0]_i_3_n_6 ;
  wire \delay_cnt_reg[0]_i_3_n_7 ;
  wire \delay_cnt_reg[12]_i_1_n_1 ;
  wire \delay_cnt_reg[12]_i_1_n_2 ;
  wire \delay_cnt_reg[12]_i_1_n_3 ;
  wire \delay_cnt_reg[12]_i_1_n_4 ;
  wire \delay_cnt_reg[12]_i_1_n_5 ;
  wire \delay_cnt_reg[12]_i_1_n_6 ;
  wire \delay_cnt_reg[12]_i_1_n_7 ;
  wire \delay_cnt_reg[4]_i_1_n_0 ;
  wire \delay_cnt_reg[4]_i_1_n_1 ;
  wire \delay_cnt_reg[4]_i_1_n_2 ;
  wire \delay_cnt_reg[4]_i_1_n_3 ;
  wire \delay_cnt_reg[4]_i_1_n_4 ;
  wire \delay_cnt_reg[4]_i_1_n_5 ;
  wire \delay_cnt_reg[4]_i_1_n_6 ;
  wire \delay_cnt_reg[4]_i_1_n_7 ;
  wire \delay_cnt_reg[8]_i_1_n_0 ;
  wire \delay_cnt_reg[8]_i_1_n_1 ;
  wire \delay_cnt_reg[8]_i_1_n_2 ;
  wire \delay_cnt_reg[8]_i_1_n_3 ;
  wire \delay_cnt_reg[8]_i_1_n_4 ;
  wire \delay_cnt_reg[8]_i_1_n_5 ;
  wire \delay_cnt_reg[8]_i_1_n_6 ;
  wire \delay_cnt_reg[8]_i_1_n_7 ;
  wire [15:0]delay_cycles;
  wire em_sync1;
  wire em_sync1_i_1_n_0;
  wire em_sync2_i_1_n_0;
  wire em_sync2_reg_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [15:1]minusOp;
  wire [15:1]minusOp0_in;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_0 ;
  wire \minusOp_inferred__0/i__carry__1_n_1 ;
  wire \minusOp_inferred__0/i__carry__1_n_2 ;
  wire \minusOp_inferred__0/i__carry__1_n_3 ;
  wire \minusOp_inferred__0/i__carry__2_n_2 ;
  wire \minusOp_inferred__0/i__carry__2_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire [1:0]mode_sel;
  wire out_sig;
  wire out_sig_i_1_n_0;
  wire out_sig_i_2_n_0;
  wire out_sig_i_3_n_0;
  wire out_sig_i_4_n_0;
  wire out_sig_i_5_n_0;
  wire out_sig_i_6_n_0;
  wire out_sig_i_7_n_0;
  wire out_sig_i_8_n_0;
  wire out_sig_i_9_n_0;
  wire pulse_active;
  wire pulse_active0;
  wire pulse_active_i_1_n_0;
  wire pulse_cnt1;
  wire pulse_cnt1_carry__0_i_1_n_0;
  wire pulse_cnt1_carry__0_i_2_n_0;
  wire pulse_cnt1_carry__0_n_3;
  wire pulse_cnt1_carry_i_1_n_0;
  wire pulse_cnt1_carry_i_2_n_0;
  wire pulse_cnt1_carry_i_3_n_0;
  wire pulse_cnt1_carry_i_4_n_0;
  wire pulse_cnt1_carry_n_0;
  wire pulse_cnt1_carry_n_1;
  wire pulse_cnt1_carry_n_2;
  wire pulse_cnt1_carry_n_3;
  wire \pulse_cnt[0]_i_1_n_0 ;
  wire \pulse_cnt[0]_i_2_n_0 ;
  wire \pulse_cnt[0]_i_4_n_0 ;
  wire [15:0]pulse_cnt_reg;
  wire \pulse_cnt_reg[0]_i_3_n_0 ;
  wire \pulse_cnt_reg[0]_i_3_n_1 ;
  wire \pulse_cnt_reg[0]_i_3_n_2 ;
  wire \pulse_cnt_reg[0]_i_3_n_3 ;
  wire \pulse_cnt_reg[0]_i_3_n_4 ;
  wire \pulse_cnt_reg[0]_i_3_n_5 ;
  wire \pulse_cnt_reg[0]_i_3_n_6 ;
  wire \pulse_cnt_reg[0]_i_3_n_7 ;
  wire \pulse_cnt_reg[12]_i_1_n_1 ;
  wire \pulse_cnt_reg[12]_i_1_n_2 ;
  wire \pulse_cnt_reg[12]_i_1_n_3 ;
  wire \pulse_cnt_reg[12]_i_1_n_4 ;
  wire \pulse_cnt_reg[12]_i_1_n_5 ;
  wire \pulse_cnt_reg[12]_i_1_n_6 ;
  wire \pulse_cnt_reg[12]_i_1_n_7 ;
  wire \pulse_cnt_reg[4]_i_1_n_0 ;
  wire \pulse_cnt_reg[4]_i_1_n_1 ;
  wire \pulse_cnt_reg[4]_i_1_n_2 ;
  wire \pulse_cnt_reg[4]_i_1_n_3 ;
  wire \pulse_cnt_reg[4]_i_1_n_4 ;
  wire \pulse_cnt_reg[4]_i_1_n_5 ;
  wire \pulse_cnt_reg[4]_i_1_n_6 ;
  wire \pulse_cnt_reg[4]_i_1_n_7 ;
  wire \pulse_cnt_reg[8]_i_1_n_0 ;
  wire \pulse_cnt_reg[8]_i_1_n_1 ;
  wire \pulse_cnt_reg[8]_i_1_n_2 ;
  wire \pulse_cnt_reg[8]_i_1_n_3 ;
  wire \pulse_cnt_reg[8]_i_1_n_4 ;
  wire \pulse_cnt_reg[8]_i_1_n_5 ;
  wire \pulse_cnt_reg[8]_i_1_n_6 ;
  wire \pulse_cnt_reg[8]_i_1_n_7 ;
  wire [15:0]pulse_cycles;
  wire rst;
  wire [3:0]NLW_delay_cnt1_carry_O_UNCONNECTED;
  wire [3:2]NLW_delay_cnt1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_delay_cnt1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_delay_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_minusOp_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]NLW_pulse_cnt1_carry_O_UNCONNECTED;
  wire [3:2]NLW_pulse_cnt1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pulse_cnt1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_pulse_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00002232)) 
    delay_active_i_1
       (.I0(delay_active_i_2_n_0),
        .I1(delay_active_i_3_n_0),
        .I2(delay_active_reg_n_0),
        .I3(delay_cnt1_carry__0_n_2),
        .I4(pulse_active0),
        .O(delay_active_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    delay_active_i_2
       (.I0(delay_active_reg_n_0),
        .I1(em_sync1),
        .I2(em_sync2_reg_0),
        .I3(pulse_active),
        .O(delay_active_i_2_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    delay_active_i_3
       (.I0(delay_active_i_5_n_0),
        .I1(delay_active_i_6_n_0),
        .I2(delay_active_i_7_n_0),
        .I3(delay_active_i_8_n_0),
        .O(delay_active_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    delay_active_i_4
       (.I0(out_sig_i_4_n_0),
        .I1(rst),
        .I2(mode_sel[0]),
        .O(pulse_active0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    delay_active_i_5
       (.I0(delay_cycles[14]),
        .I1(delay_cycles[12]),
        .I2(delay_cycles[15]),
        .I3(delay_cycles[13]),
        .O(delay_active_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    delay_active_i_6
       (.I0(delay_cycles[8]),
        .I1(delay_cycles[3]),
        .I2(delay_cycles[0]),
        .I3(delay_cycles[9]),
        .O(delay_active_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    delay_active_i_7
       (.I0(delay_cycles[5]),
        .I1(delay_cycles[2]),
        .I2(delay_cycles[4]),
        .I3(delay_cycles[1]),
        .O(delay_active_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    delay_active_i_8
       (.I0(delay_cycles[11]),
        .I1(delay_cycles[6]),
        .I2(delay_cycles[10]),
        .I3(delay_cycles[7]),
        .O(delay_active_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    delay_active_reg
       (.C(clk),
        .CE(1'b1),
        .D(delay_active_i_1_n_0),
        .Q(delay_active_reg_n_0),
        .R(1'b0));
  CARRY4 delay_cnt1_carry
       (.CI(1'b0),
        .CO({delay_cnt1_carry_n_0,delay_cnt1_carry_n_1,delay_cnt1_carry_n_2,delay_cnt1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_delay_cnt1_carry_O_UNCONNECTED[3:0]),
        .S({delay_cnt1_carry_i_1_n_0,delay_cnt1_carry_i_2_n_0,delay_cnt1_carry_i_3_n_0,delay_cnt1_carry_i_4_n_0}));
  CARRY4 delay_cnt1_carry__0
       (.CI(delay_cnt1_carry_n_0),
        .CO({NLW_delay_cnt1_carry__0_CO_UNCONNECTED[3:2],delay_cnt1_carry__0_n_2,delay_cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_delay_cnt1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,delay_cnt1_carry__0_i_1_n_0,delay_cnt1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    delay_cnt1_carry__0_i_1
       (.I0(minusOp0_in[15]),
        .I1(delay_cnt_reg[15]),
        .O(delay_cnt1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    delay_cnt1_carry__0_i_2
       (.I0(delay_cnt_reg[12]),
        .I1(minusOp0_in[12]),
        .I2(delay_cnt_reg[13]),
        .I3(minusOp0_in[13]),
        .I4(minusOp0_in[14]),
        .I5(delay_cnt_reg[14]),
        .O(delay_cnt1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    delay_cnt1_carry_i_1
       (.I0(delay_cnt_reg[9]),
        .I1(minusOp0_in[9]),
        .I2(delay_cnt_reg[10]),
        .I3(minusOp0_in[10]),
        .I4(minusOp0_in[11]),
        .I5(delay_cnt_reg[11]),
        .O(delay_cnt1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    delay_cnt1_carry_i_2
       (.I0(delay_cnt_reg[6]),
        .I1(minusOp0_in[6]),
        .I2(delay_cnt_reg[7]),
        .I3(minusOp0_in[7]),
        .I4(minusOp0_in[8]),
        .I5(delay_cnt_reg[8]),
        .O(delay_cnt1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    delay_cnt1_carry_i_3
       (.I0(delay_cnt_reg[3]),
        .I1(minusOp0_in[3]),
        .I2(delay_cnt_reg[4]),
        .I3(minusOp0_in[4]),
        .I4(minusOp0_in[5]),
        .I5(delay_cnt_reg[5]),
        .O(delay_cnt1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    delay_cnt1_carry_i_4
       (.I0(delay_cycles[0]),
        .I1(delay_cnt_reg[0]),
        .I2(delay_cnt_reg[2]),
        .I3(minusOp0_in[2]),
        .I4(delay_cnt_reg[1]),
        .I5(minusOp0_in[1]),
        .O(delay_cnt1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \delay_cnt[0]_i_1 
       (.I0(pulse_active),
        .I1(em_sync2_reg_0),
        .I2(em_sync1),
        .I3(delay_active_reg_n_0),
        .I4(delay_active_i_3_n_0),
        .I5(pulse_active0),
        .O(\delay_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \delay_cnt[0]_i_2 
       (.I0(delay_cnt1_carry__0_n_2),
        .I1(delay_active_i_3_n_0),
        .I2(delay_active_reg_n_0),
        .O(\delay_cnt[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_cnt[0]_i_4 
       (.I0(delay_cnt_reg[0]),
        .O(\delay_cnt[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[0] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[0]_i_3_n_7 ),
        .Q(delay_cnt_reg[0]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \delay_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\delay_cnt_reg[0]_i_3_n_0 ,\delay_cnt_reg[0]_i_3_n_1 ,\delay_cnt_reg[0]_i_3_n_2 ,\delay_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\delay_cnt_reg[0]_i_3_n_4 ,\delay_cnt_reg[0]_i_3_n_5 ,\delay_cnt_reg[0]_i_3_n_6 ,\delay_cnt_reg[0]_i_3_n_7 }),
        .S({delay_cnt_reg[3:1],\delay_cnt[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[10] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[8]_i_1_n_5 ),
        .Q(delay_cnt_reg[10]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[11] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[8]_i_1_n_4 ),
        .Q(delay_cnt_reg[11]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[12] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[12]_i_1_n_7 ),
        .Q(delay_cnt_reg[12]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \delay_cnt_reg[12]_i_1 
       (.CI(\delay_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_delay_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\delay_cnt_reg[12]_i_1_n_1 ,\delay_cnt_reg[12]_i_1_n_2 ,\delay_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[12]_i_1_n_4 ,\delay_cnt_reg[12]_i_1_n_5 ,\delay_cnt_reg[12]_i_1_n_6 ,\delay_cnt_reg[12]_i_1_n_7 }),
        .S(delay_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[13] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[12]_i_1_n_6 ),
        .Q(delay_cnt_reg[13]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[14] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[12]_i_1_n_5 ),
        .Q(delay_cnt_reg[14]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[15] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[12]_i_1_n_4 ),
        .Q(delay_cnt_reg[15]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[1] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[0]_i_3_n_6 ),
        .Q(delay_cnt_reg[1]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[2] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[0]_i_3_n_5 ),
        .Q(delay_cnt_reg[2]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[3] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[0]_i_3_n_4 ),
        .Q(delay_cnt_reg[3]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[4] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[4]_i_1_n_7 ),
        .Q(delay_cnt_reg[4]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \delay_cnt_reg[4]_i_1 
       (.CI(\delay_cnt_reg[0]_i_3_n_0 ),
        .CO({\delay_cnt_reg[4]_i_1_n_0 ,\delay_cnt_reg[4]_i_1_n_1 ,\delay_cnt_reg[4]_i_1_n_2 ,\delay_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[4]_i_1_n_4 ,\delay_cnt_reg[4]_i_1_n_5 ,\delay_cnt_reg[4]_i_1_n_6 ,\delay_cnt_reg[4]_i_1_n_7 }),
        .S(delay_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[5] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[4]_i_1_n_6 ),
        .Q(delay_cnt_reg[5]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[6] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[4]_i_1_n_5 ),
        .Q(delay_cnt_reg[6]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[7] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[4]_i_1_n_4 ),
        .Q(delay_cnt_reg[7]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[8] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[8]_i_1_n_7 ),
        .Q(delay_cnt_reg[8]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \delay_cnt_reg[8]_i_1 
       (.CI(\delay_cnt_reg[4]_i_1_n_0 ),
        .CO({\delay_cnt_reg[8]_i_1_n_0 ,\delay_cnt_reg[8]_i_1_n_1 ,\delay_cnt_reg[8]_i_1_n_2 ,\delay_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[8]_i_1_n_4 ,\delay_cnt_reg[8]_i_1_n_5 ,\delay_cnt_reg[8]_i_1_n_6 ,\delay_cnt_reg[8]_i_1_n_7 }),
        .S(delay_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_cnt_reg[9] 
       (.C(clk),
        .CE(\delay_cnt[0]_i_2_n_0 ),
        .D(\delay_cnt_reg[8]_i_1_n_6 ),
        .Q(delay_cnt_reg[9]),
        .R(\delay_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    em_sync1_i_1
       (.I0(EM_REC),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .Q(em_sync2_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(pulse_cycles[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(pulse_cycles[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(pulse_cycles[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(pulse_cycles[5]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(pulse_cycles[12]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(pulse_cycles[11]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(pulse_cycles[10]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(pulse_cycles[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(pulse_cycles[15]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(pulse_cycles[14]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(pulse_cycles[13]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(pulse_cycles[4]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(pulse_cycles[3]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(pulse_cycles[2]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(pulse_cycles[1]),
        .O(i__carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(delay_cycles[0]),
        .DI(delay_cycles[4:1]),
        .O(minusOp0_in[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_cycles[8:5]),
        .O(minusOp0_in[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(delay_cycles[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(delay_cycles[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(delay_cycles[6]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(delay_cycles[5]),
        .O(minusOp_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_cycles[12:9]),
        .O(minusOp0_in[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(delay_cycles[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(delay_cycles[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(delay_cycles[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(delay_cycles[9]),
        .O(minusOp_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3:2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,delay_cycles[14:13]}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp0_in[15:13]}),
        .S({1'b0,minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(delay_cycles[15]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(delay_cycles[14]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(delay_cycles[13]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(delay_cycles[4]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(delay_cycles[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(delay_cycles[2]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(delay_cycles[1]),
        .O(minusOp_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(pulse_cycles[0]),
        .DI(pulse_cycles[4:1]),
        .O(minusOp[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(pulse_cycles[8:5]),
        .O(minusOp[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__1 
       (.CI(\minusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__1_n_0 ,\minusOp_inferred__0/i__carry__1_n_1 ,\minusOp_inferred__0/i__carry__1_n_2 ,\minusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(pulse_cycles[12:9]),
        .O(minusOp[12:9]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__2 
       (.CI(\minusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED [3:2],\minusOp_inferred__0/i__carry__2_n_2 ,\minusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pulse_cycles[14:13]}),
        .O({\NLW_minusOp_inferred__0/i__carry__2_O_UNCONNECTED [3],minusOp[15:13]}),
        .S({1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0}));
  LUT5 #(
    .INIT(32'h0000AAFE)) 
    out_sig_i_1
       (.I0(out_sig_i_2_n_0),
        .I1(\pulse_cnt[0]_i_2_n_0 ),
        .I2(out_sig_i_3_n_0),
        .I3(out_sig_i_4_n_0),
        .I4(out_sig_i_5_n_0),
        .O(out_sig_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    out_sig_i_2
       (.I0(mode_sel[1]),
        .I1(em_sync2_reg_0),
        .I2(mode_sel[0]),
        .O(out_sig_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF0002020000)) 
    out_sig_i_3
       (.I0(em_sync1),
        .I1(em_sync2_reg_0),
        .I2(pulse_active),
        .I3(delay_cnt1_carry__0_n_2),
        .I4(delay_active_i_3_n_0),
        .I5(delay_active_reg_n_0),
        .O(out_sig_i_3_n_0));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    out_sig_i_4
       (.I0(mode_sel[1]),
        .I1(out_sig_i_6_n_0),
        .I2(out_sig_i_7_n_0),
        .I3(out_sig_i_8_n_0),
        .I4(out_sig_i_9_n_0),
        .O(out_sig_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    out_sig_i_5
       (.I0(rst),
        .I1(mode_sel[1]),
        .I2(mode_sel[0]),
        .O(out_sig_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_sig_i_6
       (.I0(pulse_cycles[6]),
        .I1(pulse_cycles[5]),
        .I2(pulse_cycles[9]),
        .I3(pulse_cycles[3]),
        .O(out_sig_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_sig_i_7
       (.I0(pulse_cycles[14]),
        .I1(pulse_cycles[8]),
        .I2(pulse_cycles[10]),
        .I3(pulse_cycles[1]),
        .O(out_sig_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    out_sig_i_8
       (.I0(pulse_cycles[13]),
        .I1(pulse_cycles[4]),
        .I2(pulse_cycles[11]),
        .I3(pulse_cycles[2]),
        .O(out_sig_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_sig_i_9
       (.I0(pulse_cycles[12]),
        .I1(pulse_cycles[7]),
        .I2(pulse_cycles[0]),
        .I3(pulse_cycles[15]),
        .O(out_sig_i_9_n_0));
  FDRE out_sig_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_sig_i_1_n_0),
        .Q(out_sig),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000FABA)) 
    pulse_active_i_1
       (.I0(out_sig_i_3_n_0),
        .I1(pulse_cnt1),
        .I2(pulse_active),
        .I3(delay_active_reg_n_0),
        .I4(pulse_active0),
        .O(pulse_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pulse_active_reg
       (.C(clk),
        .CE(1'b1),
        .D(pulse_active_i_1_n_0),
        .Q(pulse_active),
        .R(1'b0));
  CARRY4 pulse_cnt1_carry
       (.CI(1'b0),
        .CO({pulse_cnt1_carry_n_0,pulse_cnt1_carry_n_1,pulse_cnt1_carry_n_2,pulse_cnt1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pulse_cnt1_carry_O_UNCONNECTED[3:0]),
        .S({pulse_cnt1_carry_i_1_n_0,pulse_cnt1_carry_i_2_n_0,pulse_cnt1_carry_i_3_n_0,pulse_cnt1_carry_i_4_n_0}));
  CARRY4 pulse_cnt1_carry__0
       (.CI(pulse_cnt1_carry_n_0),
        .CO({NLW_pulse_cnt1_carry__0_CO_UNCONNECTED[3:2],pulse_cnt1,pulse_cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pulse_cnt1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pulse_cnt1_carry__0_i_1_n_0,pulse_cnt1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    pulse_cnt1_carry__0_i_1
       (.I0(minusOp[15]),
        .I1(pulse_cnt_reg[15]),
        .O(pulse_cnt1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse_cnt1_carry__0_i_2
       (.I0(pulse_cnt_reg[12]),
        .I1(minusOp[12]),
        .I2(pulse_cnt_reg[13]),
        .I3(minusOp[13]),
        .I4(minusOp[14]),
        .I5(pulse_cnt_reg[14]),
        .O(pulse_cnt1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse_cnt1_carry_i_1
       (.I0(pulse_cnt_reg[9]),
        .I1(minusOp[9]),
        .I2(pulse_cnt_reg[10]),
        .I3(minusOp[10]),
        .I4(minusOp[11]),
        .I5(pulse_cnt_reg[11]),
        .O(pulse_cnt1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse_cnt1_carry_i_2
       (.I0(pulse_cnt_reg[6]),
        .I1(minusOp[6]),
        .I2(pulse_cnt_reg[7]),
        .I3(minusOp[7]),
        .I4(minusOp[8]),
        .I5(pulse_cnt_reg[8]),
        .O(pulse_cnt1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse_cnt1_carry_i_3
       (.I0(pulse_cnt_reg[5]),
        .I1(minusOp[5]),
        .I2(pulse_cnt_reg[3]),
        .I3(minusOp[3]),
        .I4(minusOp[4]),
        .I5(pulse_cnt_reg[4]),
        .O(pulse_cnt1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    pulse_cnt1_carry_i_4
       (.I0(pulse_cnt_reg[1]),
        .I1(minusOp[1]),
        .I2(pulse_cnt_reg[0]),
        .I3(pulse_cycles[0]),
        .I4(minusOp[2]),
        .I5(pulse_cnt_reg[2]),
        .O(pulse_cnt1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \pulse_cnt[0]_i_1 
       (.I0(out_sig_i_3_n_0),
        .I1(pulse_active0),
        .O(\pulse_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \pulse_cnt[0]_i_2 
       (.I0(pulse_cnt1),
        .I1(pulse_active),
        .I2(delay_active_reg_n_0),
        .O(\pulse_cnt[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_cnt[0]_i_4 
       (.I0(pulse_cnt_reg[0]),
        .O(\pulse_cnt[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[0] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[0]_i_3_n_7 ),
        .Q(pulse_cnt_reg[0]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\pulse_cnt_reg[0]_i_3_n_0 ,\pulse_cnt_reg[0]_i_3_n_1 ,\pulse_cnt_reg[0]_i_3_n_2 ,\pulse_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pulse_cnt_reg[0]_i_3_n_4 ,\pulse_cnt_reg[0]_i_3_n_5 ,\pulse_cnt_reg[0]_i_3_n_6 ,\pulse_cnt_reg[0]_i_3_n_7 }),
        .S({pulse_cnt_reg[3:1],\pulse_cnt[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[10] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[8]_i_1_n_5 ),
        .Q(pulse_cnt_reg[10]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[11] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[8]_i_1_n_4 ),
        .Q(pulse_cnt_reg[11]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[12] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[12]_i_1_n_7 ),
        .Q(pulse_cnt_reg[12]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_cnt_reg[12]_i_1 
       (.CI(\pulse_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_pulse_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\pulse_cnt_reg[12]_i_1_n_1 ,\pulse_cnt_reg[12]_i_1_n_2 ,\pulse_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pulse_cnt_reg[12]_i_1_n_4 ,\pulse_cnt_reg[12]_i_1_n_5 ,\pulse_cnt_reg[12]_i_1_n_6 ,\pulse_cnt_reg[12]_i_1_n_7 }),
        .S(pulse_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[13] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[12]_i_1_n_6 ),
        .Q(pulse_cnt_reg[13]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[14] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[12]_i_1_n_5 ),
        .Q(pulse_cnt_reg[14]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[15] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[12]_i_1_n_4 ),
        .Q(pulse_cnt_reg[15]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[1] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[0]_i_3_n_6 ),
        .Q(pulse_cnt_reg[1]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[2] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[0]_i_3_n_5 ),
        .Q(pulse_cnt_reg[2]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[3] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[0]_i_3_n_4 ),
        .Q(pulse_cnt_reg[3]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[4] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[4]_i_1_n_7 ),
        .Q(pulse_cnt_reg[4]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_cnt_reg[4]_i_1 
       (.CI(\pulse_cnt_reg[0]_i_3_n_0 ),
        .CO({\pulse_cnt_reg[4]_i_1_n_0 ,\pulse_cnt_reg[4]_i_1_n_1 ,\pulse_cnt_reg[4]_i_1_n_2 ,\pulse_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pulse_cnt_reg[4]_i_1_n_4 ,\pulse_cnt_reg[4]_i_1_n_5 ,\pulse_cnt_reg[4]_i_1_n_6 ,\pulse_cnt_reg[4]_i_1_n_7 }),
        .S(pulse_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[5] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[4]_i_1_n_6 ),
        .Q(pulse_cnt_reg[5]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[6] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[4]_i_1_n_5 ),
        .Q(pulse_cnt_reg[6]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[7] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[4]_i_1_n_4 ),
        .Q(pulse_cnt_reg[7]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[8] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[8]_i_1_n_7 ),
        .Q(pulse_cnt_reg[8]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_cnt_reg[8]_i_1 
       (.CI(\pulse_cnt_reg[4]_i_1_n_0 ),
        .CO({\pulse_cnt_reg[8]_i_1_n_0 ,\pulse_cnt_reg[8]_i_1_n_1 ,\pulse_cnt_reg[8]_i_1_n_2 ,\pulse_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pulse_cnt_reg[8]_i_1_n_4 ,\pulse_cnt_reg[8]_i_1_n_5 ,\pulse_cnt_reg[8]_i_1_n_6 ,\pulse_cnt_reg[8]_i_1_n_7 }),
        .S(pulse_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[9] 
       (.C(clk),
        .CE(\pulse_cnt[0]_i_2_n_0 ),
        .D(\pulse_cnt_reg[8]_i_1_n_6 ),
        .Q(pulse_cnt_reg[9]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
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
