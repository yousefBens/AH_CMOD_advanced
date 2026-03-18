// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Mar 18 15:19:51 2026
// Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yousef/Vivado_workspace/AH_CMOD_35t/AH_CMOD_35t.gen/sources_1/bd/design_1/ip/design_1_receive_signal_0_0/design_1_receive_signal_0_0_sim_netlist.v
// Design      : design_1_receive_signal_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_receive_signal_0_0,receive_signal,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "receive_signal,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_receive_signal_0_0
   (Clk,
    rst,
    Signal_in,
    Signal_sync,
    Signal_present);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_mode = "slave Clk" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input Signal_in;
  output Signal_sync;
  output Signal_present;

  wire Clk;
  wire Signal_in;
  wire Signal_present;
  wire Signal_sync;
  wire rst;

  design_1_receive_signal_0_0_receive_signal U0
       (.Clk(Clk),
        .Signal_in(Signal_in),
        .Signal_present(Signal_present),
        .Signal_sync(Signal_sync),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "receive_signal" *) 
module design_1_receive_signal_0_0_receive_signal
   (Signal_sync,
    Signal_present,
    rst,
    Signal_in,
    Clk);
  output Signal_sync;
  output Signal_present;
  input rst;
  input Signal_in;
  input Clk;

  wire Clk;
  wire Signal_in;
  wire Signal_present;
  wire Signal_sync;
  wire [23:0]minusOp;
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
  wire minusOp_carry__2_i_4_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__3_i_1_n_0;
  wire minusOp_carry__3_i_2_n_0;
  wire minusOp_carry__3_i_3_n_0;
  wire minusOp_carry__3_i_4_n_0;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__4_i_1_n_0;
  wire minusOp_carry__4_i_2_n_0;
  wire minusOp_carry__4_i_3_n_0;
  wire minusOp_carry__4_n_2;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire p_0_in;
  wire present_r_i_1_n_0;
  wire rst;
  wire s1;
  wire s2_d;
  wire \timeout_cnt[13]_i_1_n_0 ;
  wire \timeout_cnt[15]_i_1_n_0 ;
  wire \timeout_cnt[16]_i_1_n_0 ;
  wire \timeout_cnt[20]_i_1_n_0 ;
  wire \timeout_cnt[20]_i_3_n_0 ;
  wire \timeout_cnt[20]_i_4_n_0 ;
  wire \timeout_cnt[20]_i_5_n_0 ;
  wire \timeout_cnt[20]_i_6_n_0 ;
  wire \timeout_cnt[21]_i_1_n_0 ;
  wire \timeout_cnt[22]_i_1_n_0 ;
  wire \timeout_cnt[23]_i_1_n_0 ;
  wire \timeout_cnt[23]_i_2_n_0 ;
  wire \timeout_cnt[8]_i_1_n_0 ;
  wire \timeout_cnt[9]_i_1_n_0 ;
  wire \timeout_cnt_reg_n_0_[0] ;
  wire \timeout_cnt_reg_n_0_[10] ;
  wire \timeout_cnt_reg_n_0_[11] ;
  wire \timeout_cnt_reg_n_0_[12] ;
  wire \timeout_cnt_reg_n_0_[13] ;
  wire \timeout_cnt_reg_n_0_[14] ;
  wire \timeout_cnt_reg_n_0_[15] ;
  wire \timeout_cnt_reg_n_0_[16] ;
  wire \timeout_cnt_reg_n_0_[17] ;
  wire \timeout_cnt_reg_n_0_[18] ;
  wire \timeout_cnt_reg_n_0_[19] ;
  wire \timeout_cnt_reg_n_0_[1] ;
  wire \timeout_cnt_reg_n_0_[20] ;
  wire \timeout_cnt_reg_n_0_[21] ;
  wire \timeout_cnt_reg_n_0_[22] ;
  wire \timeout_cnt_reg_n_0_[23] ;
  wire \timeout_cnt_reg_n_0_[2] ;
  wire \timeout_cnt_reg_n_0_[3] ;
  wire \timeout_cnt_reg_n_0_[4] ;
  wire \timeout_cnt_reg_n_0_[5] ;
  wire \timeout_cnt_reg_n_0_[6] ;
  wire \timeout_cnt_reg_n_0_[7] ;
  wire \timeout_cnt_reg_n_0_[8] ;
  wire \timeout_cnt_reg_n_0_[9] ;
  wire [3:2]NLW_minusOp_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__4_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(\timeout_cnt_reg_n_0_[0] ),
        .DI({\timeout_cnt_reg_n_0_[4] ,\timeout_cnt_reg_n_0_[3] ,\timeout_cnt_reg_n_0_[2] ,\timeout_cnt_reg_n_0_[1] }),
        .O(minusOp[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\timeout_cnt_reg_n_0_[8] ,\timeout_cnt_reg_n_0_[7] ,\timeout_cnt_reg_n_0_[6] ,\timeout_cnt_reg_n_0_[5] }),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(\timeout_cnt_reg_n_0_[8] ),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(\timeout_cnt_reg_n_0_[7] ),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(\timeout_cnt_reg_n_0_[6] ),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(\timeout_cnt_reg_n_0_[5] ),
        .O(minusOp_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\timeout_cnt_reg_n_0_[12] ,\timeout_cnt_reg_n_0_[11] ,\timeout_cnt_reg_n_0_[10] ,\timeout_cnt_reg_n_0_[9] }),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(\timeout_cnt_reg_n_0_[12] ),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(\timeout_cnt_reg_n_0_[11] ),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(\timeout_cnt_reg_n_0_[10] ),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(\timeout_cnt_reg_n_0_[9] ),
        .O(minusOp_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\timeout_cnt_reg_n_0_[16] ,\timeout_cnt_reg_n_0_[15] ,\timeout_cnt_reg_n_0_[14] ,\timeout_cnt_reg_n_0_[13] }),
        .O(minusOp[16:13]),
        .S({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(\timeout_cnt_reg_n_0_[16] ),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(\timeout_cnt_reg_n_0_[15] ),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(\timeout_cnt_reg_n_0_[14] ),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_4
       (.I0(\timeout_cnt_reg_n_0_[13] ),
        .O(minusOp_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\timeout_cnt_reg_n_0_[20] ,\timeout_cnt_reg_n_0_[19] ,\timeout_cnt_reg_n_0_[18] ,\timeout_cnt_reg_n_0_[17] }),
        .O(minusOp[20:17]),
        .S({minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_1
       (.I0(\timeout_cnt_reg_n_0_[20] ),
        .O(minusOp_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_2
       (.I0(\timeout_cnt_reg_n_0_[19] ),
        .O(minusOp_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_3
       (.I0(\timeout_cnt_reg_n_0_[18] ),
        .O(minusOp_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_4
       (.I0(\timeout_cnt_reg_n_0_[17] ),
        .O(minusOp_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({NLW_minusOp_carry__4_CO_UNCONNECTED[3:2],minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\timeout_cnt_reg_n_0_[22] ,\timeout_cnt_reg_n_0_[21] }),
        .O({NLW_minusOp_carry__4_O_UNCONNECTED[3],minusOp[23:21]}),
        .S({1'b0,minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0,minusOp_carry__4_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_1
       (.I0(\timeout_cnt_reg_n_0_[23] ),
        .O(minusOp_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_2
       (.I0(\timeout_cnt_reg_n_0_[22] ),
        .O(minusOp_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_3
       (.I0(\timeout_cnt_reg_n_0_[21] ),
        .O(minusOp_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(\timeout_cnt_reg_n_0_[4] ),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(\timeout_cnt_reg_n_0_[3] ),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(\timeout_cnt_reg_n_0_[2] ),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(\timeout_cnt_reg_n_0_[1] ),
        .O(minusOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hF666)) 
    present_r_i_1
       (.I0(Signal_sync),
        .I1(s2_d),
        .I2(p_0_in),
        .I3(Signal_present),
        .O(present_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    present_r_reg
       (.C(Clk),
        .CE(1'b1),
        .D(present_r_i_1_n_0),
        .Q(Signal_present),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s1_reg
       (.C(Clk),
        .CE(1'b1),
        .D(Signal_in),
        .Q(s1),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s2_d_reg
       (.C(Clk),
        .CE(1'b1),
        .D(Signal_sync),
        .Q(s2_d),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s2_reg
       (.C(Clk),
        .CE(1'b1),
        .D(s1),
        .Q(Signal_sync),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \timeout_cnt[0]_i_1 
       (.I0(\timeout_cnt_reg_n_0_[0] ),
        .O(minusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \timeout_cnt[13]_i_1 
       (.I0(minusOp[13]),
        .I1(Signal_sync),
        .I2(s2_d),
        .O(\timeout_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \timeout_cnt[15]_i_1 
       (.I0(minusOp[15]),
        .I1(Signal_sync),
        .I2(s2_d),
        .O(\timeout_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \timeout_cnt[16]_i_1 
       (.I0(minusOp[16]),
        .I1(Signal_sync),
        .I2(s2_d),
        .O(\timeout_cnt[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBE)) 
    \timeout_cnt[20]_i_1 
       (.I0(rst),
        .I1(Signal_sync),
        .I2(s2_d),
        .O(\timeout_cnt[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \timeout_cnt[20]_i_2 
       (.I0(\timeout_cnt[20]_i_3_n_0 ),
        .I1(\timeout_cnt[20]_i_4_n_0 ),
        .I2(\timeout_cnt[20]_i_5_n_0 ),
        .I3(\timeout_cnt[20]_i_6_n_0 ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timeout_cnt[20]_i_3 
       (.I0(\timeout_cnt_reg_n_0_[2] ),
        .I1(\timeout_cnt_reg_n_0_[0] ),
        .I2(\timeout_cnt_reg_n_0_[1] ),
        .I3(\timeout_cnt_reg_n_0_[5] ),
        .I4(\timeout_cnt_reg_n_0_[3] ),
        .I5(\timeout_cnt_reg_n_0_[4] ),
        .O(\timeout_cnt[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \timeout_cnt[20]_i_4 
       (.I0(\timeout_cnt_reg_n_0_[11] ),
        .I1(\timeout_cnt_reg_n_0_[9] ),
        .I2(\timeout_cnt_reg_n_0_[10] ),
        .I3(\timeout_cnt_reg_n_0_[6] ),
        .I4(\timeout_cnt_reg_n_0_[7] ),
        .I5(\timeout_cnt_reg_n_0_[8] ),
        .O(\timeout_cnt[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timeout_cnt[20]_i_5 
       (.I0(\timeout_cnt_reg_n_0_[14] ),
        .I1(\timeout_cnt_reg_n_0_[12] ),
        .I2(\timeout_cnt_reg_n_0_[13] ),
        .I3(\timeout_cnt_reg_n_0_[17] ),
        .I4(\timeout_cnt_reg_n_0_[15] ),
        .I5(\timeout_cnt_reg_n_0_[16] ),
        .O(\timeout_cnt[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \timeout_cnt[20]_i_6 
       (.I0(\timeout_cnt_reg_n_0_[22] ),
        .I1(\timeout_cnt_reg_n_0_[21] ),
        .I2(\timeout_cnt_reg_n_0_[23] ),
        .I3(\timeout_cnt_reg_n_0_[18] ),
        .I4(\timeout_cnt_reg_n_0_[19] ),
        .I5(\timeout_cnt_reg_n_0_[20] ),
        .O(\timeout_cnt[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \timeout_cnt[21]_i_1 
       (.I0(minusOp[21]),
        .I1(Signal_sync),
        .I2(s2_d),
        .O(\timeout_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \timeout_cnt[22]_i_1 
       (.I0(minusOp[22]),
        .I1(Signal_sync),
        .I2(s2_d),
        .O(\timeout_cnt[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBE)) 
    \timeout_cnt[23]_i_1 
       (.I0(p_0_in),
        .I1(Signal_sync),
        .I2(s2_d),
        .O(\timeout_cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \timeout_cnt[23]_i_2 
       (.I0(minusOp[23]),
        .I1(Signal_sync),
        .I2(s2_d),
        .O(\timeout_cnt[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \timeout_cnt[8]_i_1 
       (.I0(minusOp[8]),
        .I1(Signal_sync),
        .I2(s2_d),
        .O(\timeout_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \timeout_cnt[9]_i_1 
       (.I0(minusOp[9]),
        .I1(Signal_sync),
        .I2(s2_d),
        .O(\timeout_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[0] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[0]),
        .Q(\timeout_cnt_reg_n_0_[0] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[10] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[10]),
        .Q(\timeout_cnt_reg_n_0_[10] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[11] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[11]),
        .Q(\timeout_cnt_reg_n_0_[11] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[12] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[12]),
        .Q(\timeout_cnt_reg_n_0_[12] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[13] 
       (.C(Clk),
        .CE(\timeout_cnt[23]_i_1_n_0 ),
        .D(\timeout_cnt[13]_i_1_n_0 ),
        .Q(\timeout_cnt_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[14] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[14]),
        .Q(\timeout_cnt_reg_n_0_[14] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[15] 
       (.C(Clk),
        .CE(\timeout_cnt[23]_i_1_n_0 ),
        .D(\timeout_cnt[15]_i_1_n_0 ),
        .Q(\timeout_cnt_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[16] 
       (.C(Clk),
        .CE(\timeout_cnt[23]_i_1_n_0 ),
        .D(\timeout_cnt[16]_i_1_n_0 ),
        .Q(\timeout_cnt_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[17] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[17]),
        .Q(\timeout_cnt_reg_n_0_[17] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[18] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[18]),
        .Q(\timeout_cnt_reg_n_0_[18] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[19] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[19]),
        .Q(\timeout_cnt_reg_n_0_[19] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[1] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[1]),
        .Q(\timeout_cnt_reg_n_0_[1] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[20] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[20]),
        .Q(\timeout_cnt_reg_n_0_[20] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[21] 
       (.C(Clk),
        .CE(\timeout_cnt[23]_i_1_n_0 ),
        .D(\timeout_cnt[21]_i_1_n_0 ),
        .Q(\timeout_cnt_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[22] 
       (.C(Clk),
        .CE(\timeout_cnt[23]_i_1_n_0 ),
        .D(\timeout_cnt[22]_i_1_n_0 ),
        .Q(\timeout_cnt_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[23] 
       (.C(Clk),
        .CE(\timeout_cnt[23]_i_1_n_0 ),
        .D(\timeout_cnt[23]_i_2_n_0 ),
        .Q(\timeout_cnt_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[2] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[2]),
        .Q(\timeout_cnt_reg_n_0_[2] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[3] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[3]),
        .Q(\timeout_cnt_reg_n_0_[3] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[4] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[4]),
        .Q(\timeout_cnt_reg_n_0_[4] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[5] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[5]),
        .Q(\timeout_cnt_reg_n_0_[5] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[6] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[6]),
        .Q(\timeout_cnt_reg_n_0_[6] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[7] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp[7]),
        .Q(\timeout_cnt_reg_n_0_[7] ),
        .R(\timeout_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[8] 
       (.C(Clk),
        .CE(\timeout_cnt[23]_i_1_n_0 ),
        .D(\timeout_cnt[8]_i_1_n_0 ),
        .Q(\timeout_cnt_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cnt_reg[9] 
       (.C(Clk),
        .CE(\timeout_cnt[23]_i_1_n_0 ),
        .D(\timeout_cnt[9]_i_1_n_0 ),
        .Q(\timeout_cnt_reg_n_0_[9] ),
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
