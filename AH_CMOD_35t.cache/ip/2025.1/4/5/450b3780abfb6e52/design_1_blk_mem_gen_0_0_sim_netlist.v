// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Mar 18 15:18:39 2026
// Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "design_1_blk_mem_gen_0_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61264)
`pragma protect data_block
o42AXFMOcXiqmZRToxsO98wzKApSsqtYOR16XmAwv7UXwycNujkUytHQJjtX+yUkvQ6YlLHxVXW3
z3VI6v072Ip6Kn1kWlfrgicGHwGHCgIgq0e4MlJkvawP0W5GqJHqMVMAdpc0priJ1Co2djryzh4T
ZU2Fkw4VPVyRUBpifM9iT9UgvIxipwU9QEHF003hVThTT4CPixcgTlL9HrH7x2MJPAmoM1z4Ll2R
WeT5IUo/gRGACO5+0Oj6y2xrofDpKARfcfM319tGGHp/lq1nAVDOpFU6KHu/KEOWIpOxT1b3Got8
2YTsvqqqWF5IWIPSurIFPElqiVV17UReQBLmHL47r6fjVC9gw6RzxGLGxRBawHUV3328793IwGWo
EJv6DT9kVnQRkUot6cDZjieKoJA7F5mQW2L/pTE5ATAql3cXs6rWG4UirSLyKUutyag4QL2bQ49Y
P8+VnR7Gk5+oSpsm/UtJ3IWlqi5P0+Qhlmt56P9hvKKDsMW+Lk2vex7KOiSx4tTr8PDadqREmEXC
yazbgH1tJQvQbKj+Su7GcJpeH2yW562qp+Ro0s5sxFi/YspamoHu6x8ReuJDbhoLtLeLBmwqqw23
A56EluD7nk2Q4pCzMBx+cUOPUkUN1nLyf0pCRxqJveoGkyN6+TRossS2XuCLKg58eCAdM4itYcIB
nHtR/uUHy4rK4qBZB/TaC/srqpTIMlR0zP8u79L4VB5g5Sgf3c3TY9s42gpDWEfQI3L7arG2OA+b
cFGSaFokpBW5eLwHMnuvi071FXnz5SsScplXFWBseRhJPrHfQkST4Andj1pbs9+7xjjigAHZ/GyD
Rq+Raq+17USfyPi67/jrvpSDPtYQLSXtm/KgVkEpR+H5dXuQDyZa3hw6qj5ZKA9LgMXnZs47BYoD
UDiWhsyHAFDhWxbOxAkoRGMkxoL81WL+cPg9fj2NIW2sJ1XlrFEq0SXzvGc9GxkEsN2pGz4ysM+Z
FyZh6jXKWzpWtOfdo1sFp7+gVuST3xOGbOdV1wNhLnHC7V9qJ9gw1BI/Mf9akj2ZMRlk25ZVbMOB
SKpcAJXkdMn2y2Ul09PqpXjGhN35IXImbfZoyB2nQ6Ss+tws1SOnp4OY+v+iZF4XFC7/cZYa+LYr
CNQyzYcNLyc2MXfJj19QUXDy41hcQPL+EC6shrG+KJb2/DZQTmkcVhh2ujXJo/cYv6yi86LsHD9y
7J5QFwhJ6WIeEVENvXtmxfC0cZh/NbX6UvXSI0jtNnp1yT+ZkMTCOOH0RMUyvbQ5m23xVLVT2Wtq
CCPgwlsOup0xaOW1BXvkzCAMIXFXcHMEI7gNykXox8YYrpPEuokE7WeTVMrCbERGTtNjHdBphZy4
WCfDs+9b+7qfA/r6LZ6Czx4hVDLDgGR+ncjzAQVUcS0t3WrYtOG6CJ7jn7jOD9yeFyOj376utVvI
jIJx7Ig+3quowE91l/x5PB89deq8+Tv76QVyIU+LrS14aJzIYiIOCffHInmhYmwHQMxEp01hqknX
f2ynEnkFPW5U4UA7b80Zbw2yuaXDSt8T4kjgcsr/qvZ7wDHFDu5VtBCoC/BSTr9pGbvZwEwgkVae
+26tRr5Ro3L8sDwSmnpbTWavD0FalaF1crGsF9XapmnR9uoiHtY7Un0TcZZmp+LNA2vw/rr/PcAJ
uxYR0Cz6reoYf4pUZHYiQ7ZpkTMBg9+0oUU033cExgn2NvIdhxr/6/YdyhWgzitIhhY496nGu6Tt
35cRMo1dRQqjY9bo63VTXu5LRbRR+Qyo+pSLehl8XpB0+b4oox+aG6BTa+RI037uLKqMKBGp32sd
ynwYMjjD/UPmHvDZ4KNclSkMbOalPw6SWedlSeE3eiCfDRc5cURVJOKa5eycNJeSP0yEHihFmgBh
1/Vceg18gFqeGED3XwftF3QxgCKLQrgfU7EJoH09eOebFsIbLACTNOihPhbCP9JvJ6dUfqW6BCq0
i8Bp2dlU5CKU3UKaxcbOX+Svd8JpJ7AwEHYx3tzzggBbn17l/Hs55M5idNNNDvBnb4uzuI8/dwS9
mk0zqLykx26SlbqrXZQMbKS20bg97+3bUy2g9OA7akLnTWhojleOtnYKtqgGsn9GrYDXcryD7FJj
xdI57ZaotVoDyyfCdQezrAUxpqOBpZxaK60LBj8sRqLnBSGheXN66US4H9/jjU1fM5KIoXYt/Vai
2A9aDfM7/3Ppx819pI6SW89/MLsOhFED9EPjiG3JaloQOOEuz1sJt/cT0tynbQpFX1B67q7E15wV
EZCdTuQMWdn4B/wa4pluHhIEcZyNcvWwJvHfWMz+Fwa9rA6uMs/dKT8GmnGjETWx+7FfCVialXsR
Hp+72vyB8tPB1EQZeC7AvE19mhfAXEL+vpkxSE0aktKfz4jZxEDPVB9M9CPkoha1q38xNg0ZnQon
D/rb+6yw174Ya4irQqaUATE8h9mS6R4XUua38m85Nz/Jc6R7egEOZnLKNsEmf+TSUnFb9FuucHZt
pFx3OB+zOn6RTArrx+fADzzCQTRLkbnZqo5AuN7LwHpr0OOBKRx9+vDpQtMX+felpPa+JPQywHkD
Mzx0Kz8dpl1ZfayIvxRL0E1z6ToVE227ZU78A2GUbjMu7xu3p9nqqN+5PAQmmAjuE5EDiy43oqrN
w1w80o4I5mEEM08WU/vdSG4XCWthe/ys76xlo+mnDsRtdTaTqcWQAg1ZCd4UWpuDmlD48sb9FbZF
PFNsMu+lTb1XOQ6p74njYd2kXIZE4CxIupBcqcAvDQo8iMbT9RnN4jTw8jG8+L6sIxjWuxyZ9eTH
7hEQnHo+/QOiNTV4KKMlAFh8cksa+zf22DzOPvjMLqNXRfjGUC79vzMtTpUX5Xzr5MuovDt2AQ9e
PPRq2bymjEsuSEmmFPAo1YXP6LT/rDjNP5b90E3CEYScexioPh/FdMnKu03DqJhjNpgrAMZ9dm25
HGGNGWGeArdOnnLLc59d0aeqwxYmaFt1b6j3fH3+4GurqEwzNBBrVZGY3kve+zmcGWbYLMpVEg7r
YjquiVaKOiyVynp6Vq0HL6KcUk5l0uws6XJT/EyhK0ohrMAdGTIq7d0VI+85pgU7YcBpxGj34w8g
0WAxqkD7p2SRPdlgnqgn7VlLgRAQjLqqP0/5sRnRgrKCAQ7feSfLHchHlo6p4WRij4LVjjnb4/lv
1vU9KEUol3vJXoOLMxt/JLee/LBEw9KZaIXKY/0l2c3MUf/eOTjLklqTsxWgKyKbFXfTUoJF8sZ+
Y+Cak9gFyXwrUk9RCganilXvD4oUWSIvMM3C6sN/+KhNHsEfInJ9NyhNN3t3qmxhcaPhBuAv+9Pr
p43IadDCQjV9mqrcAOuj4uekMgmhu3r356AxBVo4fPdHTwttX6YrlcGklWl9h6q2TiS+ZpPtNAk5
8y623DCUnMQMtnsHd7W9BOzYC20suyP4UmyGhq1O/VYEygWbeyLNarn7EHg9D33f/fkHtbXiqm5D
sR6qZDDzJculUgCzOWa31sqMf1Y+ToAtZDOOdjli9QQfmzl7ebNMVogPJGGhToGMUQ7NRGfmXihk
OGUn2j5Di50pI3w1YLc4ISYXmLUZejQBzqsl2LaQeoYsgLD0yI1FqbTCeGWq+acCOYobxgEPfp+F
nJRboSBj4yIfx5cgGpzBKnx6UAmnVN7SgfH6rfwhPGQuTFpZD8sizmTP6DTJdwcI1MWH0inOxxm+
kqSlLm+SUnRm8ymNsKfQeP+c4zkd82zEEsdNSVT/glZfllP3l/uRCRRMDoAAstQQVD27oVIWxkog
OyX7iHHaGM8L7+LPYkxm4apNt6YEFjS/x+AJbH0wnkHD/AA6Nus0pmKA6rclAzw3rRLezjjAcPp6
cmexciGGq3+s7bPGf3wr8z897oPaMFRmJBpkXRzjQ6aNR393sZSMWEKYJeYEGrH1QimfpuRjrEMM
c32tf5bHKG68G/NYHQpqiQJRd/9S1FyuJgdvRBoJiKttOlLY7SF7VGK3XTlmJMtZzsDFzHK2rzfI
6zesoXCOTpFlsFFrx+pdWrLgqnkJ2y6YrYFiRq305zguthedvCwBQ24S78lOJ8eKD1KSGqk7+psy
xS79sxVombh9dbe68K1aRzOoc71indrEZrB5FfOBxOe7Dv/z0pwJHUr1veSz8ubyOIfm2jnithct
gLsLhhqTleiANAfpNpKIq1qoQp9nxw+/hpx80j/QVzx4Pma6kQO9OpelGJp2mjbYSO1/hAhiYBAU
KzB7RZ2ltIx0SyIPljRMUDuXgpmdfH0RBBrp50PHPG7EhhaDGWYUzkh/aOS6D0u+Fi9cddUR5QCy
PsV06wAhwiLUO1jECFJvEB99JGJO1l+Y1IVaz4tehRF9T2GL73Q20VeYAn+IB6JO1g5aLZkPXbY7
0DnDZ+60dVjc0A3sivwhEdh39IzX3BeNQQ6IXf5asJnMIsjZZ4Vls6wT2NmuBF3PSOSEAWdNgSeF
IJ6vkQ+4tIBUU1pWUntI+Fei2PdpAwN1wH7PW8OUeT9vNELMjS/P/KSI70MSmGSjKTpLHL4ly4wD
Sj93fzuIB9H0Jdj6yA+UM06pOKr11PVSzEACzimS89WA4i13F0Utn9QsDx7ovNFLaN1BTnkR0Qqc
pk6WHl+EhCPABk8o+sUH4k+R+jzH4Ns2fyL1lHXvbGqJwLqSewI1ZfcVg+Z0xomN4nET3oGJ8nA3
l68+5EeC73mCK2a4JxH80R/iP+f/5dQicf+SE2lNkUEh0jL2gSqbmp5x2zNn7+kY3glQUdI3UTtE
tT5nV2+ZL4zjtea4Ku206Yz0qxCe2ItHUH78n0ZR7fRZFkQvGrba/S281q3CUv0q1/7+LwceTTkO
uUvxxTVQfEx0F7H8RbhdV48LDT8s9MutqRP8vTd7J/1GvdH5fqap9fzXO8wzNW/6GOv0ChkfrfHe
Puk2TmIOkfVmWAdc6GGmmeAk7L7QD0oHh2FzEQ4N6W0d/5ncsEc/9thRNwMyvKVRXO/y3AN7cF7N
n1nr7dMPZXKNQ6MvJd6+uXIZxBkZTvBDyQia5Rpm/pDzSJCCKwhxwFhmNHMoHA6WtD+I+HaoOmr3
seUKEKD8h++exur4Zih62frNOhH/1r6CnSSkSQ0vIAs14N2pdRVd+IFmGn1KgMTyW3n5PyO0kP0S
plUWYu5SKaERlcbbigp+W2gmK2LNaRt5+MRNttpcNkbuIiFpLRiiyA3lquwQcAISrDN5AE81w6+x
Y9zPH5KHDd7vsladQSFbFYnzAx/tzllzsSae9rmxMDMiyOZujblSLZxE9tPR+rhROrTXDzPtqEJ4
6VBPSJq+n+APVGYTw1SsN2LRJX8v1ChEp9J/2fGTcr+ASeO5/LFYHVRGYodjHhmezEl5hM3lfu9Q
jI/lVYbdeCRaUhFGeQWD12irgdRL8Srm6eSSv9uBbQW4o3hTFCwZEP/upr7c3X1jvgr0Ki+I1v/m
DJodl1Yzcj+OCmDQK+Q4Lq4bbCst+rpA3MDHt10SNeNYlF/i9osMoflDwiSi4YeFdeP8I3ALOKKu
mufKihU0CvPh6gMJ3Njhf6kqHinfJjaaRAo0qfG2R5w3mnsSJN87a0TKMkaBM63IWVy6xH/owCa5
8aaXfGts6R0wlEkW/6Kn0tCuMT/c10ESl78IsR7KC6vPyJ1SrW7F4yxbeIRztmtD20RV79xZHNsq
X/C0wmNXR/yY22BrRjOJP4wz+2oON383RN37cAKQ0O5hJWbhyNfDqlspSs3xlLB2cTq2cjRvmUi2
HcgJZx7nvRFPyftKv4lmeAnRT43ej4dZrIlW7uh0772z42oeNxdUyO5b1rqjGKCtWRh5t7tvclJY
6sEyN+WoAxNxWolYnmlr+Ft0eRJGhnZKJRTF6yA99gFjtUK4USS6KqmORSuttsThFiWj4H1gt2R2
Cb72m+yXpnvs2trpM5sKeBJxZRbKH3EVIQ1mbNSImjO0GNNDMn9pDHGZIyCyd88oQjZSnTKonokH
bUlW3o35AZJ6B/BBbWMynxJOwGTurfRVRPZNFtT9O5m5NTSb0jlyQjR1DakpFTFFktzw45b8iiyf
leNWm1LD5eO6N/7WE35AXQ6BRc61kkY8r1BTTFU6T9KK5ODkd+hOV3Zb+V4klKzWmJKx1thskHTc
6CBWaXhX1EvKsI6Bj5Y6J/Rjz9tbhk5nI1zIkTvQ4joZnLIZaR0uagWVYt7xC0fV7/l99zrJRExX
K2G454/QZ4li5G1mqYIp4H0fW668t7YcJYaRjmVC7G3koHwemk1lDyAoTCWhB4ddcDhsDMiXL42I
LbEBaxCsurGNXTAgrgJFNMnMoBqFLH3aHx/6lql7iAa2OrdX13CO/RD84/zxzWOJlHfVvAm2NNAV
EjIuqjcu7+3FNr+BNaCAQYGcUFsUawSfkGLP5SpaKN7nfeH+HZuDjFDrVGk6fitxOw+DBYVb9C9r
nfzu4V+wkBXNOUFHgW3rSluKrUqkq298/62/TNE97vMJEZ64QVUlSRDjUNFi8/BKBcMXK49K1vRJ
V+pfOAjcezlN6AtX7YCF7sb4Cj76Ge5ICzkrjrF6/9/84ioJcxPQfs6yAY0nKUluXkGcLGBlRU13
5uPgtUwxm62VdITLdPYjw8IFB7Fpomk0zjrD38Nub/wBlx+sz2G1IsDgzFmMLKs0au4a0Ul8CwBN
hGEadgweV9AQRn1QRBKx4ldXlXamOxpjkrSUJAmt7E/2c++vwAV5zUZ2PGoIQxMrd6L8XPHLQR/N
o7gLFLBT0Aeae3KINdiAEUPtWzlTkIJ/1pFQSDhWkLKoxYZjugNS7RY6T3mwFPm/TzHf2h1p8pGW
qwMCqqgS6Y312lEUXnPFGeP+hbF0W2Y+wcoArV95YLL6Iiw5SzGm9dT7ZYF+e3fiTAA+WS3sj99o
3nWc8QBRr87eVvtkgPPfsNklva2Sm+gww+pnV7TLyulx29w6ROnVr6cNlTzh4E8NeWFenCU78m8J
FQN4v/OayzVWoDTSbqGxxvMHeEhkYki4o5PH+pjiGlGxSeW4aecAJdkOxtrna0MYqv/a/w55OiLB
0JmuxSBEhmaeAuLoWJM2ZHfuXblk2TpCfedpP8UzerEp3jDuDtE9O1rZnkMSfarIpvosM2CB8cA4
1qqRLdg4hI+TfF2mVY80QogMMCHDwxRq27Ecd2t0oU08wETDyfrIpGJ/+IpVtNfFvDd2vHHB80Pv
A+DsxMdcn7bI+CPTcYy75nfwS3LSHz606q/IIgIDiU6EBdP33YI80R7L6JG//FZxTxgbEBX7/9eg
qhjAZcU9ykPskmsD0yBgYC8LouDjL10IP7Uuvu01FfpbojZeU4TR12EH/6ZfU3G6XN0qQFQ4uX8M
pLe/0H2zbwCbKbrERI6m/IvnUbnhHzobf/+LVnxVtgJYcbr6j2BayAc9haSAA6HMFFoCXTOte7vJ
rC+zD7Y28b+ID0/vPykRPeT0DI2gQiqJA+bo6ecVn6EqWKrtE0mED5G4iYmizgJaG9DsytvDxllp
3BvOjk5jDdZEKg5pqKPnMlYxK7zOcdkCiU0QcCYho43OAfbZrpP69AYrdcm+HEC3zrrq44Cs2KdK
hjx0gt+9SdGl0LzAZjrn4nlt5d6cK9tBMuHOQVhPLr+d+H2Kg/f9pFbulzfzlLNIrmB7x8wr+2Lt
Io5+vwlICRjhcBj5mKaz2jziCXLlIOnulo3JB0gkFHzOdnbwDpFlN4oZ5hQs60GoQ5DHB/KEhH+L
TIdsDl9mN6que+CIjGDQ7jr7poVYX+riadcRFShXvbqDBt8IiuuL0wd9gjCiNBPveUTMNe8v7GsV
70SMmkvUfrmKla99ZH32tXaT0W2FBawcgtrj4zl30tn5+bRBpYD5G8FEiSNDNA3qPl0F+wkDzArI
yw9NP97egS5mGAcyDWcB6PjVfpYzy4aPPsGSBeLurVsBhRJdDV2fdn0Diyj4aa85mtKgTthWI8Zo
Gldu/h1ewcyeD48b58lnB2K7C8dStog5fSROsaJ1UxFdbws/+I/q6XI5fyFr3ThwWlSSxqaa+hOv
6ljRRJnZSNE+pCgriyI3BDvsw15z+eRfKXTh3lzDxFuj59DXFZ7nL3u9F5ocTwtC9qpzkPzgZQ7R
sGLCwRsTKkPCh0O2cnzA1s+Ih5j/jD+FO3jyYdv9catkCwJ25ZpMm2Cl5iOS1LtNSMZdLgXaRU6G
3GSfynur7EyVCNvab61gWfvzM17AznCPh6YBHYem2LsyMuh9uhvhBfTME64FAIZmbwYkNB1PFVVE
g7BfEoxG+5a8cNe93l9U4On3ymaFD95C8ZHwpjVIRy7EOe1IMr6m8ObBSEUdSVNxxiwfrA+SNRbY
B29BxbR++cSV70lb2498PkkloqeEHl4VBxR7QR2PbgJIl5SKWtx7sr/WtNxKK9wOU0x8an44w6M1
dHEKeM1Gm1p284yED5okWRdpgna9aLUDlaptdB8uwQuPK2dRmSYIBNvtl3GrLLEPaO2ob1gLMB/9
HnjmYUmuo5SAANwvoHezTDSqc0X6BA8uZvOrs7eSZ9mwWi4YrU79Tjf2ZKQxETdIqsF7zoeKwWxx
jHbgg0D6ldFf8OqbBA0jfo6+JpQ3JR9MiiGtzm/Le8EV5L29Ry4Q7BSba8I0YFFf3axAWLfofzLj
JzJibKpUnClBupcbBu07597drD5dSE+IATztKCeP01o4RKLikpobW3gye+y+SgKPPeRaLwTWEAc9
Vx9WrQ1/YLuu5TVR+HbR4dMRcpmzu8lIU2FGBO6CEicf/wfKsihLFhC7MOlr/bGGR7/TyIV8REED
ESW4o/fOahvVWYgQNAhDz4vQbVOhnQLAKIcUd6fn3MvNA99t5h31iVLP9xenxK4IYc7fu1riUsv6
WSc8jCPM4L95FqIJcGpqrlps/pszav0FwYq2NrP8d8IJJi/Z2Zg83OXt85Ax9DST/iM9s5KXuC6Y
b4pTEVIdGNeVTejSNA+LcyHv2s74+RsEb2GIgICGS/tPPsJ+Mdj0aqBjk7bQfZArxDdY0PcAty+5
T21QYIPQaldQvIuiFQJlEw02VM6OMkJsY8NPctYgNaJzEYaZd/3XeFVBo05f+hXdru1E84Jsi4Ra
nKxEcb6J0tb1I/PRsVyyHGDPdk9HcsCZJkXt4o/UTL1IteWdP3SQrRHZscZuc6VgZOKf1eFz2DEz
/VqTsvz76/TXq2516MbpbbbvUMd82DVOQnu0EqZLFgu1WW3JyucJvCsXUiM15U7xl6LOHhowY52Q
mUDMyLtoZ1SQxmxVYEy8mfGIAScVwABHONJldXxIWP/vt+aqTlYG2DlSUktSLhzrcOfVTA6i+nK6
l+i6Sdlw9IMcbrih46LHKTAMJJG82Ku4ELqTUPf8kvPFYp/t3dOSURNCix+k67I/PBLia0EXNJDU
/ox+Zky7PjxNRXt+cG5654El6r2ENEwwCMpREHSRZec9R2exd4J4nZPB+YXzZap/iDW8qLgFlOcf
kTMUh6X+oVRqAGVmvn/v2/rC6Rq3fCpEkCLJAagJUryJIuh8tfyHCwd3u4dxaGYUhaazklPfpCE2
4uB7+tumHtA59oJzFOxzq/XojAJ9CHrlCAVdKxBTLZJ6SnLem7Wiu9GaF6YpmjvhpsDDA/XgBRLH
1K3Z62sZXiT8/XQYhKTbMxoyf8hCZDZoDZ72EAst2EQUPtUAtAo/VqTDq5nDkktXzFEdckg9alp+
byxHfIQCmaI+7I+8Gkdn7XIoblRPx9VEvBXNVh15BydLPxRr0yD13nRSWDofTpqiyXYLODJJ4Ytz
9LsGjlfRxEP3icUdWBRlearghCoxcUTJJS/0tzn1h2hEEUW2it9mQ14UI0QqVlWjyan62V2WdloO
1hWF7CMSNX29OsGQkMPj0M6tqllrN2c0km8USqNNr/PJ9FzZ9TdSOvjnhAvr0C9qeQ8m55MfG5rK
v/Ql2tgXUwTEsFbSEGH1RggBVm3Av6jxnZy+qkrvsbtuGBiYXz2CcZOSr+q7QviurpTJhrxTClp1
uTlW0m6pJEfmMdhEw6DMPQj1mOgvvV4QlXmbynqc8/2AO2iy4wQHGt4sA9Pt0IUAKnUJnQ20/Q/j
411oXypmu5nngE0Wp9fANzs/U4iMYcKhvRDT5GotRv90Bsq7Z3Gr31rVfgWd1DnQnSgn8N6+ebsi
vTsNj918Lv0iwgOI+UopWaBOuajlU6jtGT9JBG2GsNMwxYdiU1K3xzGEqFXKv4Totue6eUJZzL5V
vhGlHLf+beCZDtfIZRmYx46nUr4EPXOmMTYhOcN/c1aejTRiN1PTU16wNdtwS5vOC6mzyITSnggH
02pd2SA0v+uDEgir+lLz1JtKWAnb4hho6i5BWong3qmn/UiUTuhp4atfsYaqEbec2mrGdR6F3yM1
ceMNjkNd9C1rlvDe9wcrRS/pIf5UAGL1ntIU9jrgzJJohcX30eFof1ZzG1aKmAwLrMdxGe4QLwf6
0kdNraSNADZACHNyDObvOK2SihO5cpK9+PlZo3ETbOm8v7tEq+o3stm6w/Ey9BNShEGuQ+LtOLuc
YQgxOMx4QzqWzPp2BO71/xk3zaj7IzP2DmnSuQDkevQuGYZ8u6pu/DbjUuFndDRDgZFDbH0qim29
r/dE6iACNWhN8NtWAinCVbPhMKz/U0c1MQL4JoGmObfsVyh9VHrVXRszH3v0NYfKsvDic+2GIbqX
yAAKQSAp3QayigmAIuE7iMODr2idwnfF7SRd8WMHyM9sm8YjDUbNhylxKTg1ImXemaq2+qy+WM5o
BnfIJ+w19oS3en3zlqd1wIwHnxnta7VniE0eHSHnNJ69yUw4FRg8gC02Y9cUCQBcbBmr0ebv0bdu
EOIitrxOh2XCk4wbQF/96TfpYnKqjFN7BJBnh8VFwZPPRDOl9jCOhXVNdQDsh0Y3MgYIP/KGKQeU
EhyemjQQVr2weyOFMIYr8d9hESNlbCvUy13JCXAhN+6FUKOoZa+oDQU1y6VDzY/7zEDAs8Y9+Rv3
Ev2HdrMCGDODQWec4LSSbL6g87yv/6NC22m7XZ/ARR51LcsrUyXoo/5VUSVtR/gyfaG5Cqa+RNFj
3kuGDDJscrUP//L7J97uQrGkDcWNy0lvITkf6cvdDeBpjVT/GQJYQjBYfsEESiviQhU/xV1AK7WS
wUvD2wXfK5d+nz4x7h8TEV6VUrX+yzBtT8tR7LykzWWK9Wa18CmlFDKGX221eZiJUThOE14LvZnR
rYAPTji6M+KhRbIlCTIt9M2Tj1BVmwbyiaM2ptuIA8SFxrNUsRIsEayreI6GzwuQ6bpK10XVR8AG
alwEIEMg9C79K84pG1PBReXsKpumt596t1Ih4u9WcYrA8umX4LiB0L+KGsXHT4och8X7YV4LPeYa
kld2JUZkQV5rpMO+vlMduRh0XznZ4g82nnPrtT5xziQZkw6u8OlAah6twLmeoUgxmvij7Pwa1l1H
BPoMBhKZOddq5TmJbRKxi4/Czk/MuoPNt4khmA9LVoK8KJkdvfjjw8reqYeYyB6KdP0yKJ38dN4d
z7dkD4p0192EW7pg1vbJjl3P5AHhrYV9ufj0SSTJuC6Ms2R9EzVaI2/xi9tNrgJo4EXnP56jvhHX
spAGIAffKT5ahN3ab9JImUS3/pZqwRVZjyS7qY1IYFIaRYF5bOv8RngbnN2+1Ev7GnQam1LeRuin
t+qcjp02XSbDQbDROgRVhM5xWf3lpDBNcO0RJOkaFJoQDrI6NDKOWp/CQ1lr5MBcdNTZfFirKIX0
EeabF/+z8wbMhE048bnj28bqCHmZ3QWr7KCAbTtSRFERKAjjEGgH5su34NX7f8JAy/zE6zN0WAyn
QYlPE5VxzEyQeMPjEIcrlwKKoTu4Pd23jwBVE6SxcBFya+p21AHiiupTDT4plVTdtgCZQ61z4VCx
OMtVPndmzfEybWKnSsHWouZYYMQ4n6BivJY016ifz/Q85d+eytlYRV4kUV+MOobWC7uaxEWzCuAq
LAsNBTl9TEYEKQrPmD2NMrVDr4Oyv+DzTRWrPvVdxw0nFxwphjSeg275r5peBZYgNuMwVcl+NKgm
VDCr0YXV/usdeAGghh5jw7a8rnKib9x/z7fg/u4oQC10mD9ACboM3xFc6dY7wXYdvIpoTZ04yZk6
+7FuhW9w5havn8xBG/9+a9cBQAl+f+DarivjwEoo4BPJc9ZRPpq87oPnZzq8zHuAKobzWoOMxTla
THJodZ6Qy13APLNlu2GrbQl7uGuA/HLpQCBTFsZCqTkcPJdphCg3SmYv1JakkQUe7iEN7rX9OTht
7+FaZanNlS73mLlwN04N13d+YHv9DSyIrNlmbkNFXg/bFovI4ppWblTOysGBMfGriDC8Ja3QoZ1V
u34AP+6TQ27GbT313SWvyfWPfw+IiKna32+MmEAHd0O1WtngJkS/nE84/UWxLuCQyj/oifFWaXwM
ZljRa/FTqCdJNI1KGRa3DlgZgkrCA57BdbHLbFuvqhZ3AXyvr1BBmN3lVt8Wk458UF3PoJTm3Vui
MJntJM2ojSTKV3IHcjWl1cqLFWhXNKqvuRflZIpam50FaFRq4ok+vH2+MrBMoVUXG0L0Hfr8t1DG
Sg6So0l6Fd29E2ZO6bU25CqlErqU8jikg5IIVVUgbIzosF5K6Fqarlci0Vbhp2tIGFKhxD+ZS7YM
8I0Zk0Z4mBHKMmWQVGmfRoO7YksT/iQp1DKrWP0lBfOIaOER4Jg1KiT3zi9V4k8uJUUCDSXZvkel
XTF+8FRIkjNATjV4//Q0dGoDlj0k5toTK92iEovfMGUDc83HA6dqfeDCpVepgdBdRfGkS0vb7OP9
7MQkvXSHQXuz4dRrE991RgyRwHxTtGFSSfePOSoucnAFl/zIWuB4hI1AorkAUbS5O7r6zOpMINpv
IsEJW4glsmkkW3UoHzQFB+CTEkmjbnKiiNnHvVgzUK/YDhMceCv+VyTzn9BoqSrHIEynk4VRlQl2
x1JKRYybiI2Da3I4cZS1+4gPhEHxpoEOiMXiz8K4GtOFmncDVA4Pl5RoF9iPFLNk51iV0zqy2jKf
z0ozW94MO9HL8Lurmk/uyy2O1TaXuP3vf89geA2JY74sgNi3DjFRMBfdIgR1+Qm9TSa94FrV9XZ4
huGF6SZ3XvHb/26ZEvj0kJwejWWxwT2vqn+xYWmwT5paVlIXQOKNQXcaI88K0oIM4Y/Lk6cskkeV
GWkWcZogbY1d9mkHtMYc6nkUnfGPJVqemQggeRrukqDjVHzE1mTxka1ptwwFq39Bacvj2XWHHR4u
TUNtuNPbQ6uoWTo3H1CM9ezUiJNZzx7puFPlYKXURwkiYp9HlylNyl3Dlp7GR1XdYP8T8ERxltgR
U9t5plJ1XW2qmWLpYwQv6NXoK8DfvCoeVmFYOgkWMaXwalUrVmViYLKuy0Au9bu4SyGrEZ9kVhFv
FHfj72NK7QNXEc35Ogen9MGTZnC+rOcr1sjqdt4QF5vwkb3iAml105EEJlH/IwdpaoSu9kYuM4qC
3UwJIh1BwtJzh68+e0s5lQgvU7E3jywTfzIlHr465Q/GEJ3gb8oRGaoE1uTgBSjZ4TiQOj/FqMk2
G+tkvsyLyjjp1hBKmh9fD8I0+ykm2yKGv2F3ipqz6UWc5BoSX/mHafrtVQCR+skBvRFcC1llwBiI
AAUBkEy+WfwImUONCPoqd9/VaUhbOrGqJFua2LDIQ+xwuX7H8PKUtTkgFGBrrOg1KpgDb629L4RY
uH3PvuJby38jTwP4ws2pathySCZQaN9xM8qZZejxuX9WDoTMOnBiWmz0uZj3Kx+RKqb++VWJdswd
nvgaadAFdYpailFz9gw2t6PVtxHBG3YurMUkeQIwfG/EoNMdRI1XFqv6PlV7oiQAMI7YXzvFKQHv
WKufj59K2uPB/fLskt0RzAI3x0ieHv7TfvQpjO6LEtDZTs7oLOe4XuVbaXPEau490cVfLSadGieK
nuaV5XlYX4wA5Bc7sZMbf5og5Y/tVqSUlkUkBWuGrqwJcFwgYRWD7u5sRXJoZOSclhdXQGu3Pign
eDUTWwtPcYvXDj57g+lHzDR4uNWeHne2/C7xEqDUMbZL1nWE6U9uy0LaKEv6rJwAqSMTlkxjGIpj
oAm7Jf7sIjuGq8iYDVVlQ6BenVrrDzxMMCMBWBUmJ6E6fSsRIi6sCSHdKwfBG2NghN/LmaawSlW6
8vCExuxvmr3nMmvw5iBXZSIu8quwMoIyP1xnX6Opb3SikzES1cQUOAfyxTBdF4Ryz1bMayXAVFGK
j28UQ/Bghelw0gT0xkXgBEm/MRPK8pO7I5o5XbMHJ9Tc1GyYBTqrNLpMVS4svcAcLe7Yha5ywmrC
IqiuPI+ISAZ/5BoyiUhgcVPOlBbuYnLNMJdar2IXZ0BO/6e5TLDAVbUQWH6cZXvstgsxzVuZUW9m
nVwJeHao0/AHOthiXXjZL9HaTP8cRQRbVmmDPy9wyYjNcEfxQAub4d0FGovREbfO8MrNIprAH0e9
RsgPOBHuVaWBPfm5Xqv1EAWeePxanK7abJsWppIJXNgIixH+huJ8Q10/RxfsDLoerZQlrdOEqG47
Zp/ushwPUUajuCAu0PQxE7pJjvfarLSeCHol+rMz+hy15zyg1dPpgZzW0d5S72i3y05NcsadRB0/
sfcpLNZzOWOebulGeuvM/IHUltkQfAa4N7t3ZoVhoakWGqLu/K8/MH4FD5BF5blRWlA+t/bR5kew
TP5PxkXp1Tm9s7ivvGVkRu5hw9jUtIgCWSfLjzzF3R5mYBUZXYc/KcmTfT7roZye9/DhnwJWJDoY
HG4Q6kQqS+5gfzu9USIfV/RrLvDcXoyX4bQlFUT6vh+wMs14rruap0DwJMveE0MrrW6AZzpcNkN7
c3YKnzMtb5Hhif8ass/UTib4CUliEqLyQ5GDLCq7ejh5TIxVgNPcMH7k38cyA1ix7gPehHEX78XI
rAWP2M3kL/krD2kioTMIr55jKL2EZnNo9SXDMGk+ng983r6ykFV1LNxdiPJbXC1xqM2jvhezm0q4
UspkjKXFdJeERoyOZXTRtmfbtwD2QnMDnZh6Q9gB7rl7NnBj/tY93PmhctN7y+3SMQyqQea9+wjV
Adg7If3+ZfQ187MCihOvLLNiIPG/I3k8afPwO7Os/2X2mZ/hVr4CJS5Z3FbMzpqZquiwOhOI/5VD
hZpNfIBeGitbqkfYCWMEspnrNz6qOP2iZjVzp35g65VVsYrogbPMXUWq/yCDmrG6gvc0GIdnliO7
MC8/yy7Q/1EE+syyUZducrMkn2+Hp6H1feYK8Lzc7gch2AMuY3esih9I3kX0Q+5Dl2dTNuzhUY/o
DncvV61DpAViEdR/gBdhZIh+35QW3bkEqQsB2pxugqMxDMkZT2lu5yNf66JMICbIxF60RQwPwwN0
st4kr6E8ozp9qZGg3VJCy+bDRlR6QyttzEZrj56lsaZARIIHKgY3xsBZnwwdh8k8+WAtKansZBjK
aiPkda5+tLGQJMilb6x7hvtbNHhqgbYXD20EHfCCikH/7joYyRJlvbxJi5VaT4Y6yzWTRBycc8xs
roIigR63jhS4CBib55mgEyz1GQmKW66m4hrO93JfqcdowORjCQGI4DZvimWPmq4bXrbZWHQc/Wou
sk9rx9Puygta7Kf2noqfnQME+2sBuvhpg250vCNyDlbyMdNIQ974zcrwRn/MUgpPrJ0lsCdCIZyO
7Q36O7F7tXSkZ0groLX/jz/Pt1lv/jdfVcYJfrp3pcaf7YVOxCm9P0AhLrpKZ1UsjxN/DwvWgfXK
MKue6zmBjIHSmdBvrwr9flZqAO4BmzyfgolJkLqYA1DdnNciIgUMloLykoR2WJ42bTXvVViRIDHp
wYU2hSD3ZhZ0nAuGvtEwjnyWWKkEZjf+ZwCIi3vPnVp/cPxUKUw3yLPc2fEPkNJjE3X1bB5XBiie
NgAawakebyNdx40LCxoN05IBfSTkXr0516EDaeGKIsBg6rTZRjkdgCqcKncjPLNlH6Gid6YwwTSa
ivac82v+10z/TwIL+Z11K+xtYJUB5lyNt3RQ9YfbeJLj6z2DwUIgIHKydn2mokzCClawIUJjPTSg
1PS5AroMYmge0yOtPlhIlaqA8Ibcl3XCiX0ozSJaibbNZvlRLZH2U4yubezDCsJVehGHywi+SNQd
XeTqFkK4Cbhd0sIuwSJNHoPgylEBLYOOR2Sj2Q71x0msJ1vRiF0JetiVrKnVOsdTOklrkGms2O4a
cKKoSy4DkiZjz5gS54UipqMrqmTSGghIxpKmYEgyIHG596etCNkCS/WTvDFhVnPCO35ftO8tn/Wl
wQoD2MAzcgmQacK2KemlDs0fW1FKmdFhukxYtePjJcnAIre1sxfCTaKs5mxYbDIumgie+f9o9InN
uz7fIOjHoAesbLMAJvOL71fCXheEC29RPXCeVD7r6fhjNfKlXJiutM5EpTQwUpJJjz/72lBlNIgO
lXg43ikLPWTj67XCeppkukTcucr/u2ryucxkzYPxQzmJZFHfKaC2LUG8ssi8ZRgdgUPLF+EsrZGS
X6ee2ONECIJVHskJMuBoCsyanrNh+RDJZ/wZ3iNCjurjCQCNRtpwItRiooDwFUqAoSWhzX2jh+0m
iyKFXjhOHfMwvjNJvO+UCF4xbNaSN2fKKOKSZFopEsamkh/fEUXzSS1GGbOhM15SmbXPKV43PKCm
QGlFUpGLa1KNCVSaPImQtp4oYppQ9qv7OCnlHP40mqm1WM/p5UUQ6dYdKYaPXMnpG6YpuWPaT3Gm
9oLfr7mUgPJq4n0jUuXYkqUHMJ/hVhcZ1MScM+2XFqRar87xKPSKk8tjTyDhASfItewLLT3NMnmD
hSzBVYrbsRU0bVPRZryGy+BBITjOorkLVCXOAGdQo4WXh42unL+rakN5RLQQab+4mGiwO5QDTWGl
bsacZONdAWkjXE2l/bvISfeRkbhw34Hih3BJ/Alem4vnksB5vozUPpFJHXskUNxPtq1Gh78XqNyc
p4B/QsmChRM2Wonflpi114ry8LMD8sI/5/7T56e/2HhGcBw7owzfpSIJWTgGEUM94qcksv1WXhi5
iil59y+oaMZA0qoY/exmC56ZQ3aAhztLGrU8Y0bpvFcOZ74MJt3L8pZmdqh9JLA8MFbWQwIBg5Vs
vKSgBbntjv1Bg30YJVpKnxG2KtW1rMbYsmvsy0rqMIMTMTKvXIfcKJD8x3GpflxFWSMvs1OOTXvY
hzteaE3Lguhpx3krZ0kMbBgdzpWDQhvqXlmsgIXwn2aeoOVXURgx7a733EJBfS0YE0qWdDQJkWqx
+MISxpe1RQxGMZ0DfyXMl38sXbsdWZmvR+4wyNDMQh7DKbrEmB/UU2FFpEfkVK8Wx1Mk0T/ix0x2
j+TT0KwFHiR8P5JWDP7IowyphZ+ATbIR8SjOwALFv6G90Z0rRR2KItqTE5k853m8dAAhjXIGjnMM
oIG6f1rYBW1yFmT+5XF0sW+pM2ukQz5dVWR/Z6zvSUVV+hnl0wxFp94jhrKTdAdeXg2wJN27Lrqg
EiQEHNg+26m6Gk5hRhgN4rpSttMZ/4aLUlrrD9d3U/clsQny9/89S77UN4p5MgZ8GOA4khd3s+bJ
eQxUM+SLTakABs9zVyOsk9wR4Atmi9W7GO4HNQWP/AJjrM7ZUaZfIjnwv5LFj9EpmyYeMEGIWcvL
3u+8tTf0iVUC4ZWNQ+qZGz75doxKZCegb4Cy1gqWK4F+bNJ5vEC5VORNbu7HZN9CIxxVMFxyDxWP
+xsDYfkKzDqMi3eCa2iNF3wDnvj3SKiCEFthGJdvizL2wisumvn5dA5U3/cdr4T/jZUags15jnBz
tjzBg9nsvK+q1bAlFoZffKxjtR0YzmlNic1bdfPLmHV2w2WePqyfkVfeki7GJV9MK+j6rs4cQmHn
n1YnsCBjHzRjj832oG47xcLoRgS/JNpbemldSBpUN3ZZ7W1x5IZZpEpqncxpKBgVRgBQR8QT2uN5
RYh0GBgOpH4RuUeYRU0FKytLdP2Q0pV6uF9+ZQ0+69IJz7ZR3X+hnXu7HeEnePhYEqrhXdXZqkwb
LqcFO8+mbFo/DqIj3DwF6N/gpaQ1lLCfeHNlt6oD6v2/htaPl9EXROUqE8bO3Ai/VybZoJZC/P4e
u2APzGuZZT+6jHZx1wa+MAe6+vZg6WSX4uVFonPI+qfsRiQbpv4+ocwyNdcI+R4X1Yrr94hMTjkj
iGHRiscz6+tuQvQZRCFjvRQ6CE2+MITaARNKd9HujMyLwJb91He8xTZ9AycT0hdXOCbvev7GMOSU
37PH1zrurxRZvhIe4mwyjKHZH51JATRYnFqs33TBUkPSNmjDAAm71fsc8Yx7rJfE4/fS+60n/efY
NFWX5fOgI4EJ/x7wp4M6rUFIjPHIUuzLEnRqhft5tgRAd5WjBLq7mKx/UlSc42LV8LA7nRjWy9nH
yBmqppxAydY6nueZzbvf8x3PtCzcqO6FCX8lqioyj9xYUhboIoMgt/oBSTU+pvDGJL/GHRVFA9/x
jbczxBlc5lr2vwXQpSA7e3pGBeSKVJ+R2clp4yPSQ4O2TEVGsgZ6qIllT2oNPho2VlTin7W+8YPE
mSwUgYMarjIkYFPFZ6AEgdznptgbt6K58Iphuo9Z9DlH3Z0D2dEDxsgmciFcyEWE/unl9VsPm88B
XhST934AwuMsFXH/aKpcBmVTX882gh/eD696Ac4AXtRGoApM6p6G+CvBhOgnHsMWTdCanYBrtoCr
TZk4qH+uJo3DI3tp7QkluDY5X/yWIj8Bb33PqboBHWmt54U2BpdClQA0V4cIiauufB/iOTINLU5i
8YuAi1Mj6SA2gY8yhcuAvPM1SxT0oTn13Vvzc8vT8Jrf8s0l5+jtTrnx/J/pTp0r8qOcSft0ox9w
dBhi1+8D7LcRtoKXiZ02kOBvWp5dL7IrZ4ah3BTjNhKb6kdKBafdD+Z3WYMAeF50FKjQ0517FHOe
uutyrErUO6Wd2/fnnCmEletYitn/GzTcNpFYR8veKxhJR8rpiE8qOporZglKepHwZyqCqxWGE6qw
X5y6wrhvtDJZ90uMdBy3v9STaTKSD30mfYTnz505LCi2Wq0vfKixkpTIa5YVIzTqAwNAFlgUSqAA
A1+VcK2anEIjCsn3O2M/+oL4aFL9SQ5Mw+mNesLti60GJPSYFh8eFyWLtFpMguGv+Mj139Nsonhd
d5noZera6WXJny5L8Um07nI7gC092yFTADXYKoRMKIyOo5W8dv5CaD9gT9NVjbCvq7KTMNDiTLk6
02RE9jtTLIJJLLztlOJQzJTCGzRsJp9+Pcp8kccX5PYlrlgY9w8dVUvcJLR99BhGznIv2y0dqQKq
ms2n9iXzPrDD+JeBI0ziN563HKZ5n51SM1skGdK/j6avexQhz7cdbCr7Weq/r3a4I74TrWGyrwfI
V93akWT5hPgbUJH/49dt/Crd4Ecox7EsaBdEsruEQJD645Df/iaADWqJQJUmDD8OmjFNfNVfVhYO
nVie1Ta4EI01CNPiXFSpUfWlljK3Db1nqV4IenbimXhO8ogfR4JiSg5v8zNISD9TcbWGC6ulD6JG
9UOVURKLFugt06uG88unlwd7aEtpBZVkHpct3awQJWOtLhEbu6U4y7aQ6yGVg+321dsjazLBNV5T
h14VsK5P0cF3SC3Zaa24UpdpqsbhYY02fwq2FUdUQR4LPb6rOV1tBTW85VvwnF2TRlaxr862Wtug
YxfVovUu5F3vBs0m8ogZ4DNUW3BfJy04ntjB7uYH6uzcem+tCMxZ54U/MkZjok5h1Fsa3shA50fV
pIOqQ6nuo5QZYaZFYpfdTJvrV4Jcen3LQiDQSuS7SLXLwp9M5Yo87Y6DLjNI8I+gkMo14kx69Q0b
dJ8k4J34V8rqQ4Q1OXTGj8RR9wceFezYtdgmf9Yr5YC5543QIJJbuTHw4ZeGylla69wvMAkkfOVF
ifebliP38OrOW374z+eab8abr9kzChB4fw2x1o9F56oD59E7iRvX3E/lkGypYi5w7L+bBN54JLcu
dH/h2UhYptG5VwpGmpAUwyHCHlCgkP842L9LDFW0PTqK8ku8VljhopUvYRYt5C3lBH0qi1DAtsyt
PJ1CvR5UQbF3nZvLZ+Wkt9hfvRELOgEfSsJ0dlBKdEfGcxpa0z9yGn5usf2ZssKBsy7FPnl8IFbt
lNTprir9hDCBsXf8CS/3qw2eAYs4sZCvbr/uwqwWdS5m1IGAO0lDSJxlHLpgg0r4y8tSztKp73Iq
ulD2StWgahJy7uQJKcM/rBHZBzlsyeoecMFNbE/VbPGlz+tt5QfuY0djlPXddlixuL3pR+2ae/AX
5Q/Ro0J5Sc6wR2ZMUBE2creYQEI3ZokRaG5cUa0SRlrs/kIXLrjYTNRTkoE+bNL4Tb4jUEDVr1Vn
o6Q6wTTm+alhafYSX+pV9ZgXSg8fWztiBmJUlt8pm+iLXmbkEtt7PYu8LgBBSDTATK9lYpw6pwZR
4ZZg8c9gxIeGUFcx4Z/KdSkWgZQ62HPviIKWBFvMlTNKCoKyZMvJnGhLHz3sz64/Wl25Jc3EUq11
o1JjxjlMGLXFGJYuaWlUHHV8LNtYRWof6S+H20KwX6iGd4Z5K7NtILHmiLbMdc2JyF4mg2fSxDGm
JSCTp7Dud3ladz7aZnzYk/DCGBPAblscx5kDGrwpo+Da9A5hH3jp0pUnWkdXnViC4juE6MXrPJLt
Uos0FNeYHzem3BQltH2pF0jNYxgBLPHymTNUwXKrMWHyrPhbf3TRr06RbMUdQXFLPGy0q2GDQLFJ
vMfACrx78CSO2IHtlLLzssUIA4mZLdAZiHQz1H0+CdqCmLtZ1btPUKiiNhfkKcOeuwEmsmZWCUqA
Zd74FlhJJT7qvqqN9ZPIFvxfLQHr8lnuC33zvjfEdnFs5SkWjzN/BR0yZQqOblAs8dk69sl1bcOV
FiiY4MHP3aDhvDgCCS72yrBLFP3vq1UoxsHlr1ISwFur6SKWW0Qvy6/9joYg5ByaewbxvHp6za84
MmzT0qlwl8D6BhAXN0EXYX5rE/yrRQ8XYiflX4TzJ6tSb7fYMMu3cDtSEM89PHCUy+EutziEWfAn
hwgnlIDl4YRSdK96o2GcG8+WIuL6KFCi8FmvTWbVErZXcR1xlN3cFumHMoUnxn3GgtXBNtP8Y2KT
A6nakzOqLeQ0WviRwN7MFs/oBXAgtsWLsJSv+UkqZp061wnxFuXJCpPcwcxxba+gSHAHAA4vEGlw
UJdpHQUHd5cl66tYrLaql/bzmA0DSElN/NrskTOfYjzWvmuaHueZ54M3Ly9seR2n1L3ojH7k1453
33ySIY4EZgKOcOZqTpqiZbftYVnkmmsZg9Xvo/RuZsBD+njMOujgb9Xvc0cpzFA1UFoujVYJtr9b
cTA4rG5r8ghVVZjLfgNefQ3kAegdFUo1u1lSOL5mZ34kq2NIFHbkEaK8wFMj0cWWHTvg9hlWrHx7
qsXg8pz46KVZJH1sSTj16ZYs4/4ZY1uph8ySh87cO06//NHfy0N7acocy1jyRYWIwrZCXA84H52t
R5kROdMZhFOaN3AqGswXzd8DJwHaADrVmh0DM7/9ozItZkVAS9PK8tDQcQCul2T4xkd2GI5VgKVe
8mwkeuwiG2ygWMKsTEovIlZOm5a6rP/MGGdHF+GHjN9ekzxnHHIJCKteEeYKq5/qinxlPpb/Qc6s
ClygDi0Ou7d7oYdz6L2LQtyKHTQgVom9uoqdatwaxX4KFTaZiQP+QbGdj1+LQCoSQrYdU1HrU1Md
04a9EkxAbzM++kgvkIAQgE32edm3GMteNDL1EmZjbxcT5Dhk8q36hFYgSgY+5z0S7tyUC1pdz4Ao
VvnnBsEDYRKDpl46Qf/ltzCRvvDnvpf1gyKylAte4t7urdOwgYwu9sCGxKm9jTEL4vyw87k5t9k5
BvPUfKFgCAynXIpusTKoRQbv0i5Duz8aFoz/yLlVLlseJTwzNLwRrDvJKsfxLFFHixEnokZsUGM6
mLFqOFVuxDJhARicRiK1P7jxPRBDSY7PhVe9pmzx4UU+plwRay8dF4ZxUsLtHWuKov3DzGJrjPEO
iudHhZrGHVmMW2P2xl/xIG/+31UGhIfRaLjryJ9i0veyt4nzizL0Jef9DN04Noqf4No48tnWhmh/
ahpSpBt/frE1VUODEyB3QJSA6e9iZvVMjeXaupaF4+tA7jPrCDyteChgJAY2OGqD6/5wlc2oiMlk
2KPh3SpeEuK6VNdEPU0M9aH7MDysn8ZSl10MrXCaZuGvDoVmHQ7EZb5KqPk/iVMEovYIXVDPmpLT
p0d0YST6d8O05KAh48I3Pjb5m7fZeikm2DJrKjjrfg/8BlpGz/tQ8dbPFKguRn0UTSu1aPtabWMo
D+ZmRc7+Kes2rQTBJ5XqrnnrNBVZDWxf0r+pp+UXnhanWhMS5LuqB73K7dTmc39dlP49xc0rOi3a
aK3UIdyJKKqJOhEXccr+0/Kh+CvVnXrNX09ohRrnMR7m3uV3sLVEPGPDpLIVjvuCBk6qt4ckD0Nk
R4u3PdsDYlk/BhndDS1COLnx4eAyX09p0JnDE0kIhd6XBpRXIg5/bBM7miTy/x2OPmdchPiZihGW
/dSGyAMicDnp6xNhxlGoEhmezmuvjPrGGo3Q0PM3FH9ayDaRcoWGqsITlGg+w3GypomvWqNRWLDV
3q/ZMVqQr7xiFfX5ZRI67XO7zHmo8zBipAcvmwgq0wGQRabhsJ7cfq8vtJe1yQ4gdPt2tB90j3yv
gcIpz1w7xfPXjIf9FuRlHh+oJs6TERZZ0Wb3/81HMW+h26sG7gP/gDSRuD8pNucP6BY60+cuqaoF
DJnwf670lcWxIcEXI78/Yvwu3hFGUA67/BJ+9P98vKRL9N+Vr+/43PZvvx9Ve5AtbKrXEu3hma0q
c/TzTnvAFbWWDyJfufmVtYObaVBQ2zktHkj5qP4Wz2Ih9tje+U8PMZvT23tlmNYGfEiN7q2dJBY6
gCVGchvPC1WThnUYr1hvzFoP8KNhGMQ/N0j1YzSrmVi1BksidYmFp4GHDEkzUhO6m0nqjyk4By/w
5VjcevbAsybIiywiTkmdUSi1wXLywKxQiUaXOyyrmugSQ77tdFM7+xqhzqWkmQhYxIgNfyYeBfeC
SEtfbK1SV2dyHjP4Z9wj0+OBo7EvkucO0mlE8TM2SAneHA7ua6z3GNYTQgD5FeLYdooCsxyp6VqQ
KEJvtKtSM15LnPebfy166Mj54NFuMdcPUG0xc6lxr4fq5MGgf5V4nLcz9uaaWYdfdoHUtbBb20Ev
TBRGzBrsM2zK+vGuC8n+RGfpwrZTHp1+iFDYIUMTHLjecf5f3sUFtIykRF4nRxoEi+/MCzCHBqr4
X51qxOLysWOu/h4VWlWi4Ay+dkHrMP9Ag5xq1GwREWY4fDzoZ08FSz2p22VBwPHVe/yqjCEYPm7g
4ilIhb+XL0fXV4hvN1ijrKhaKvyJ9ucwd6ibdn0Ndqpvng2Bf/fbYltgQujkNArTF5sJhXxnhnix
EFaI/O1qOCA0EOEjcUQGcyjsBiTfJd5Ye9J1nSi8CoXW9Ppn2cHzoZd4UpCw7g9MWmUA4YaD1Qkv
sHbYSfQYEUtxlr8F2FpC2mCH8zHTduN5POD6KDPOrromFrehHsomiQYEdUNZUg0rAYaz2FcNJHY3
4+fSihfhdzWqqEzv4+EdZCS5l0CJtANIAnry36gmVawRXPCYn416f62ky7pjGltevAADK/Pu9qtK
mdVz1ktBbkTjBbMwF3nsCr8u4E+GMg4yJ5U9ONihvWLx7Blj5OYHSzuoXm3HV6y+MVe1ldVf99km
0z5CRrFFxia30SbeCPJ4B3moNnMTJXvuln7DQQyg2f+hHECP06ykzBfNqDvZ4eIVGlxAgtR/Z4KB
3ARIn0YJoK0Xtv+gghMbyprnr0hI+m3izU1MFGBr0PBV9Uwol9P1rAyoNsxMWCj+9hcjEj3ZmRUg
aLxYKY8L6Lms/fB0VpxpX3UgTPuN1Fa4+IGLwpOi8AQx6SYTS0emU2zi/8tZ8n9AmxAVgAr0RBKU
YhkS3Sp9zeHqcOumlCqSujOgg2Em7JxWGzIv+VjEGUVhkBV1YW9ivP9X8fJPhbB4wtlUDTvLfSGG
ktiSHrSheXoqCmZPVPiL9gWb0RCq2Ppy5npi4Md+TC7C6oT2eJjPe6DTngaLUosfFIRF5WGX9lcf
Z8l7MjgDr0hKYcFYRpAoZZGHjqFqWVGqYGqbrhSoKZdYSPla+u41ncOylchghL2VCVmy7LmPMWn1
ikVuqrDKtTqgj6TJxlyrEQAvWOHOUm/2XCTox+WdEvnkM1cspaqp7mkwSt4hMlCuJoa4AkwQcAiC
HM7chnS5DpZlqVAPLa6BVwrnxeADnPmZ7VVtnKNhC3I07z4PywqTK3rjTceCFflckFsIkfvmqJK9
qxwx76+C371aQ5KUgLvdqnef7e6/Hc5RRN7CMJrOSxgxdLiAUtwXqV5BFZrUZ6n92CTCHKea4Tfa
/OJKv2tFVYSsLSlrclL9OmWqEDl+njPamsXgU25olzVQhz7DYFPRoRv3uwr3dwlOW4DV6TSTyz7j
AkB+De3ZQkm/1hhk3J/VO48/73GbJQbBKoGngYqS4hVeiH/MbFR8V6HWDLkb52Hu/QYdhcTWbkbC
ONu4fewBI1bfuDOTLz6dtONrI7AViTRx84nrZWMsbainSxDKCv2BFwGkTbYx9UeBvN3OTYfOX828
SdbhHTqCqV3Dq5/5FBBptgTji06E9pDLuLmiLFAIjnUDXfYDhocvpUlMHrIyRPKK248r+HxUnFLy
mJHam5D2Z5TyNWNiNW4gq4GaW+xdGs6/nNih2qaE/aDF9KU2Wxw03yMKJCY9N4dh0tunghBTxQop
+pG5ClhytzVadZR3wlSE8pyAZTLblZOo9mKzk8IbmQl4/j+KwmqoPywSiomIuv1W8jDzWdj/jIY+
hWvj3tvjXQOBBGTKE0ShYap65Qt/kxw7SsseI/Zn8FSU2WleHo2B3QQ38R6N1ec+AKmibJWSSM7T
mg+pm+KDyxDrU5U+fXUN9yQhYtZ8JBkAdIYr3VqEyLiFY/w42MATPhG+umytJNVNH9CmV25lEbXY
aJpuet68/nMv877zRslDolUKby28iDOvtoVkiJqv0PNqeHHPKBLgu0810WA0URkyYgV2TCNRE6Kn
wUxYpo4Tv2OBA+/7eqgqwYSKMocuHswhTIdMKIkPDv7rDvanXP0NPLs1KDZiHsTNtexSfoUpE11r
eSZT25vo7UisMoNwJSbOxS6RwL7g0s4sUQtBM6Z5z/cN94pFBkP7r8fAbbcQ7ryKRSaFyYi86vrj
vmbtH9XI5UC6fjQvZFAH2QKYXscq5Yipr0tPzCLGnsse4YALw2tM2iLj7qhd7SN20jtnu9J0H8YB
FHVxoGAVNkNbq7qbJ/IJkKuGkmmaOqemaC1oerCyf3/IjDTPnHCQPZ8lswgllmYR7MGsmmpAHSU5
wHijZeFkoFBOz+qZLjNFKj+TxW4xNCZxSliiGl5bWYXkbUwdSKLGWnUhCUDF/RhfD04sSTL49Zim
ID9/sQ18lCBtt74PS7UvxBZ5fAibNvL1SHgJ9n42Bnq1vPknkICODUgRleRfdY/jKM5BaR2TlTbv
mEBNCevteGn471/H5CXHrDI9kMKs0knGNMtWMXC2mlLy+i8LLHLgY43KN3/5lhABXJwSFTNuWbgs
kt+8fXIEklgOAb1SknK6fEqf2GUJHpucVpMQ0JP9CJq2/eAnnvRfV16N7krJ93Vpj6p9UuCe9b6b
VBEor2//pQXUgmNy+ZWB98ZstEplSM/qXttFi4L4o+Dt1iyxzSZKMoWqjjcJUjP7qaklE7XQV08c
u0YrLvnWV0kXMnQAA2VW2PjiJ3Em4DLtyyPRZr+ahw+glXAtvmvGDPvTmckXxnGCf73k9RyIJuMR
6FDfYPFGRSA6VQD4LBgFCmSwDSRxSTFXRjLwSvKFU0ljOCB3v9Z6mTPyeJjFyHJX6Hi6+7/XrSOz
4WdWffKRQ//BVd/NvdEH02rH84buhNzAr52YSa74dLWJNqoli1hgDjrqXWQBspBQZ39OyO3LYTzL
brXF8Lv6gLNFRZHQm51waYO8+8gyEj7+tsS4Jd6BrSBzepD7I2G28L+tYduA+DE4c48E1IFEzo7E
BjlYlv991RG09jLZiklYMF193007bCbhmd9HTdKc7MBa10x4vt5kZpL/zBC7w1QCN+zdCbLKtXwn
Z6sG0Ak8iGsnteKa3wSr5+ECpAD819DlmgVRLthKoZSEfuRi446Xdwh/yfmrj4+0UMMIXGCGXHj4
6+Fun24kPT5NGR48fc3hoY/vnBhaQSSHr5UM6c3TkQVX0v8l2m4oVICMihSIW+Dfd59jLATq70Y6
jrkZAqLW16drOUhZeP1lUMIphj5B6CxtEl+sMmRmYVOpReuK9le8qrHH2gWHQA1MMix+wi7m1zD8
4j1LWJ8AdXRP4gKG5cgoQ5n0mLPkZemEedW0XLZaLhgCkSL65wGGPJ+Q+i65UGEUaNJOqCJsU7gm
aAV5qZ3duTnzXS7N2SzU2MjiNNyzDkuGpBiEI5rZIstyaoKrsPc/v0jc8A8OJ6tZD4elWXMsZtYS
LS2vwlhiV0F706Phjl6zm6ZizwyVIajfCCXnTiURMp0WqHLwonY3Lu1SXptYeFPM7U0T5GqkRfyL
64xRo6DI3+ilZSrb58HmZkrTcx7jsSbeGU4qMbzsWa7hD+M5veKasbuYZ2RNEONZeR/Z020fu0xa
F0Al1vEdZ1UAnIrkjhjyCdgxFn2V4p9Q74mEO24n40rYLEBpxh5H9EWkLSMNG5blxFA1XuJo+lMT
7TO0Estl79NmTyXr4S3+7DrJFIGl5cr12dWPIDYXQKB4v4OkZ5JFvDQVXGZhooaB+BIiUYAHw0Xb
21hhCBGsWH8iCFN7vkmTorfwdOAB1FK2Z1wVSEMSURpxBWmnNIpvgbg4N3KSbf3wtvWWmgN4EPjt
rTtVO5GtN3A2OVu2tEOw7oO4jtwr7sFDLshuEIHm7nW0jJKYS7anzsG/1cJlyhd+p0by8+SCg9eY
OXyzcahmUbJaCB003ikkZTNEIq8d/GZws/sdlogxWvAnznWD8iDXAzPVFabspo3Hw5IMuGh+BFLC
o/d9BEWhJ31OUsKBrOdxVNtlQu4nFjZXHFtZ6nDek1jblMrxehUbof79Va4l5jbxbYPCzhvoUDiq
MEPbUaAkC6Bxnm0zashtUh1zGx0xjJb4Y2+C9szjy1IEBgug2tDQW1b1mCw6AUjhLiymqhOnu+Be
064FXNeeWG7PA+ilqRp0jvckmaV892qJMVRJqk0scckHyh63VOgQI6tbVNxVSYS13791PCB+elEY
uSmjo5bk6zPohHSFPP4BfKbNqnRvqnprV2ETavdUJM/TcSma8G+8VHdJ0qoYlS74gzIJs0TE8/y9
FPl62xdqKFSJeAGh6Rqzc7iEwW+5aDlk895SE+YiYMMizblxH1bVH/LfyMWG+XlASY9XAB9WxKT/
wJHRRNaPmSpDAP8NpHMINbenFhxWUW0OptDLGEDBZM7XPlG+9+mcFBDg3J0kWWzqxIbUtCCpVfWU
aSU+m3HAVYgiX8BqYC9sHkYLA3EE8mwtB7nvdpgfw+sNmoTTvdmJgOEUK0IbF1QNd82nlEpINWGb
mLrPBpXVfXpzTiEy9ruUOzpx1dQV763rg6j1cNJNU+QPHbOwTxQCxIu6xC1D73g+62EukjKklNUg
41lo3Aramwdm7wbiqOg8hQA3k/RGLBmaCxh77G0KWEggDCJvMTcj6G2qQHYFzpySsBbivvQzaKks
HFkQYfR2d725ZG9reSOEla2kLoYK8GC+t6CtnFIN0HIANYj4T6CskrPMR0YNOujH95MDGhRdo5o3
SHoV41GB0s59t35ukmq6H0Q7nA1pK3v9ZvEbwZ0IauexS8Lsk6nXBhhBaPIlvhwNaGhhwag7mLZY
0RKHxN3Ku6l9YvvT0Qwhc972Qu8MkH2yH6TGpD3S+rg1Bba5semnhwR+8cCwhLAuCBcBq4DJoaAP
c8yYykCm2OpqeadXkilVOr7vj0kBC66VR77XeiVlPwgeq/N91sFZtZ+uZip+ixZH3EdrzD/ydtii
WT1qC2xgbOFCPKZAXD+eb2nB8M+WKWvcwUROKWQYUaie+HD4w4T0poNopB0YBqkvk9tduZm9FkxM
xPQls9oWN3y4EKnnKiV3LzvAVtY1OTtSqmrtO9j4PcaMyVZOLpiWqAOwBYDXPDLUXbbfbaCsrPi1
Ua/eJfuBiUgvfvw5p5Zm6w1YpXeyG2x7KUjO1M2omnmlvp3M5u7sHhkOImueGMPsgZAhGxOGCRRs
Zu9UnS3rsj0OW+u5jiMHR0gHvWMWVjcftJH57jzqDDaBhZg4EMqzoBr2U2dhhucwpBFnucfBw0rC
nSqnk33zCo3jNpGy3j7SFn7sSlYzNi4v83xx8JkMOIs9O7jJRNXjY8S6IGC9+LgXhnDu7liX/qce
PSM5hG8W7MoZEphATUZij4NuR7KxRHR9LlreBLItWyBFzJGAraXbdgimJ1BfwgO3O8sgZUTQMPLJ
eytqMQPEz6Khc8mhZYnn+ULBIzC7Oam/wUHH4C2JkUaZrYhGwgiMZ9pzckw1a2nXSK04r3dr+td0
lgkkzrht2kN5GU7imGN2WDnn0cPWZHqH+9K9YkT0MjleJxGJm/M9zo0eGj79FxuFQKm4IR2jfmAW
s1BSGuuUesHnj6/xj8IBDyIpXvmXXc45Qnt+WDMeNHYOHqnbHIiAsPFtU5PXvsVMhQrN5DKVdBKL
QcaX/eIILAAzm1l6Svx4GRZGfX2n6NxnCyI/3QrXjuyqY5YTx5wLWix5xicWO+Hmoj2aYRi1L1ly
JqZlzRwSN787Cl1kPBe6GYubCFgUXq+ARNcfYORqyDlGpHoEBkfuxJNJA8a9gv3G70qi7rvHb5CE
EYxSlH7Oo7z47qtyg2N4CVhgx1uRd8l+ZbuIbR++V2tm750Nxk2utHTWBo1ywoN7qeJTSU1+RykN
CVszgiS0S92Sds7rW65juzkUZseCto8O5y0AHXpIGPTFcAQXhagGsJsm+EysynnJ7HZX6aG87bvW
QbFCMoS+DZA4abjlz/XNuRQDtdGXcVJ6ji/6mav3L76ZqN2HC4pwgx0PyzM0i241i1ksGU3Nt66e
GZeRseNeGVMpqrd3+Dy8K7WN/rzxlUBwzyt1SknWGcEM82zKDzJkjzcZkv7MKnEe+6o5gs5BB6Cr
7Bj5VdesWpudMUIilEgsnfbAdj3w2h08dDhR8B7q4W6ZVQG3HcEsFSg5Mnyr0DVv/FBOwBmwTwBz
2wbLvMwMWeE95vwUqR1VomjZtVAj6Y7dHGpC2lmRoQEqxCon0+ltLexwj9mBT78QW0cj+Nz53guM
D+AUaaolUH/rh2Xe2ZHddVu0HWjaL/MyrCqEZDb3CSj/kjXTtbfqKMGIB3kRbenX0OBJ9X6TJOlC
sOmQPxqEBfCNaYCf7EV4qdS+U/q6FMrYs1kX9Okv9xVL02B0Uj/a6K1iL2fOEQ9+VZMY33ECMpJv
9areuUCBNRPKzc6CvLcvfUCB2PQv/8dV/8c19bfbkj+7+lngqrQkvsepWgwPrVA4SrdD49LsAtte
64sTb0CY+oBkG/qYREMrWE79zYfDuuZOQ0pgjvVQgZYjBkVB8GJf7vGMRwJi/Gx5xlAhb9OG0paX
9XeZS6mnB4Uy1ODh0sMYqlBSWGqw1wuN2AzHfx1w/jomif5ete33z27HrJ9k6CUIuMmlKRkHyksS
j3MaYVFFB7MYOW/HRy0TBp13jcRsHNn5UZUmyqUIA98RuIMcf2FAJkldqoVygyxr88Q530Ieb3nh
QGIwumpRfFKahVbSRuOnhAWB+82kdszlVbnESvMmUWfKISlTQVz6gNFGLQIzXkFFh1e/k14p76mV
NArqzLF0JWJ4l6p91TgDixZXOGGndboly9cY60Cdv1dZSfeKPnTSXv8VupuNTXIV+UG25Q88j+Ik
u+TDpqb8BnClvCSIU3AMTQP1EMGOqsMo1wLG48lxqMXqK3aZt9ScMMCDgMWM8+SEyRipfVQFveuu
OowTl+9jC7AzfkBaZdB5+73WJpfoUle1YRXj18NjR1bSB4J0krfui0pu1KYwAgWFMpNYbeRO4wUj
l8WR/aWCN+NCUJGCjmKfRG5GVoqKjsHh4Lt1Ydmfn+DaKrDa14FiWVj8ODtJFdNKGTqWrzpGnbJ/
5aNhdQXLy0dWneEDOW3j7lu2h/xxWrL8Nmh7tP3jyKt9a4csK9dDOn37Lwgz3GQQjE4I4TGGr/TV
YH1ZwTxCwxgklRME6DF8ALDkA0zbBZUBhLOJRdJ/kFzllANcMQUNprBpMjlwqS2ZYFYuxwEGjwc6
K7poOdR6krmoprQKyMw3aSzci5uo3pgy4yM26cLqOqCQcApS2Lu6u6tiUkgm2OWE3iu4fihzbIqv
kcW1GJQoT70WULyq6vbg3MpZIufv3jReDjugjC8VUA2/eHy13blHJwu+z8GvAmzoFHXg3TU1s6cG
BQfEj8ytsXYGVbVodNj3Ou3dsETRf4BD0GI2F7vLJa1AXJse2UX+Vd18ovVqfXujN4+loP4y4mAv
NxdMovb7xsXdCHdyBo7HCAwOmgvFjRJpWA9l/u1DFXAH31a4hD7pI2708wwKvz4N9hTBdP00bU00
D3Qgrs3Azr5g2uKIluJXqCM2BAwRSORrMknJQBzajn4/WIuYeBWRs/BUu8wd6wDXa41x2vCPC6ye
u1Y15UKcXoC1MCSEVAKp01s6jqSTNVWP+gq3eynSyTuXw0UVK1wIMhzfQZBlfaSrM9MO2Cgxa77t
lZqkRWS4YuMNkN2KcvvtzeRW9ZzP0yoF5O9w/WZv2lqO14xMdjUH7ohA7pBA8FuwiP1bn7Fz98L+
baeiTAwNQHKDyGWJFQArQcWvSf1zv6OlNupJG9d1g5YbztMqqB8sU3HCRpM59rhXese8gtY916bz
Q5AJ/0Xlw5Uu/l2F0biQx1cj1JyXz/D5kYIGzM8vU9K6GTG9L4tCDkiJFBYFEcdToPLW52FmolEI
QbbntdX6i0VQdyu4J12F4dhbDwaudZ/7T8SDJHSynpEkXhgFFHbSKDri3sZPvctkHMi7V6EzNbp9
56JToyvXeHZAuScT2XZD6P/VTJIksG+JZTfsN3tLZ+Xz4KWrnUPv8bD7boGWZaU5E8ox9W8QrCSv
Sv7q+K+u/ee911C33BNsW4LoHiSFw5wbvsLOdIkODJhQuJ1qvOsUc1MsPktjbMHo3J6uiYMs2/mv
LaBNCljCVw6/3Jd9oYDC5BN9LuhUgzpTSQgjcTghqQXMA/eChL+GpMv37fBcZrCZb/lLPB5FTHuL
00z3le+VitsjnKNHedc4UqK0Zo9hRbG7raHwTmNIvV5x4fpqS/KhEPMorNnMlLBusVJP52trZ9xy
BqGah6WQcOtC8ysz9abb7eK3h7VEeY0Yqw/Xc5TT3Okkm2JF6k5MNzEItVvfnUTFOkPsd9gXg0NK
Em0xpLihcVcX6ALkB3s39IM8HZ/fw2O5sWBroX2mhYOTuwN5TMgqUAkF7aV/CMg+wpZN8Ly2bk8T
3QiM47brmoEAX+5ycSj1hH4qNv7+IfQZXgN0K/7OWSfSKTo1qxiIv6famGRcjwxxQlq0jjskVQae
YLTFI6/a8BnpVq1eH2hUVBb8FHS/wjhb6gtd9R33BeZVN5DGY4cqBn/Hrqg0ygXbGE9qU4kL29h+
RJgiWbgkYsnulIp3mtW0dCHyCDK48V6PM2A6me9KU6I1ucKFwP4fx0NNs664RHao6h9YrA5Y82Bn
NfENCTc6I3MN4QEh6v9IGCUaT5dXD1wUqbp0y1J8eXAXS5IrnLJ8pKpJQsQK33Q7STCWWJ1tuDyT
RlOYK2OYDGEKSqhYZSzGe2ZfAieK13pM3N3uylKilAvefXIAOoEIiarvA4Fvy8lUvZZJ5RN/DNmE
dLfRFC3xTu+OaPPz+n4IozAcjoF50HA9UAgiIg7M19EWlFwD+XQ4Nm1VX3D/jDSgrBh+4Tqozxk2
s9HJNm0rkJ/Gff4guTiCXpiQu2flFmlnhAGRg0l3RAWa14/3hB9W2JPA43sPPiGZsd3q7XZPoKyx
9aLE7yOfgGOy/J1QFqwT2G1S2DizwFqUI40bJIxsixxXeiMw0mEtrkWxoYJEwt+xJij8xo84j0oZ
KeP/23GCFr6QQ799dMg+eYkd03JGvyPflrVw4E11nUkUZkOijMBy+csGfR2KkmL4hIVL12zccUqH
1lJ6Agh+XxUGDVaFFQ8SVxIw62dfL+qShrSDp2ZE6mmQhAPK9EfB6K23VcwqmfGgw/Q4WVtrwzo0
BrHG8ILdEAE7xZYl0K9XYwppBZCtyDR47OcKhwhMAoO0/Y90Gl7GPluo9w5WLQElYuRMsl0Yi8hq
xd02w1yS/aDHeZ9N7hIXxTxRW/Slz1X6cl/73aj+bOPmtmlJshYdm9TuJTDgf6To79Qbx318lqCi
hzCUETiHa2lq3PFUC+grxFqlb+cNLTYcq5dxaEv+vdbsQ0w2wNruYNg+IZkxalBtB8Ku1tyVgVOP
3pIGNx4Nqj6CWOEoITXKfvjLTSQoaKnNXgLeC2aex3v1VZDNYkw84XezHlTKKFPCQm/W4oV5qa2X
XJMmGUdwXwMfKFcKlUEQM4LX0Uo1geKMu7RhE8ZHXiR9m/FL46p92xWGoLyBo0SAMAsRtBJFplBt
4dDFTAShNxxSuUxt6XL+qnhefTSV/0Hk9hCzCNBnmieW457nm0uG8HjoFMO1qprjczNrv4Y9Bk1Z
1yrRsPzPwdAa94pl10Je0TrVBOOfTPS7bc+eqHNhdozxEkkATz89SezNfbc6FPaOBm4XPYmkDsX/
e+GiuoOysZ//llGoBHZFp1/E5rtnck5br3slOFaFwzDM/5sE7FpXmbUos3i7Qi1wmx76yBlq0Lc9
dMpUL442uJFCg/wBNrmN/PgatjE3CA7UQT0T+/F9cKDEnnIh2F28S5I9Bwrj2eU6tLt6V57/2yYQ
3A+X0sKDA+xCUKU4gQmR3da7VMRa1LEbUb5mySS5+8PIKxq2F1QybWDkuRFkzUqCZI8xvS4pNHuH
W9XCD0uRrnHMnrQ7LnTLOc36z5W17j5tOQEWLts7eTK5w/0YhUr6DQ734rPVGkK/dPoFUx3KyLbH
bb2wIZu31ZhbT0S9Va8kctxCnHKvffS6Ikf0hKUjxD07OLAS98OWDmY0Lx7smTtlX+hcfaq5qk+t
EzrUn/eAgk8sqLq3Ed8dBhiyIBpSyxGHus8QOdpdoqQDf+dAb13ulTfclUfUu2ojqW5qemXQc1ao
a+Wmgbv4/LYFv4fU0L/21q01WdqrCXj0eucG/flKUM0NFsYrdAEwdFrjHYzEYHKoberHXoksWj0O
4V0eHuxIqIVJqk7DyyQx2j1mF+mtcV/PZxwHsfqPbX3zHgqaxHrREAp9wvzvQDQUy7cUe7mTl+rE
aMWHwGyvbx2uVyRAKnV3ceFlJJuXTZ9AWiGXKLTNT9bbjvlom/INU6QFf//wldI3rqzcLzvWjeQ5
7sm4u+3JPTo0iAsgRw5s8AdU5fn+3ywbIw4tD+28JkLC9+ZZUVZ+2oDsU348z/fcubEp7vAHFPTb
2AYaq4ygI+YJa78T9WIDaIXcoZ2c5Ni++Y5fEE7oxASONwR5aUGYw0TVHe5DKskLTOjY3O7X6TwU
GdeWxQquP5v03pBOyzVMSHGDuzgGq6rrTS6F0GAHg28Q816bsFv7vEA1q+ciU6hOZGSki3mgVoDo
5WJxjRELa14dV8UDlPmegR52wJL1bH6n6dh4UdxzOylw2Njga6w9I5G9qvYIDErNXMhxmKb9kmpu
fKLNq9CVXZazsVhitIrI8IjvZIRy2WBz7pAUL/NrQNgxFbBUuF6edcoUpimN8fBmL5G1Mw2J1v/1
WyDF8KuGVDDSO0iWBwMLSJFPfwDTNmyjGV0N9V+u/vitFV/4conD6Qm2mfu2/b7elXsqua+a5rlZ
Mec5tuc+F6P06i9FFohJwWS1pHdnpnsHCmqJYuhX3ReYuS5YdI7iHsooAaLRyNf99IQpbVG/SL70
xSWJBK4clmrkrRSQWK8uMmKw86/vtnip9zJmybbP0RKzIT21G5VettYLZe6UyGj0pQR/5zyM+1Gt
iCcZyIKJGBhxC7zikDgNoA8aPReXrn0z4GImsURg8Li5g4Dyz/mGV5Qvr8tU7q1EZUy/+p7boRgZ
Z/YWkk3Y1ITGYOp07rpF5lEar9rwfbjJThJ9VpEKhUMBexhOia858slH1XsrqzdU34i9RnVMRrgU
AlHpQkGv6WqYQHif6pg2e/lGG4W+w5ao4a6Mn1zwebxZ6j1ZeQYMNhUwCKmwy8406JbzHRv7JF9v
gCQ9w0ju0vrOmxVG4Zn8eDt3VmuiSQTU4CjGN6enFAvtBVAluXhlPRGdg7rypzXVgFJ7nyrghC4b
PmoWxFYlQpR4Ov1+xUssBWVfNIRwohl7BBLENcPqENGG4hYGH9rLupRcIsLAxElpjtXFMlaMP1hf
taCWP5PUPHrO6Fer9yhXJMIs6ar1le7C9MHhNkPe0PRpU7rCYJ0OV2u8ZUJNlSsLNZZwZvlTB10f
W1mBDoDja/cGGARWkxVSUWetwB7E83f8fHEBeb43nyQB6vONvOwjMv83ZWfe1U+uAHi0Z0J/mjE8
6WCdFmVudbcPDG0OTzZ1xsz/Hx0eHtmGmjV7ezLK46Ugvj9YDhAthujOddQsmsocnNG6tadeVW4A
/28SIZDPZco+MML7e8XGEUIRMdOCJMZ2EQWt+a9/8l8JGGWwwerjViqci8/8YG6gUAUqmGR1QMya
yphzwJR7g7c2n6PBOuseLcQTpFL5XU1BmAK3syPLYJ5JFFRoBlrYM3cckWYm+AQ4bTOyAH8TQV+P
kOc4cSDYiVw2Pxge7cbxpr7VdO2LhhUq8lVuqn2FG5nwp3c4z3AfBtffyArNQwFrfUYCeTxgoE4h
kdGgAuQtLd97NNL+myu6w9L5/UITiCuNfBKhojS0Aqn0wlKPa+6gos7akbvNXEffC+RyomDCmB7j
mjggEzUJEusgpTjUKsNLmf8od5JmLNLMyl/0iF2+TKerfCVv8iLLO5p6GV3+4/65zXFU/IsqjKlt
dUXsFj8H+M+YraykA4StsRrMIXV5dspohDJNuX6LXWZT8tX0PkITctUK6wJtIJz7sDymOFZ2Xd42
FUJW09SOzrSJAJj19VHqeXoD05mvxyOqPizpi9hzu2vxukvT/ufUI+UHBPcUg5TXW5kkGEHz5rWm
SVxrY/HVHymWA9TB4tUcV97jHSLFRDn1oDQiRAxTzubkAvPJuWiGsv/byKqxOIW2NY4DQ9loMG7f
9YkeOVPVyJ7rM/Orc4J2citv8j1GOis/xCK5gHggbQJwkuqzLidkUIr84iCU2btM1qLlrjcC7bNO
4xw/YvreiQKHjBwd+l5F5iYgC+M+gnQw8H2FLXlifHxpMGua8jGpD/FycN77j/9LvkjpXuDhh3F2
fLBu5lITJd39kGq6uwU9tqh5goLSRy37Bwj2NcmA5g2/19eDe1FjcpCdPHzH3gEugdqYaPl+u/5q
GmCTGZCddeUarSGLcuNA+KuABCjx1SqilrTG3OmLdNXkQkqPSJHNeieDj1HbTYm2CkXolCsk9zee
dvzXwHHZ9dEy+PkB661G7ACr0ifxgfxituMr1xnGKd0oecb/N8GHCH8V6zoAdEyXNND+fR7V2ypy
y7EFrxybpEp2j5oC8PcHX78xePN+XyYkE3ywo6yOVcB/6BF2FN2FK0mRgL8zsQCnAkr1WNSEd2iP
unNVVe24wxi76qBEPnoz7S1XfbOxsCgco3HFMuYib9BfaHs5uSafZWxxFzeLqLhJyw7twWCs7zRt
xSP+IaDF15SHu7Qaa76fwih8vhPnOIKiPjMKhZUtDmX/372JqGky8OyR44RWrJK8es/ijAo9mriO
4hXnQYtBNWt5g0avKg0BfhRFTbEB2k3+59muYA7xwkRCaiSrKfEC92VO2CsA//zT3IHrmh6CQBq4
TdYFPy+LO6srMKCIQrOhKvrb/97ol2RAtfeL22QXQe1zl1giO65yHQejKnpmZ14IBz8UqotrWMnl
ajqPgB6NfSj1OplZKokxfuOGqraHYuRmozNAekXr/UEpvjWrlqDBLzAhVfsbMuHSkt4tP/M0wEl7
Q66jwcxbwpeCjChbFD5faFcOzUlY5gTTDtRIx1HVTw55TvU6jKGAJo6mbJQxMSz4ECkiwANqxxsL
5dzCz9w45UWpnw2CuM0bv+7zUcA0T7n/EhUDeQ58QslxUzxAbJxca4Cz8Lt2pQx92zy1Sg+ZCwfo
rXYggOcAwNJs9BR93MAJQroI8EbR0jXAsaxBUp/9Gvd7lQKgp4VA6JTPz9lJM7CqH3i4bQvqMoxd
whTPRYKCumNxLBCjcGiiygMsjgJ3rwu56jMkjdULOAOXdIZEJk+KHsKrDGzBLAnzEWFqmt3TmGs/
neEJQKVHqKA2xI4tBF1E19cC/bw4FyF65TqeQV2Wv0nZ7KsJpADtasuYIsFGKj7srAu1vIN9Tsoo
HYo1/bzqkiRexnpc8yda6soIUMU0Ews1Xfk+uBM0F9xUmSJH7q7cqegkuWwCIYK2GWnH6taWerGi
puH2hA2SdaEoLIvAxWLBt6NzON6hkQYjeYORTRSUTcHA2AcDD0pHQ8LOmjA2+tbNwcvYRqe2kaNS
UyCclpuUsSMaPFYTxYc2D3mei+IerrGWVeiye42oO7VGdkaLPxhPzBue+p3pQ8uQV8vp7Ay/01v/
G9wrLlxvAiizEmEkrDjTwjLNTPTBj70J/1ve3VSAiCsNCNPsZcHogCHJ9K1ilsShm9qjrK4L+2ii
5D/4HI2IIDmEtMGJC30SbQ9f0IpnvpdRFwvOzpp/f4YtxDTtqXuXohOb4wxGz7hBicfmGOZJmIm1
WcmKznpqHTPMYPJzB4/u4aKSDBDzE5/GIaFEuNb5Muol+QiQeK2niKL+vc+W1H3MmnJ5mAupaAhe
wXu1Sguz6fMUuxFF5yc6OaMiDm2bMBsBxwNUQyMRQxljpUx45NvD5242F8hv/zoSYv+iNPiR0Our
9n1NMIUmITcRZSgT1PBL/MolSaMMvIXAtRH4zGPwedyeSTo4bH1q6WZx4DkOE/7nD0LiGmLydLY7
C21L1ghlGF59a1lr0sbCXC1esIasZ+60MZHVtmzVZ86xLLj7/BX5yiIqg1e6xTEQ+RUoOYwCX08i
/WwGx427ZeYb9ORhXl4Dgi11vPvfzawMOTE1YQc6NkMGHfXMQr4U7hBNzOnDSG/dXs0c0Fk3BEKq
H/Yi5rKA1PF3vlzqjLSFfVgNaeIPKlolJ5yu9Ic6IBkK5mtTQnSJx7zCIb4Jno/gAZt3HSy9ENbQ
jUiojL+RuNp8WxHQDNoBaZr2Ecc7mYVx2JQgsJFtK+TV9k7ufWBPyP9t+2savshYSQW0nJzD1/r8
gxsyc7jk9B+Crfpg7P+gCOGTs1f4LYAVXLsDeT5DI6qLgbmKRpdNmkHVxCVBGRPH7pTQmgXYHezW
pXnpRj2HPOOgyaSD+fj021qs7Bwst2bYFvGvqjqNW5qUcnztZKIJVSVnTTB5lMDsfrq8HYhHvMb4
wDrR7f87brZzedZ51OsSjA5a+BQuUL+1VrIVBFw4k+qQmfu15a6tGL2HsKCQVvT+M9SBqSwToNqu
yhaEiz9ju8skfe5IQL5ElJpNbZuF+W2UW8FuasmJVPn35TAHMHVAOPsNLlqVMbl+cSwxgHmoytBx
psUv7WMOHI/4b4T8UfTMGhH1iqDilRcWjw7dzaJc12xnQ5dDH6RdU2ml4zpEaOLYz0YDsSCZW2+i
LOmoq7puUbw7zNygeF5CvHnlaiy8LlZovF/Hmx4Leo5tDh3a4VhnqF0d4ygQHkFJTepqM5gxyVLE
2OXQ7JIUKOofpYE1guBN091i5UkiqJW3m4XWssDJXBB9Dh3g0oQbc8nJ7MgzMSZQpY4tKtePzWnV
YDjNIW/U3CXKuGO7v91zTijxN42oVuPTQ9SfhCD2VguuntjobtDJ/bLf4ipWWm9Ngb1B52dC3BEY
8d7MsONtYcT9F4NkZvfNyeGmYGbiZCgmk2Cy4fYZEWCgUO5tDNsP/blauqpflx8lXC8+PaGDeE1u
kZTUJdb5t0X4W4bHNkNnNc67hqG+SE3a1VIE9feRaiYyhqAVZw5zNVe0zQ8wIB+cEG4Kt/wFiKkc
G1lGTKJVcdxZptTYznxogt5MMRT3f7oqLdSwBAcuyIEOtP+V7RPZgnQYW4q0YOJHVOZD/cWE7NlL
AOCPrIjsZ8+ceyiKpdL7/EZxLUaKjO458roNdVsPsU2XdZEo4zPhfgpSa/8Hgm6wCMZStZ/T2iS5
0PWrmIFqNZid+rRG0lR2DUQ9G9ow8dornvtrsAEApanfjO9tUxjeKgY7jNH6Qvqcv18hr/kx9aH6
4R1mfakwyUWwbJRFbvgSXMTit+3LyWEUSbp4CWow23cGk2mxm5cEal6fR1EggirHRo+/m9UFPUHE
z7CHmAvQP9HUy9k5q71ZPpf0Hedj/kgVInRFWiwEKXZkUFn91K6dozWYi+IxuyhmSlVOvmLk64Jj
gBCxFmWI9Umy9pn3yQjR285eB+UjPxpb0fMFEvU4fpmq4VrFT6CVknD705G747mlvWJmUqmR5Oqt
IW5HIkH9HZ0qPanMOI7FyklaOkvsgkRR8Z5WqjnIrlOZlqcx4I+TaFSV5VuN4xszo5l/HLWqOfHc
+/0kMvBPw4C/Az6X5OMPGWoC8zaQCOy9rTnI2Yeh5M2B9EkVClcmB5j9DrNvcFkMu+tbezYZ0CIf
plg4qFjitxSTvgodD8TsHvorVMAV5jRUjzrmCS7tTMHDYup6+NJdT1kGxPw4qFrf7Lwm3BkKG/mD
4I84fR92AxxTR3ApHlJGQTqoBJeHncs83MyJCiH6gU7BCOHTTCJDPC2ROIXs6cOGeRLJ+Sc5HFVD
LwSu0cjMsWe5R3mH8CguNFXitE+9j/D35beq86pAap5/OT/Rf+hMulRLVtRG23VIeGrrcnzpO/md
TE7/xQtLoafzydol8qpUfnlVAbHQAYp7dJINTb5Qbww6yaxJCOCNQPmrfnwcRSbuU/5N93IHWggl
MIy8KwaA/S/VFXEmbIJ8O/yM9KC/1rRK0B/uoH2R7KIsLupXXE+VqS88bpLUuabS5TjWUTuUzbxv
t2iioPadswQoee4rl3H0ibqLmvufYzrk1VA/+28brCyo8fH0tGzQHw1/rOffr/LcnvQx3+EuTUiC
aXaTmMuKXBQwZ1bd8dE03+iT+UBEylL69OiaogsyXcx2WqdKtsEQyLo0GXrqJRtbXSvNgd5qBMFH
wUruciCtqUCicdjQxpor03wG+pHLplr97YD/B7rxLKb9HQnt1ylGtdViPbsIwKjTyweoWUNkJQMf
m/AX24wJdEBrgv4dnZuXS2jw2+y8jgyXvtAFucIiLIVuEp6tCM0zpfu5hnIV/8LvMoqTJDM82Nyn
Vz8YLlzriazr/q1RVDD4gPvz1TVf397J+DbLgiUeazJ3ieH+b5l/W1gjAb4LBvp+GPSsdukZY7Jc
eU+BcCz+7hW2xRD1g7B1huSjxwxQX/zHCKOyXXDAQfwHWe8uI/oy78mTRha+rw+/OrYVUr6NTeDP
4aYMySiNE6GpipCUJm1PLaNuShJxhQbiSUsvmhkkLYsP5x58aiGSWCHkRrFTiOY0zbdY46V+GViK
uSbgkNOpE3Jubg7xBdFoNVSO+SdLsrUfCvLKysw0wBc+ufuwYDi1gw6K+YMSW+7FHZWY1dK32yVa
cK/jh4CAFODW3e3k6hRwDOxX1KFzccFNEE/VEC1KWR6U/porCbdsmJp38hge+uKp56uDgezizeZq
ErYuD0XkARz4bF6CVGYmircOA5aEQ++JCz2a96jkuGDk7kN7X1jD7645bAGcWRKDIsK4EuwW8tia
Du0evr8kYzq07HSx+exeQQ7QUWyFP9w3TXV+lYXFj1rNXCy7s0kcDIuraQAEs+pSKNz7E3M3bjkl
C3rPIuFxnRTShD9o+yFlRgs7Z8e7uWWkkqYdaYsJbOt5d2ku7DioJ2NWzFHbiG4ImO5MnhIaINht
u7fbnDt4WGfmLShUnvsfGGM3Ir7rVbnNVWH5UaePDtLXrQaCx5MPirHoal67SvPI7quHNeKnbE+J
KRK2GKFm8wk71BQ7nnE1fAdTqJbF2DQoHqiWUDqT9FZOs4T77IJsbHEj+6bqdziXcFsn39xO+iN6
ZfSDfTPw6gZvkLfO4bvGUOfyPPhAXkr0+Lf23YlbVWh9BwR3Pni2SObnmDQxSdLBiGeRAJqL33XX
kuLf6Ye27Rj8EKCL+poWn2lvlBxtMJ9tANZutZQgXRym049pvbhN3QKJryTXdO9Djp6ac7E9HUAL
f7N4PrHe+p7KbcjZNeROdoDQTNDJydBoX8nXz8OXOH8xSN9rlsrP1Ea5SmXb9ybIB/BBMY83xkAh
JQgeTPO3OwSmZBy5dXA1rMPmdgMsGAoPBvHnY0R6Q1H+uqdc3EVAcUEIDhQ/UTHWUSSebhJaiAMw
EHBc8F6wIkISuI/Q6kYSBXjvXW76r8bMqN0gFUxUeuzP7mR8lwd6F4Yz3xqPyKRqDT1NvDw1sPhv
zqWls2DGJTFnKcz5ZHpkYXj6SZBto4MKNsacn6pqnBl8PLE2twl8vqLGGTIGvr1LgKfKdIT/Raul
KSyElu+VEyTD2YSZUfh2odUfFqtI1RgDN2Dh9dJBaFJTUCeJtyI3d1GUy8yVW5lxdDmz47PS4buc
VmRipDrGVuuiFnc7fj2mny7OvLP/Wjtv/p2ttUy4Mrq5jYImqND3S04QOOt/mfOIPNySo26LqOW1
D494ADsR3zFYdJkvvyljZz9N6rxtpFGroa+HH10LnSSx+Etecy7Ap4gur1QHEq1p76+HmRj9/+lw
h/7H5ho/A61FP3lz+92Fia34SPBLVVHH1BcGGem9j1/PgPSX38gXbe0/+0yYwTXuNFdwO+z1K5au
9OmN9Nw3BY2kktwoRX3S/eJPf2bXgeG6H/d6UDBfyEaOiAjnuPJWfN4yiEFoXWJvh0KkmnGqJ0MJ
/erT6mRr2scpvUjA7yeOsvahdEjbx5dL8KRvI1ADadWoAA4Pmm6VykCSQgYIC40LFMKwcxE0bF+F
WgLhJ2r3nVMM/0HDB02WXK6kHYjQhWVwrRW/8+UsKqHiiqd/Mdtl3rQ61DJuxDERAEACjVIzlrMl
ti0j7YC1Gl8Q3uACyW+KCbnJnOUNhIsy7Kkadw/pKFKODH8D2l7Um37TL2q2Iy+XVeh5fa4zh9pp
cdqQdZo3u1eXGzMz8/Y6W9ctqqjIKur7yP5fvety4j5UXD95NgTLN3LJPvXOIbFYsXAZN8iFTv+W
b9LsFI68Qi/hrITBq2Z/ZnNk060W5E1LkAMoe8OCAkUnhTYyVetTPKa6d/bS+hg6RmalwRg98l9I
xS8ZWaPE7lZj82+dexE+TV6LOb14U7TqaABwWKIop0BIyUeEVnDTneZ8aIrOejKP5pXnfDLBB5x9
LLJUtWFX1bF1/Q+Qbbp92ffbd4cPVwr3KGNfY5LqVxXBHkqSm/Xbv6Y34euhbTqF8+KWwYuYgHyI
XbMOzX0KS8vfWW7lg6z84p2bTHwd9o6/j/x4LuiBPgl/hOAY/zxL7m6EKJys9rS9H9jKp46JuzQP
oMMKcCMQ0S/zm/FTSSgjg3scZNjsQQ5D/rLzPftmxr5dQbGQXEa+b7gnk3gt70HIsJHt95moP9GW
ZAZK+GWTa042mToAoXIzoPK+bTEOP6yN1ECDuWe/RORjtKNoYAu7pE51Vvwh0A+IfAINlLfTFWSe
Yrl2kSgkZ5KsPFKqFToY+LkXYu0ICJKz5kM2UkflBZd/22em3YhYgGg7k+21lBbhWkNBxUPQysZR
BJOhmbO/rKNMt6gyZ2Gu14umnux3qPJ3HGfdlC655tbO4jFeySexKdZhJOqHG9jWToT8ua/FWkN6
ABrwCTDsD7lguINNDEZoalPXPVW0fgfq5pOSWKcX+mpSk5fV8/1Iy2aI5hOyIqxGuDN4ilFWtUUi
RNTWelwIsRqpxUOCmBE5ooF9gZcxEMg3xKqdIDWubuZ4GXgwSTb6BzC/ftBPiYfo9iVCVIzqs51l
v9xXW31kTVCw4pvoZwaeSTulKvbkDkGAWVeIQkBd7d6+7ukzMmJnSOpL73hWS6q7J1QzoN9B6v/k
EIs8tk7ZjHXNCXSDJdhwAKKJmXXh1HtULydw7zzQ5MyVmOJOINCuO6v4ojo2sjBvgEg8Mgjp1ZpZ
wUfAuhGnmqRCeriD63q4E2kxrqy5dJMPOHw+2+NrEiIoxT1Giz7YOtuAu4GQ9ay6MFusb8B3Ujys
sHfnjImSsB137UQZ+E8RvXcxFl00AWIqEM2QFBy4waQ8xfybRHBgZdAdycVEjC/8LAu+Er4APRwL
Jd5duqBANJbNX7hG27rEcuQLVUBoe7hyxBVJ7NUeMwRzOiLnnbr5bRHmVELIjOZCKr4pm7e/MXKo
9w7Q8POqBBDwKICzljnhJqBv5yfH03MS+Xj+aGfT51FhZ8nod3Q5PvxdHlUteLdT52XTSKh8ymqg
BFUz4QGOTdj3FJcWJGjNRT3cXT6hkG8KJzGivZa5FsteF+p1/8+1MkGL/MfkCiMx/SBaTC1jrlUG
ruq7YgCVGn7P1BkM0RE+K1i14ZuzCRNp9AjyJzQpkAbBsjJdBngsgHTuTACQ8KsxesMXvum8GySN
Fh/jS6LJZQ2ga/QGVU1YS2uSiK0lX/EoTfCm2kdbxZ64hPS7lyAGp8LTilk2VAncTCCWaHvvUytc
b5yVnc62KUCLZNDi1pqSJ7fgXQHeTsJtVAPPiHrDg5GuQrgpoC90/VlPMEjIb7VoQ9aHxjqNYnGl
FsR1dMOGzE3rzWUarAd00vzX/H/24+u/gc0w+muK3Jx7BWEMbyRZ/Jny6BZ9ZyFo3AmdzDV+kqGy
MIaCZLw3mnozPf+Fo+cPvSlWM7ROM/UlrdLRDAPYJTVXEwXdwRezU+9yU3MRAqMH/qwBO0ZRRYUG
vxSqlxMW3WugogWrCkD40KD5uhtLfy5Mx7xrFX3GsAMTW7YKujtc9pFpbqPanYjwwBKR0srqU2CS
YdHkcrG5046be2ytZls4MbUmFFwg/9OkqEtLZehC8wbZZFwbCpU+YeHm03TI9B0UbvXov+GqCshB
wC1J3cxdyCFf8Yu6uwz7+e4qLnuxfTYzFmkVnG/d60ImlDi2BTGjHAMlNhoQbgzc8pSf0Xou0q/A
V34yksLx68ewVgx8x+64mYJWKrq9MjdlWFaJ8vfec7R+nHuUlT6GZM8LEmxRJioIasQpGCuNY3Dw
+Uw3467VazIc77duXWDi9p8DQurqeSq20BgRU0j+tkf2Z30WAnzLBVJVSTCOrX3o29b61P7ZX7gk
1povpZqHKZerNLN0Ql00f/lhQOH0778tXs2JZ9waULsEFt9rWiSstqzD7rUoNeYBsfRDIhmyi3wx
bnaFMlXpHN5YJiewRywDc/uVgmbciKN47kMlLH70rFsF1r3GQezpGsor6waT4i7M5Ptt0xl+373X
bTY3YzzjoftG4l426RY+7dt0oPtTA/ZGu6mWzy3U6RSriFtE6eZpxxH3yVYEwLAKjW8odwG9NvtY
Mr2PIX6e+OKB3SyGc6z8LpQ8SPPQkE+L8sBq7AoEHIDON12G0Xrq4oBnPJs2ATSSYU5gUJnBqwLu
G992nfYWDTZEObnavsNsXaIUEQ4KEcno8U/hO8XhzDow2a25slUlWaJa/B6EFURMU/gAsUQ05f/8
n4UCtlRQGBdn1k229ch/WJjlhHOPsQzi/7OWmI6HNrlPeTBX136U96FnemOiEIzY3Vmzbvg0SLZ7
izO0FxAj6CJeODhjd09aVQ40rNMBesjbcXqVw8TVP6eYWaWzdc41MFS5psxdWDKWdPTzzttzeQ4k
WD4iubUs4iMYjiDQUiSva+FG/gRk2cvkB66V9vdvWGgFOw0Bu2xmMhwcnzDUKju9jfPZO6QZNkaG
Re0HJFN5IPYyhcYzD3EDrnm4JevBCZTuqiih+WyNfrZ+07JyB/1Qb0tVNi7rDDrIrTgM+hUXvjkc
4NrW0kIzPHlkheo5DziFUz6yGK+nsbLux7XOQEsz9eHSwvesh0gA9q2gfXpbDE3h80b3QNzGlaA1
IJ0Km9fJ4EYk6KcioHcYI1jxqmRkKvMYsXX2nrCNikDPZ+Vyy9Q/PxEBLA4afjz9NVMYUsQjOl8z
SjrOf+8jlrtkoQo27v28HZouAd2UAS+MNDkvBBwFGBoEf5Mn5xwmTVHmIAPmlGvMKMLpMSZ9rMfx
qo3b+FudyThdGSjdOn2gNsZNWNearO3yrlOEuMRXhX6t+vo5uYYmLTK9qV5I7vH6dKuOJV6Uda9O
BUatIg64E/YiYzeW3LmZFwqfGR0M6YSrXO+fENprs3BgUg52JfZPuj1CuNXrcoE/9Q1hlaTm5+QD
qTO6hvBstPxfA1VVZr4WdDcYSp+kcz5clE0FmX+SNM/6FqiH1BieVWIaEOZGqSjefUpPKEG/cmNy
KDRtTXuLXlRIgE23WxKPg7kw4wQJ7Y6PiZYXL3ejivcXA6xyJE9+0Iz4zYpN7yWvnIlTNUnGWFSf
FJxFcD1bGdUSxnfT5IC6qoG9entyrWFGVQWgpDNAxc4M1OsXY7XiF0EbHveFNAjHPp8bPOf3fRcN
tkgxWutC3MhvnKHvErFvOOfJaOst94K8xCiJ1fvFUzqtWjL6gQgb/B2uA6/uf5ib6Te4ZNRwKLdi
jl65orHdrkPZdRZO+Ru1vrR5fAXCkULY41HNT2nY2XNQl6NPC09twyaxBgGsCclGP2B5dDio6pA2
Nj5QUTGm7rlrEtyQmFLwY7vWrPAmCbNtZKB8Fn8VXSd8FhCcUA/qZrCapOhyE3fyj+x4NpWMBr+t
EAb81JSS2TwE0hCysRQXJbtrwey3ujCAQdCL5mnFwRsnNgLAGQlgDXFQIz8nUH+P5LyvqNifGDTZ
u17/70YvqMA2hQDWeFJkLRUl4bbodbY88TROJwmdqGSIjCKtSvXXD2kSRM/f/+XBKGRKIz3xxeLQ
xI6ze+M7rpEyrDrSCX68Gdbr4v3wKlLIbC9453ftUzU/5GADA/ivAE78mFZrtkwUi+D891fHZ1kT
AKd5aJn1pDDTF+N4xksykTX4WsbjF7PZ12NMJ9ElvJ56ut9EE86gVM5eORcEqGI7QEV6JGy6ZOJd
QHrzcIcccyk/kOPMAy8qAYqmEejDr5mMRuzgw9h5ZIDwDePl/0foyrIF8jIFzx3XaMVTT+52fXzh
JbYDxGxPojSEcIRinQjAmMuH6MRcdl3/bMU8t1yDfPc/HtyzPU2uzE2Rc683tlTyVMbY5zN5IOBg
ozywJFQIlgVU9TT1V94p9b+vJd9iludpB5Jre5AADSB89HLxB9EufEv+ME+KPftOHgGDnbYDAjq5
TYq6fbxLiK4ExH5kBAiyJ2+LUwNePHqsaS9F7dE09wPsovIj5vwkuF/ZLCPJkMaqXw/ZsaIU23pI
75VsoNkoz5b8FVZoh8/JvcseNCR+V9MK4hSho09rP1WHGj7VjGDuqojBJN2c8v9pbWJQ7W7Ag3mx
kGfykBTPAl1XAB43SBbvPeu/XYYdURTe15B25mCxh/CsfhDVVtAXlYACy2jsoOpr7bWav7kYhgXa
al9g0D71mbZo9690Qw0dDtIViCLLwU3Rv/gdyicC7wTss8Lyr4GBKeIO5y6e0y5jayCRSaBrTZ7U
V/MvoKDGo2NX2UdnzSZ/EAM6HZT3SFatB92lsb6t/mJaCWZ4ae33BoJppG9ae7BSzyR/Dg5WtFzI
xL+/yzaYlfpYYqMQgLBEu5npP0Et74v2dST69xHxGNbNw4Hco3aa9hJE3+6+pQT8fsh+kuUuoWyH
Cnm6n9Xl3JQyrYjDM9k5EFdu1LIjaUSUI63dk4TnXcBXsAphTKb58rDSoA/M8TeX51i2PbQvpHlR
FWzDdGiibRRNoBfsj/E5ucb5GIi6hk5yNzLeVlAB2KrzyBAqs/8jHOYpwtQwt56grTD/4z+JXasP
lSTAaF5nUimXVQH/3QCaXSoj1Vont2f/T9cxuf02CEnzFR6PN3sT4DkWL7ffineJMK0wdKBqXWgF
5mcLeDtCnxAOlYLgQUKS7qghL4IL2YzyaMrhrav6BYKYhy05hWN7lnIV8+YGChbrChvzE3ijq+nE
X8Sw9Qu5nf3wvKzLuCn3ifsGToE0+ymT+7jowb+ooxs/IXpGCMrWLD0ORLglC2pWoJepX9KkaOfr
ZYfaNKu3KPCWnrijP1LLlG433VBJek93Y8wjjY+t/e3Po9ySOwsFnH8dh2aoYs5F4BzT+gvXkG1I
QBMiRaiGksS5K3zwUbfvZ1BgSK6wVGoY3p3UwIJY63RKyODQ8rLa4MXHmaWxZX3PMBfrox66vHWW
oJmuL0xInKxOtyXuAunjILti5aGASaAy3vnq1gvNGSifkf/TWR8gDBEmwewCbfdZ17KfJO0fiKUC
3yBaOhMqOqHd33XOutiPuccBaWudXqlzjbzft4ChcV9AylN5AMRN3/xoD0mRSl5/PyxIcrXdoFvW
9HVcO242ohpNKqyhEDPpjv5JBDM0uSFT5klUex6FlQB/BQmVtNOagzoWOdAqA/+MoCtD4pw3a0It
qKmLIOz8jDPaAuFr8m8iKqdGMRReo1jp1VzwxFlhKN8b9q8wzBKkbYhp5Qo65sBcUy2VkF+tSWzV
d2TN+HVw0TMzHPcbY6PrI6ISCRGoj++xXJg03jEiJFdcY35K59/79EGJiylaPboYQuQ41NxfMXxm
cFplnIwSLbAwhQIeOXKBvdBlmtRpn/gXGCDpl/YEAH/SWqjLA+5y8yqe5//pAf9qh3vv8LAZDt36
ycMx0oKqKZsHTeYf8kC1qkL1sQydK16FE0SMGno55jOTvxMa+DunMRSX0Pkty99KRtG6DRTSaekr
LQ4aEj/QeAZ+BfDh4BEMC0OOXSMQd5rFElNsyaKQMUWcfblvW9cQeneQyv6JQhxYzHrafopiH8cj
pBu6K70SB+ykP/wpO2WUpMpE3hxXT85bKn1DNHu6VkQDFnUg5omhi+LOnLnAqSDlEKnznqADaQIS
FXwzjvN7fzIWaZc73UahM6lkS7RTC0psF5HHAMzF+YKO1fxTA6uYgsyn1jqar3qGpz+RQ/8AQCrk
8r8O0TSDB8nyFSPtkUeSbqbWDkgLMBjpwUfdLvqUetc4tuYnOmldubBpwNgzYg5CE9b0p1NUcpDW
+QUx/2OqW0Jefd3+Szk+SehcYdK51/LH7Manl/7dPtDKvb39ctAEc+oeaU5cMA1RI5M3ObxvngEB
nAOWkx6herqyTMEPHsZn5DZeKsnmc8R3Rco8K+W2Aex11m+/8KZfMKhzhtRtiUsR+HZ38TXICz1g
XA7N4naUvRwN/HIi1PjQ7JjxVrz69rq4NIQBXJGPJpGGezTXiyV88dVK71qRzuS8Ify+r/9VXSw2
t/KnczLW+Hy+t39F6JHf20kdtYD1xckUwU79OL9WGzSb9xjrXB4tBHenXKYeM0bOQFsHUqkXsG7Y
BaJDpswQJ9vp0t7nL+Mq3d8/ubaFbjk+8of0NpKwNGy5d6PaGK+XzXz0d5dhEE6sMG9JNY8Yp4f2
Hds/y3Bwz4iZLtbJ3DZ+awORvoHWwGnagumor/fSokKoxWEX8GV6fnxbhTnUjq2VfuMSOou+Ls0s
h7o9AjI22krmyDRrUOS9bISxUogeK12hLjnRiyFj1gcK+dvJ1U38erpgagB0DxzvwplzS4P+Y9f4
HwVvNjeKIvO4yyIA7ku7H3Xec73+MuLEkkejtDV0Xi3YO5bD2rUHVAYMw6prU4oi5LAHOOSHryjr
Tv/bnjUT29RaPbII4Vmxf8Dn99JoQZKswa22KDa4qoDW42z6d/4ZHNmRf5PTa+Fz5uEXVQj1s+he
UjwHqY7ocIGArurAqbXO9DD1O7GHs+ii3vAmkB0nJPVPpbbNSKtWZnyXQWHvtJN+UNny9BNZXBNI
LlGzKGlrg58vVZRKKiwVzIhIYc3KE/EW/e2xbEPNzr2ij44gAlwLXWeCsGP3Pw/5X5sf7fODv8JF
7muDKFIv4/LLUpdWgYgh+JeKbA63gl0LkzHji1EZwWbVml/GuEx6PcgRzl5lvk5NFNBYan4Gkq6M
gjnkldWMU3qfXUdGbhu2yPOlPTPFdKAMawxQIGRarsodibG6VoIsL3LS4K6q+vIgRVZ4Th96rjDk
3/foHvEuZhYFYO8ZSlYnBWTns571pZrwLMthuuRy7LQuE6EN21aT//zpKXSPmmVSCTBn4J8tGfZx
B9YlitOcswbTm3uNBM6jEEa0ohE08rbcZoMLZdDmAF7eqfsAtY3pG4t7ewmNVW4qmBWy3LPq5tFa
z5zEjBEbqGxts5IXrQTz8+eE2SR10g2DGS7gIeO1jdzyZ9FcVT5YLlDEWWfDLJbI/gVWDEbccrk4
yQt1S4uw+2o8uvImcwAAdXW/ipupI60NZ592iQwmTluB3KqjfT54nToozG26LwZaDHD0Bu2r5dN4
jbB1j+Hu9PpRE+3sBRCVpa+EBxzXVoUQ4nUmemH3p0yOBtAfzFD0fLP3XM8RatABN9lflomoakhS
Ot6VvnCJ64pfinKkuVp7qIxlL85fh8gwwjLiu9BWFQxvJLz6H6V6cxebVH2nsrc7MA97PfrJa6SK
2b0jpS9nFoF4OIagvJDS4WQvPkCxjnOC+y8xH5n/jSymFCh2yV26wrmMWTDdXJPgN4qTHcDrlsiW
s62wmwppirYD6S/0F6RkUBbPvvTzd0mPcFB1+1gGcFYb3Nx1sAckA+/KeXmwdZL3JkCbd+DG1rLx
f5ncJP16AlddZ5hh6rJ8gKG2GUDtERaqSn7DOPxigml6SCgretbZsen0RIeBJYpzrz3vZjLaujZv
20f8MBzmr2Ca9XarQc0KB/RYry1PrYpmjjFKwr3FZcBWxI8GzRgbNlM34U5H2zqO0tMTeP4Xr5GP
CWa4gL9l0Q9QWF4vPls6SgI9W4D3eykupQOONgLgqieg69rEITb54ApuNl4Cb6gpnyy7uMfRmoSZ
qulSqMN4/dwXsBah/ClNEsfW1GxyTttgF8p0bzg3ZSAjEPbjk6fzfy5HNqk+gaStk4yhBU+skl/B
7mnSUhQhvVkPOj5MPFJlgd9OYLzx0k3Z89W9WXdM7ta7kQANx6GdyVRLcPIWuKI++ywHBYyVudIU
a/tfBlAJzXktW1kNiL8VcXEmR3670GjaPlF4ZYDd8agzrsj4uKXPcqOTzvmOyRtpI4mNygIBuMsz
hBbc6mjaqLxjMnBghXNQpxXkNDfjty4bQcOgluRePJrp/fmyypV9CPCobWB9jqIEIjS2nTQIvC4Z
BcnWJjAv9WRp/Y2TCszvLWlZT0L2oYNRubi54hE6mHcrIBWBrm0Kq3q3jaGl2mTeaw8xbuJEnSG8
8qg3dJoc0fzs0kOLheRt44A7nZdCszBbHK7cRySSDlNOB0OZZFiaSmKGwVuUHlmZf2zQUQVz736B
GrpZu02orGdXMVxZ12klQ89Rf+hUbvBIGlC0bYwY/6L7UhmyisLKlUCIRg8BFVCXxGDd7fjjPgFZ
b2qVfwfUOlsaZ+k3HjyVN2m8wihdGZEBZIw3ilk6rOiws+veNlWDe3YZTOfCkd2Unx2SR6+KlZpE
IYKlQ88c7jaeAdTv+0Px6DDKFCZiJ73lHarKY/F1EpmQh7kabD/0bzieg3lAhGqcU9VDLuN3f0KN
U0JE6M3mVk1Y0Z+m12GWR+d9rpx3s0+uOm7eQIgkQ8c2/W+Wem6J+90WCxp1reEF+7Uxyl9sJMNJ
UwZj7366fckECy8AROUe4ow14zfHa3agPJM1hZTv1VbnuH9n7ksiiz6UGyU6EQGkovEc/85irHEu
RRlotVNEKPYhrflPkUxUczgmDYaAQ3JyEkT3s7AzstCZ432Qr0eTxxra2p3uk883tEV2zjogp466
BUOHuwmzQsXc0V3HS8qwrq1NYAfUxl9b6DC+zyQW9PlkDMsjifmYz0JcoV5+uTHr4KmuR9wfqDm2
imeGDRgswwBavTQEHd12fVf2njjU/h51vHTzSiY4rUmLLmWPHf5dFe5FA+CrBHaD+LqCZ6ltObkO
GxEHd4HJao6XUra/GuF4RWBe9/7OhOgTHeoRE8iLi5X7fv5Sj1efA/dTFzsQZPG+1S/3FAXc9rMs
HzCYJilqU/S7SKBOiyrpTcO3Gwjqu3CL58hF0tj2XQfnCY0jKG0Yd4W3Ym9/LfZmSNYN5YjWSgho
QmX/VBvXqZCumUdRTrLBR6GWk68bijtKFau4JSZ19m5byPlqzetPNlPDZo5Xbf7QVrBe3MeOUF6Y
9QGKv1tXDYmcrjLy1eTgDzn9Hfg+hPTBLquOpQEVSJfUPghCpX5sCzf3KJByOLlUy79Snz1wtDlN
80uxs8L2Iq5c3ClsIT1qZ8c/Ir2PXsjE7hzt3/cdjBxfQjFJYVrXWfwVzI0oVe7yj6pxAR6nWWA+
gjlTYMATHWZi9f7jmEEaRRnIbo7cQWQUMjMAInjsIe6386gK8mmb35amLNqSW6ZlMYAzRLZkuxWe
VUKdAK88TqhPFWF7bOJDbESNNq+U2GW9S3xtCqoixY+SdfVUOYVqY/nhTucgK89yJXMgTx5MGQwM
I9Rl8VkoipZIhEVBhfHp9YsUMpKQD0FD1ZRSjAW0jxVdSxVN6ujziIWa317+HN6PekJt0vBBUNSN
T1vgcZZZDf1GoA0X+oV9NjOsp/+TQ2uysi8Wd4JoIX970wsfKsiCSwwB8mEDb+paLpQ0CKdlnsV1
LrMgT4lzp9TbKWH4dTUZwHmh0ubZZ9wexHUbXEhL5sASvWEDtLvWWnltPwZisCPEndMQp0sHNf6q
edt/Ix+I6xq65eoRoAqsJtYGK56gRCgpqGoEJq3XlODnz8y6BJb5ODeHYk2ewFUWfL6nTsdyV+Bw
WDZ4D5eUSjeyxXQaBq5gS7AoDBUveTpY5oQ2Mx3Bn+LquMixs3uhOPkqpUCLV4KdaqQguL8P0CAQ
hZXbbYExuzkwjWLCXYQYuXewqMKTipSnZxKNHK3EXEyPEHf8r/quqYgZNqSdJO5h93U6yGq2LDrY
vW2bJVuUJAuyhykOKGiuUBqqXfrnTdPJNMbRbtrMl7R9cXdfu0xkSUELCnInNbXbxit7p7WVJ/fi
s3qtr+I2OAyN5RUEwURgEhdUZaTNYbxa4fF4wmhBepPsrfshuvC7NNb3e/eXDMg6jbgUhRjqsce9
Eo3tSfty/Gdo8nfsmzhEMtiZjVMEJpQJ24Hg4Erz5+wXFHOqr4POd3hdDiPoG1pQcQTRf0ckWFdA
lF8B5tXAdM27PyfxNnQyFuN/CmexR7Q3Onl/bKToC6iTUWmiXeLHDJnhcDUX6S7shF4FyCPVbHmC
WZC17AmROsnngWI4yGgYXS58/k52g7RYpzcPnzUmCi5kac32ndo1a/b/RqupWAEV9VD9p8L+xKWJ
mmJXcCtI7fbQNsG9TYjLNoBFNc1qCHhNnNt5Dr3z3ilowiw1rq41qveyefHv4sOQkOjT6cJP2qcW
0rUGV1hNMpnnejKcRKZKKVCvGktSsiAMX0CBp4t9sr+f/d/0Z8TPTPBcLC4YNenv+N+QgZ9KEAjm
LDDLOG94/vCxgK3DTqPqo3dlItfFG4HbWMufcfM34YjRtXGoySzFwNqkSLQNud6l2bSlCIACtzkO
18/c3Y1IHQ0A1wuWOfmdkOcLS4eBVAi/3ipAJqEXMb+6HQaHyaR+H6MnZhzv5PvYibUcfvCEt3iq
S72kdoRbgY89NoxRG/k+t8xSAKDty74wsL9sTLsWXqJ15J9GLx8SXgKqtUc5ooqDax+AJj+cll6d
P0TleblOnxf3VijjrcGS8uP+RHLRMqm+rb976TTTk0WpyXeKJ7gCI0qSTK4b9tcXWrktXbeL0+0y
qEfuDp+Mq4ZrMZvQJvJg7qjhnwpc53DDU2VKXOrKrrrYarxDyfBPpZigREnutW88oQBfjep6Itxy
9zZQzI4y31s/PaQUnjkzH6FOhMiJ9F5nB78bJBph8TL9cRLVKBJ9r3Gi8oZGeF4CXtm/VFl48suU
CVjXCeeBlsVjvQ5Cjnqofb4KkN3va5xDua+KvBJ6AwQfp6+cO8wktcZOkDJ+TahVxVpQ0K038ZkD
R87IgiYqKm+XiTQ/guc3PnN5ouMe0ZL1MvMPyOhWPMpbv2jxr+ypotmCnca91y0dbkFojyT3FbkC
iPedz+74tftVLr9EFkv6RhcBUYHdrSCOmo2rp/zLBr8d4YB5v4BpHblEifX+9OYuXx3A2vY0o0xg
ipKHEy2bE2gL6T/8nxPjT7tB+c0u5HTUme1i+7qlzKHBuV2QCJKmZVQY/sWMuu1gLU/dwLGTkWdV
PtjwGTDH7N1D67R1uYYM/xoxNqW/Ou8ZO1cOv5cneOqWsKp/QUbLPSqcHpnTPRQ+A+4dXdGCiZJW
/k/Bej5iaqBcaUp+4LhxLrgwkLiylTA6RgJAFxFM5DLsLd3wUmfWE33wV9eqxALESl9XMXFShDHE
iY9CBwlr3UejLRNymKjSQHrusdWu6aSzlieqAGbD3J7liYnMgNUeIEOqeirwA9Bp/SJ1FZKMPZbD
lbkuEarRJ3DUeOD3GMNbK8L6rgYwq3X+sMsy+KLmdC4vdzTD8TCNmeu5IE+EcKpdql8oJUDS3guW
1IYYMcHlDtBSt4Kb7CoqV73SKS1nJlNx7tKbCF+rpKGwmxKJeVfH3R7nPpioILjXpYTlnRRdwyvC
xfMGTw0nxOrCaNvPivZqr0RmECGME+vH/aH9P0HRz1r11rWqowl6xxOV6sDJsaq0fw0rqVdCgIJs
swbrtWh8B5P6KbH+hePIVAh8SwuHB0OXzgDmqyemFGQHuB6W6ea4M2G0FN7FcBdAHM580u9+If+q
18JnU73r8tKJ+CoaHhQkRaqqueptQ5z0A5MRhH+Bd493tCIFYNdFY0DspA90KH3iG6EXxVtf7yTR
c6/utfWBu/FJ9qDB478hS7TVRD5nT+0QuVxyK1hk1bDhlM/skwqY/bXoaGe6H56+f6epuXWR+quV
uB1bMEi3MLrHRuocWBEIrgxWqGa1eibmAImzK+E06ImzQjkqfJUu7LQPUrPIxrMBP/UR6tgI6vQu
IXQHLaECJoJRwNgtqJIi3EqWkbT108XGO9oKUoPQTNo5S0zHKm9KvjIKIxp5/pHkfdtQeDVCSZv9
xsC8A92geq+rPf674nYxtusosZZvYWBKhdcG1+2nMcNP48Eftb900O+jXPEm741KBJy3O2uLspAA
aOnBiN1i9+oMuwwkXZiYKlZDIbfYWnERIncRDLsC9PfYKyBhPCkxJPNPvCbeJ7UAB7BwYFgGnYAM
RgOB2loSVrfJX0WYGa+X4zpXYZxyfkBv9IaCqTo+drOsQV71vEzf3LAUprc3HoZ+2V1iYWnTFO9h
EcVS5qUz7R4f6lkzw0bRF2p0HYGzNgZ5an+zSt/F8DrrmTgm0N10F2C39dB4fHSzcUMsp9+68go9
vpGjOCHWbN5eJKdr4XVUREQVOB+HCR5YkwC4uFrv+WqZUmHj31+40UJGMP2gar4Zlaa+ntNhccXL
pQWqEpQzJ8wZKkow3JXXwnDhCHXgNZ6BIwpex1HlrCV0a+giTm14TVzHkZKCkKEAV4yObY2B/8vd
ACZrkwceuPCjUpzE5zLJ5cSk7jHp8xrVOMjszyrn+HSFZBG+rOJ1o9I16I2iQ9K0rg0/I6pwqz3l
Kvjau2s2rlZo9Gxv40Lf4Nzf/sW2NdRQ59x0sjk1pDngwRmsGbFKiXkc8VDvSmoSX/I9/Vtqw0Tx
lPgRLGTfnhNRjY6DJxFFaKCgK6swjbZxCvyuav5+ZxuTnZWfnTY9F1mlUPowYi2KvK2T72KMSKB+
MWn9Ecl8ju3DSttwv1iWy+nMNjIRAsTTFTSs7B8SYqrZR15AhrM79fItqC/KQRUvZh3qe2Ihxq7C
9gehatQp5MXivcpbGQU210o7n3/M6scRW2p5VcZpe4+ncE1qckzksRC0p3oAXOTh2MWIPzUlqF63
NWTUryzLc0icV7X5RuEebO6FUyRZGZ5gP4ljA2e9hzxb+GgznvsPQ1Qf1xN2kbuy5KDQqT9Fm7ea
+U3BSU+ENNNmBHpc1j9I0/CygAsGXqsrlIUl8a88HIPbcJfdiUQ91DNFFz4EE84CtyQ59l/6lwIZ
5CiQrAxTJutIgFbm2WXeHvef5g4xqjz2wLrHfzHORm4wT9dv9Yc8WTRcIo3yAJdiqxNzoe2MK7IK
OSHb8wNVzcNwa1yteIugLHiuq2iIqJOUw+lH8TRh2DifQYttUzvN7w6N8+EOamLERFuIczvkVHCc
6BSnOJRlIrLRKAnQWDCjtEjTvGnjpDsHcMhTkK6PO3j58ABpj2opG3d+je2WkX1hH8A9Eu+V6nfU
OAFcWKptW95pubu08PgTtGWSsnT6knXPpqhdwE/vVFyWL8o9VLL4wlRNW8ePkOlKZW9B30viLkdj
TX1jTIVX8d4QBFzOvFA/XZn7kAV0rQVO9/ABpwzYHALXNuJRT9QxGqLkp2pLleR2KEtwsrEBHatT
7LuKBPyZu6ikeHdQpst9MH9CNcw4Cbitskj75054iN1SMHvcUYRxXmKqNqhc1ckbmX2Iz5yFbdL+
auSbx/Hz/8EyZ247WTI+xPB8rz7myqNJXiFeBp1NvwDtEdYOeIAwUkozTrBr11eTsQBXurQx2Kxh
0zIQ4LWO6osu8t2F9wmDhf403ewkTwbT/exsF0yi2jQvu+pHGRdjjC3VM0UpmswcmjGF5rNpkcJY
CgyaUvytji18puMI9UpXkm6hsSFt5mIik53tv6rmbxv8SL+XrfQGYXNCe/i7t9DB6gLOcqlwMJO3
sR0ikwzZzsVZQw3vleIa88955Q3GFwcD8Y4Iq347xoqMVyTdWgQDeJCJTsvlkuwCwlIy1+IKvOLp
mUe2zmAazO+bQUUFIxx3kjO3hSV0TEHSpPKZ3tRJKfINNQlY+14u2TUEZB75dzRsot5/RSK4EH2k
l8r5HJwGqou9605PZxie0U79atSGuvYwYxa6gg6RkwGyPG088+Di+Sl3K5mAq3tHxZ1bekpqnqM7
svXOreBcQgJTUiPjMOZmeIc9m2Ak/+lqXZCRZrjvsRjdwaBRhc/76TgzMoBro87vfB+Iyb4Te2dL
1toRLK/3rhVJVUApSBpanqDXSia9gLXYvajFcewRDO/h+WqTkgNYABx8vIFsrUepzVRmV6SGJI0G
II/H1zZNx9TuojdAFNZ7JhpUnmkuqsCxMIHinXhyF11RD2yFGA2A+kVw68I9SR9rZjBnR4vMdyeN
65fvXVhFQ5PJJ9F6bLFLagrcG2PyV+lt6qhu6k4FpAta3/eTfbJvqYNsQGDNrMvEfJBxmFuy+4zu
KtnMX4JtzLTOKokaRy0vMFQgyUpib85JYDSAh9MeSSyTRnR2jrExJ1jy30JzoS8YxtSovOG6c1Su
G45Hpd5koysAJ1bLXaUkAJcKxpYtru0juubFoWY3HE9zmqP/cB85IXeuDtQaMHX+12mWg8U3uXKq
BP3N7E1Ni+OQNg2nrVarE0+w+buk8+tACBN19lztXBXbT7/brH7n9B6Ar8hvWzfyP8ILy/+5MWdm
CQ1Y06DI+Uw6jA6V3crbdcmvJ7se4vewAfQdFrTX6G6mGCaN+22PamMOnoonXS9dEo0D+UvCG/bN
t/p8vyahIUW8xQoyKcLRoToCUVgQXYN0xkvyxfX/3XfDvDjQtkHeb5kb/wMPD9ACBxt8fdqx99jv
0T8wfle9GeN5TnmUMQ/aCwrBPQ/sQQrQVf4xtFQlJOcsUkftCUHaoAAEqcg1FW1A5VDQUm64iUJG
9no5nxfH2v/mLiKhGXdK6EzSp6CGbyq27vmRb7y+Fm1BCSEHHRa0GLnJ/CLlJbxcWqf/JWOhFbg4
93Avq6pf0DWq8NFYwYmt0xuJxO8zX1dD+xwHaisq50cUFaNb3S6I38GHIebANS1MWtC44B7iwdj8
eO4/AEkauoyNGyy0cS3Na6XRzn7ULFuUlz4LiEv+D2FBn9jG6E2wtbZg4JkmV2o02nnH7KdMfKIk
S8yI8e1wSX7mOX3QfA87qWz3hgaKArOQ3DykzfCxFN+DGjowE8n+r+V7MEtP2QkKVQpi1wRv5Iny
Wpk3JJHzqx5FBD1szCGiMfVhqKBONv7Y/+Vso0/Dqi6+b7MqiYjYv2zbGvK+Zv73T8NR3HeEbkiZ
IsE8D2O+T1xbRcZqWbgWLVZqTnTHqZYV7hdACb2nGo2FU3FWNIi2ontcTMCF0K4sMErp3vHohOqX
SjRnvf6prhGCwfz2zl7IRUUKAqtwHX3iEu4jhHlZizxHkazMJJbXNiaofqEieiGkuZA/X4NWdSlq
LpOa0YinEcL/G7+WoFwVVjtj1rVIBa3guZeBZv5s5XOna5XeHbm1AHa2LfzmqWYjW+SXkJ2oJoDR
zfwBhPVumBFY4NaVZdPp6iy+JHm9+tYaPdOgGKJmJRU2nQdeR4vU1ucxnGM45nJdgBG+mz9sNLUO
4QiTOUI4Yy7MYT3MfIZ4pEsk6mtwIQJ4KxkEuO/dHMDt2SpAJPEhwAuqEXjbT3YRiNr6wOPhrz01
PWgR3zpnqikqhvqvvbKrQm/wnAs8x2mQ2e/PtdDWSGcNFzuSq2eOGbdk0exO957a+JDP2GGvuNM1
0a3U/TnAHyZlkKV8aEHd+VQU+4ePsvNBQDfnTX7eVVzyjROlCI/Ba9otu781j5jjCyn1prvaqH9Q
25F+0cPKWWfNhtOuET9CrP7NhbjKjzSZpGU7VgWX1NI1o/0m4zAbaFZbbdLd4jOEacoQWvwaGcwk
FKfVd/5EsGYMaBbEnB0hkZYAMCCBiBQbtvEVrLV2JaPdK3Tt6GBby/c+YJSMyNkmiLsGGlgVCTAI
ZfBeZmvWf8zHTpFYpR0fI4b7ZJFmS0wj/D5may9+qiFE//hefDHQARr1KDu51lwn7nPF5EP8fpVf
cQHmkjGzdgxRQdRERkV5/t0evWTLCHplAg9kNhMsCho3sPt+zEp475ZX87DkVnonTevMtWMWsMy6
jq1UrMN4rdkRhj+qee3S8oztbGzJnz0LisxxNzu+QMpaFsA+io9akkUJ5OTtf0QcgGdb7ixVi9O5
QRcv9DP0q8Xypnzc23ZK0zqa17xzwtfxn7eomAmNfDNI3LbSrAZtkMHE9WMJRX53RUSWPI5EXgHR
eShHmb7lmCvo9be2zSVbZ6F9PyOW7RIp1giib9cxHiNDm/fwL1sYQAgR7jdmE5i6MVcqPSWPgG4h
Phrh+TR/9j7HM3r9xW3WC6lpMYfcUwJ7EzPUY1v/gNTGTHkUZgfyOVSsZpREDByTRNDURpHAQdSX
AVnuh2vMen5TEKViHoY14tEFN9uzP2zRhM97OURJMPTmfdtBRNrkC8T0A95xisakZgX3wptgEy3d
fqRsG46JIvqewWIzRNuYvqth3YQy0bRykoQRFN7RWhorbfmtRaBR2KxuTGkKYWXrJWYVp9qKbFCa
z3UjlHnQD7VcyfE5/gUwJ9BoW69zjO0eSD8Ir/cvU1Eo1Nuyd+3hSE/ZiUyWCji1NOY+azeUUAvp
bnX3l46ny2FKPrT+76lJk5r3BGXHBOkPZh4F8MFWojljcLsg3DR+cRlFlXxctF5k/vJg331lAh6n
NGwg+D1u5159B1LEPgIeEHvxTzFueGQQ1RHtMJDM43Wj0mJu2P1V2j8g30fyhwl16+BXi0ZFQCyF
nRdW7hPaw6pj3LJDG2PpGJ6mrTu6dHc/pvMfK0yfbH9usxeG6+zdjoaIpVlLCk7qIvgGCWtSYSgL
u5Xh1bcx+QMInaqiqlMfn2bNSLIApNVDgToAc81oISkeGvFbq4fswPXbd/UkYOSyip+I5hFSn7ZU
N8JlOYCXoSem4gw3ToRz+NU4+PddQ4XtHV7dMgAoDgBLjlG7xiUijDpy0Ss9eNx4l3H9gd3nMvei
i7umdTgYdvpFHBfE/+HjswAFXgLGXYPYpFkEEncJP1DEgtte5gB5YFNpGAzUfAIUbEsi7cNZT3Lq
tER408MiRioF5f9c5qH0oBQBpjuShtUOup+v+Ba+LlgbUF6Q+CFD4KJg0B0ptSZFHV7UlFUqbCdO
qXt2HGl1Xp3fVeM4dw29bJ5sBlqSSX/r+uCIGI7e5w66PYVw7BWfJjnPCDurKOsD/2qe9FDlLYPj
56X03CAIwQX9+BetLcI0o8DrFYytCfOURoNZ6wcaxXs9RerbPKIXTtHXbLw2pYNWzmOAcznVI+Km
PR1wsboNrc4M2UEkE5INo6iCancnc/YqPqzx9Ay/UsXCo8lIP0XpIYxPmIu4VJQGKbxdbCXUPuci
3p9vfne4tiQ2JmgbLjBnpYLNQw4wlVVqbt5P8rb0wLKOEdBf5OnGXOMO1nOPNaXY/lBhAzguztDq
ajy25fBV1hw6FZibP7V9bLRuM6c3CFuTAscJW25i0HQEMY0+T9KWAGtprp4h7L2U7+Dqw1QimThN
RtmnG7L/gQouHT0MPFodOKzGkR2l3KUJ0W5hO86n7EGpnsS0IAS25pskiitBscNWuTVCsKzgQQwk
33Mq677VRPTwZWfF2rJihQVaa/8uo37iZA/mNuRjoPX3+QODpur4IRDklBoRxAlwaEtulPeJDXpS
fVs/NSscxQf4akKR7Q0Y/41rGg55unbVWAuAJ2ZuqcR1ViaIwXYnAzr/b940wu36sQa3lfokLCel
FjZO7puJzFq9Qg8NT8TLny1RqvWnZ3Zr0wAYevk7m3TPwJgHkkRejzk/JNUW8zWKC+uhdjV5pR2L
UOUSPNIYrRCkZhsO9K2tDsE8ILWhgFl2HAnhFxauo2qwqz4haCZHum+r50JmPE1ZdnlWc1MnI7PJ
wFZUYk6zMY0a6hDBdaxelJJPM8tDjqqdf9cy+b5ehWkOLJIUcgXyMdJv0ivvsbf2ttEijjtOL6Wp
hlscRvA7ucodKb2PcDtoDQErhSpplZFVJ8z87HTxDZDRdrrS3ht5K41lZFlixAxSjLMucjkTmA4i
SgrYXo5bncdIhA+rBtvC80ahZXbQ722pFMzxDfvy6TM0rlZIkM7C0BleKQ4fpR+ecx0++OAZ1xzv
H4urE+PSEVb3H9liRgtD3hBFr2EACQxsyGXP40O0d4BGNE98dpckZrENF2H7y6J2WLsN1tluCHKs
m4vEjqILIM658U3827uMKgvLMUddvSKlqI7R2iBUjKNjaW5Mf9hmrWL9HW3uB/XaxVeklop/lMIB
qu+8B+LNUdH3+QGRCLRQ98dv207YTHO8DDBdJRXDUu/Vtc5dtkOC2JN2Yhfc0Ti3EDhn/2ax85nA
w5kHjgkCCaQ4/G735BfpFC6Wj0sWsc0Zrvu1qBc5ta+Fcyj/tEROxZUlnNT3d4JaP+UR5GVo/ncb
TssV5NXaDyaucj9IrvFZNC8r2reK/0fcCA0qa0YkFgfNXBUJsMsG/QfbDqJ4p6RnoeCi6Cxj1TCQ
m9I9QPqQdb29vgt3on9YENqu7n0wx6G+4Tf50M502xArRiwZywL0TwQsHjqN1jCJ8d4seK3yKIFC
GWX77/QJhnLVl/TMjxphaJ4pXD6ANxanwlORTgwNcMqxu6SMaLZnDgkoy2aFE9Qn1WyY/eKlj60+
waAAmt8vGn/arJkhxeVirGeMjPSGvrX6iL2ek9ADvUfN6+Vi+2/Dfdo3FgHsiGBR56bR73do8AcM
lhH+0njUkeYAF1jVp9CI8YxDW3g3KDhiT1nAmaylgvg4fpbc3Lu+OBxrSLOi0LT0mV8bqTzE6J4v
gLHy+IvV/LFidy+BkwLNo6lAgSXMpZTQl7QcTSiFL7Jbq52hayCHlFSKLcJ0KyvD8gVjnorKp5Xg
SJTI8TT1QDNERFjPWVvat+8jVATfURScvKvzjsN2yyo3nmGSHxq1QKhCCPj95BtDRp8Vs9AEF40O
YMvzezcJ7548Xzjx4/Q3NzBH6UGXd7y4+SOAKwX5J//CDgUCo7z8UcPwnMQHqrDH46bo5lwz0LcU
TorMD8WrABx28LQJ20py/GOJrUdba44/FHiiELQEmOU3kLFZu3WLPkAumlFhEnVqoQLDyMHNmTNs
S7iPjhsY8plknIquon2pmFRE4fo4CZOXQ1+t6WT9jdtY2e/so/gos8S494ZRiRWPUGDeFnvjMsSe
421kOMrY39HXlrki0cUjhCDxgKeE0NzVwfFYD+oXNA0yQAycBMURl0k3abdHZS8uykU711aoUl6t
av6h/nPqOieLH1flw5t+5nRhwsBt4MGBmDXm3EoTL1rVKRU80/zR88D1OkcDhseQqwWlXEx0wb79
DWepwC+g9hcx1C2rewqCzFlUqr6nwYG0OKQk01TNkpCXItCzhkztyXQaQY+6eaw/42XJXplbLkVj
ZJIC1tK4gce0hSWsosOlFTWfMUS3QVRYHIReH2ra1qJvn6BQxB/vtKfor1rAwruZzEwYpCYx7aCR
nTNGBXyVKO5f/ZiyVtlkowbtLWRZ8/HXUTOtMEpffEyL1aXEfe6S3BGGzUrQwKSeCZWVzqZKpHaA
I6Jn9IMkbu0b4ZPTnlVjpzG3F33xk5SzWyt5MjYI4LaxhJmfKYl6aT5psJPX5avXNbnu7uWSP63M
Walaj5ftblT1gP/qK37uCq+KDNeD1v8PHMyEM2iD4gu5itTaZFxSXgZqK/Wzr2fqYnh46tg4UeRo
KZwJ75s3ttlnWQbhwsMqqo5XmjDvvefiLo3BWngp8ZwCSMmQTcvpo4h345CXIgKQqXnGQ//u4BE+
BUa7umrAQ2W7NeStuYLnVMz1Nf+XhbESs0mgMtNpdFpvZ8ZW6KCENMEUTN7FpsKdtnGYUIG2/2oG
NAA5VCmjjivs2AkgDUgUcIOkpgVuMjPilKBjKkuCTLEYIT2yQkqVdShTk36uVlOAACPXkecLvZYw
T4tOh73F39VsUyulo+fwnQcOwkTl6bzHDMStYN4kFKUNtmyCctob+lpBZtmgZZfKyYA51afr3V9u
SrDVpnL/HIKYwBGCy2j9evD2ZJKvRdil8ECDmCJqzTBoZRJLWtBBVJXgJyesYOCBXFhQuM+SaSFo
YAlQwYbwA+0gmaFfRFv26nMj4zVrmZjEXRUtHN1Aus+uv19YBhUrsomxIKK/JvpvlDdUPpHO1ffu
Lg2y8Gwtlszpgd0f9yKjZ67qLtBPhQRaakLtl2mPx/YQ8sbn+qSlsuQjJa8s0o/B1N45EzfNFqsd
fYb7W//tvKB0VBiOC/JWDYKjimWLSp0Cwz0V/u9QxQh26mrJHcbQhNYtMlxz7ylMJ1yFrUMYiHKm
Dkoy5wRw5vcpn2tBiRF6ToyXJtDNHR4+0P9WsOoiOwDuZVsijZjlDE4SX8Tv5XYSPPXvpQfeby1k
A/DL8E8JqOdhN8tRIawbM4IEHMECfqF3JbKylIpyuXDZtR4/GJbNpyCR86FfClEIrqqPq8WWpS7C
bUyv9g72zho8sSXA+VuG6mTGoOseYmPli5uRZG/EgcZuUzisEaT8fJK1ORsZjg0jeBEPsBjsxxpw
ZIbrwPpH+XJr0LrMaMOkd0kFZ9zNxAJaXBvqPpM+yaNghhRZk/DWxvV3tnkGWM8mEZ/O87UK7aj4
HStEnO7l+CFuvUvGXwObkUzlXuBpAcTO3tl8lE/plAmD5VjSMEfBlSYi/yCbgO1yVl7Bor3ZByvs
OC3Bo36Me4MOnzVGDv76qwns9+nLZGInZMtSqNLFtFV0CvAgw4/Zmgnka3iX1qyS5wegvrCyOqW6
QTT4+GjJf8W9aGgrnY6NARC/ZQXfo8tHmPs/d21M1SiK4t0pUQo8Rs3NWaDHYDNDK3Y5yhVzQ4XX
1xqRHKXYDtX/bFSXBSSrq6pHA9YRS0NQ7AvL/snHrHApjXFN1Hhzqfp1FC10eMrrV34CFkoGDWh1
r/n3mO0AlqRWnGXT9nVmuxti4cJR4f37TelgrOIHHYL5RsA4AF8i7oNL/N6Ql4HcyE5iBtL7oisO
TL7oOMWkEBCeVHtovHpLJX8n5OV7mG7XP35320t5qUJmYErpzqg7Xk/zhjyvJ7N8HtrBNVjbMfmA
81ej2+1GjZ/qfdUI/GcBoueA1nQlA42Y8+3PP3eElZcx0ZSX0T7imIHsIazO/gnfjxp4BWZvYBwJ
Tp7QCDG7pxT8UnbXmoguGkPOMKjWZX+0JH5UYDm4mUdAP3PMg49OqGiqBCLJ3iNE5w7O4e7X92cJ
qMVGOiAJ32TEjcBzIrH5qVhxEUCUFdsmI9FA2NLb9CD7tSavItKdvgSOVNOsBRQGvNF0q/1NxZVe
mtqs03UjiN3aehkGoBahHjSftNRCkmoYWryRi0qZEkeHhjtgfJ8Rrmy9JblNtzRKqJVkxpi519o7
lNpkY1q3wqd/5r3yFegfgnB0NAzMxDBk14ArnVt42yrkYbCT1oriCBvS/29JCp4rzVPAbGr6P1HZ
Dl3PbZNqaUJd5ufO8dNRtUiplBhnQhCX1iXadEoK+RbTUunpcCOQBJ3A9teqo9cpsoqFCFdEhPYW
XzHZU/w4cs3ZWojaNyVmNCZo4D2jCEoW9aFGDsoMUYZE1H+J6Rl2EfEC5RtRQKwakRJYVgLDVh8L
EtTVX3zdjp3n3x8hdk1snwLioHHzOChhldNaBGhyvE0p41mwdTcTivWdPxPP4yu5sIsz4qXTPdEP
GVVsXVPAyg5bNHDt6wzsudUSBBwg7ReZLLani4yjGpX8H5QMAxlwcIdEsu00mBnQ+3GXZ8ekXirA
qxj8F41OyZTvACTGhLxcKOA6iAxN7S9ppQicSX35677pOxt2DBw63Rng63J/eh1m0X++es3C/9/3
1ECKHjVv0GXVfy+bmNopMDpQ0a8nP0holDEmAcwd301iJAZ8+N+Zd3rWZYwibgEyh2h+7YNkqd5F
6q6XSkMsOYUq3NMO0FY8ZcldPCYAXRpsXxAPl/i9Pn0nCKWCWruQx/aqir+dgwpSjDve3qWh6y/T
Ff7BayyE5CI7LFg1d+gqmNk+SXrPzfLAvvOWj6CeLOw+L3ETCRvUbeSs6i5dpuky6ycxDulMZ8kt
54nc5ZHQnKIeXIbUFn9D6Qj0TL3lSW6iW3kAwfEtks6DmJR66gN0Jj2wheMBYy/dJxcUJOqWLDo+
bYHCmIZZRWMUNUWbKqVi9yIJwuE3sJSbT+zrmB+VA0wdz5BPDNVVJbl+F+lRPOXZoUGjK5u7N+xW
BQKf9Hz0G37nDHsWm6tpXpEbjSHhwAxCUnNvfmHGe0TsBUZ6WYhow/jtqCCZ2uTaQvo+vbVBzVs4
lEyXfyFAJzJBLZ4Ka5OV8JisrL0gsNgtushYLZkCJf33zymYwWj/c1KmYuS9sV6tUnJP82NvdCuP
AeEaMBaREYTr93xEQsQ+SpMw/T6RnGiyhuyXL39fvR+TO/Eu/tSixmvIvBFs9gSJSEw3KxTvpwbx
Ih0dTfUxysRzY7igN/CkULfpLGL5gcOQrc/FB7oXVCm/b2OWb+J0hAkCd4AGnxP8JP6jlML6aNzp
MeTQSr3tO+hb5i6ob09OjaHeOXMArdS6nHupAkUSdD5UfNsm64Am9zqegy0E/o/Va6yT1uV8IMYJ
oRp1vDZQyIPA5Xt6Pvl0OyJJ9cDRJ5ss3pewSGyWsoUJwFHIgW1RE6lEnD3dbrqxbgPVpaWk630R
ncku6EnnP5UWja2NmNf5e3k9B9Z6zgXO4yK2qfGoIErLvBzzVGJYH3t8R6v14QkIcMbJ0QVBZIkF
pkTacvVQzY7WvqNWQnlBaIvDqRxiVgJ7ZqfVK+G7keUsD/TkNZV36CRfd4M/FxiL1efUgxFXh9Rl
tLJVvcwZ2EGHNTOVzUnZs89DrKXT1MnSKqKZTbjWvaNBWcUTElRhkOCwl4L3jK8B7FaDEDkVswHv
V2oKTKGQHGPCKAbkxvykFRic198XVSidcjI0aRBrppy3lTWoTqIYgteZlwMVGDsmo33HH04gjJye
9ldBj8H3hz5eXClJWF2/Z+lU4U+Pm34jaP3xWAksb9iuCTGJaNrE0f6BtdqE+cZ3a2DXu/NcyzJx
un9RxJNtmkDYbOtMVeWFpjT/Px1jyUzEnrlugcYfzGC/KB27jQ12PXi1j8c2z/AltPASWeyAfC1h
Ed/yuf3XLrP+C0CyP/u+6sOlLT2SCRIeq5ulYgQSBX8kj9/t/VBciPJLL+glH+yUNFjM2Si15b3R
9192wehjBIY47CVe9L1CeY05o3LL0MXQ84oez0TXAAjW7tQDw/uBqM9kpCSeiBJLVaZwAo6zyS6C
5pO6tsEEvNmilvuMolypIKg9DBHXBjgr7VDi/Ekju/nTcvPgqUDipKSOWdwzn09Te6ayeEiYh5gM
75YtVVE6FzEUJbf5zBoUGfkh/C0fZ0fUEuiziWjWekFTG0SMDC+neIjdwbUweurGvdzhStFZWiIO
Wvr5Y4JCjquQA9spKPg/3h5yDzZwWQK6rvwL4wymmtWM6Gs3sHESJDPqHXxWT+hMaJeZHIMqxeUo
X2Ink3T+QzHnIUDqcPh75+mrSCG2ACj/T8pgi1hqi+6R6yWDg49RGBt/ucyzBApbdq+gwhkRwBeA
qTTSbgkclCx7rpXcyOoHExUfW1m36cWTP7wlrJB0Kzw05DYtW8bFUviu4ey83rqiYQytXtGywGby
12PyxYdmcmQ5pe2bvTl+xQl/e+Ti03O+8g9FZP3rfPhgnKeffXbK+QqwPLnUUKFXdQZxzjotGncu
l9t6KXdIFnVwfzoNo2hsUdllzUYbuEA3ITg1KzFw1KncdZGHQQRyYjwM2ut37GkR8uqfQbeBx8Kg
f2Jvql9lZ5ac5kFyCOdZnaSdqPDB95AYah65qCxRndLBi5EmIWOJ/aC7ie+ClFoJ5HkqarxEV+es
XcWrhsO/GH3k/RQl6petWb70iCcTOnMjd6l5NKiHmREZFcX61JDnoaOXuw2zoFHxbH8F3OGegjR5
ZhdzBwwxejnbil8rMRJDWzF1G0ujpBzX9QMOLLmdbZU7pN0HSk4AERO70MmYmJO8BxKzmFG732yR
aGTPpj5Ww1uHNgewAjB/bVOhMpIGHV0yodt6VyHnmP7dlfnaBxi/WPgoDczQxB7SpT7qr7y4VVmm
dH1IKCBcERYMUQMgZmvcEaNQVcznkWT9pK6puhAc1DMGkZGJBsb5gUaiwj+Pm9/tgo9V6BlvSmX2
q5DTE4Sqy5IM6MDg8DFE6VrA8glJHTclWJbBRwvNL9VlaFnu52eGllRfOcTNFuETrYMqEruy9Gj3
jcEabJC7FiZeoOt8hn0b+d6S6WxUfqtjD8+82O7i7DR26o+XmN6i10wHT8We3WrIZLgx1WfWhIrW
quA6unl++Tkh2D5rtAeE4A+DpbfPUUF4tg1LhG5c5YdpMpRRWDakc9lILgw6sSw0l3QAc9SWdkqC
bfPKL+u5j2YswnLlS0FwVlTojeIhV6qOYMQ6c9hXOH06kRX7F/7Sp5dTQ7w2HtQZe17UcXO1tvZK
78lXKEv1jw9c8IsHZRLFh08xWUsgodJy1KLPdBAe7JlC0MjD81RTD6ErvNb25MHXHKndIz6UTZp2
q7O+b1orJtruCnokCGF01oPfYYkWUwGHH6irUMNPM9lZKq/uQJ3Za9k/wOhrahbPK86n9r3VWx4o
mdsFufmVoxbL1pFjTvSkDZju8Y+G/tBESZiDd2rVEakq8lOI5SW0dQEITR1j60p4aZJAHxL104Bn
UwZscoXYHzagGR9xsAXUSG3nKHYYIALYa0AYKxS0Vzm/x/xvKVcGNUgrs0O7W2gIF+bu/H9+ZyKX
mw4a3ILrIC+NJ3nJRaejaSxtOlx9qiT4t0OpUPMrGZ+0DyUtrYCGPm6jfxYxDwAGaOfiZgfzKA0H
EBrVpGdhWwEb0cjntSnPA5HWCTsMjT0wSHUPlTTzn1OCw9Z4L3GWwoYH/E/Psv5oU3JHEN/eZkrO
sRYvh0T7zfqTRSzds9t847hiiNnbDaJVgdkM4aLqd7/9JRsYMoWrj8MhdPok4YI/T+yXLuC4q/Ok
0gCQGGRGnjVSh12XBEEDzKXdugYBgocgFKB/49NMBMAsvxV/CFnun9Kz6tZucny3wfXd/rrKuzcD
1V5Nuh4XgihRhDNX+sWs+iE87t3Pt+sF+B0mJDiOx8rjpxkGR52v6FTvWhfOyCpyuRUf9H8hWLev
V0aT2/AuH4yh2CDj3LrNhjZgF5T/nxT8IwRnrtc/QHAeWEqJ0wAZbE/eyrbMJgch8x36xLo5It/2
mcENwNCrroQG8bJ4/sdBVAxulLjZwFL6zaNtL0w/Zdi/AEagb+wN59SzRooPJes/+1gJNF6vqC/e
S7I0A58/9Shries3WhiH981blJ3gayIeOfF7dao7x5OHmBgwhQHPH7MsJUMD9cm6n0CNaVGjhT0Q
yHEAN0rBHIYym+rA6STcGq+V9fWLmBuFCh3A8oUPcWiswyAHU6HL15VElTt2tELae8qRhJ9+7kdu
///rxpQMqAZPtzuekHHz6FUs8RWdmxZTSj5dTsRxtqIDtOl8Epsv6BBR+aMm/I6Ug+5urAEdcKu0
rN6xrENCJeJeAEoGMTyxtxtE0pvT5ixwmCnd45GmQw7OR+5IhojlzqwhgNRGFVKYbnaGK/w3Z/2x
MnV9ch0YiNLhJqUyuKrGCR4LSg97EMPce7hmPwllloYZplsEo6Nhw8YL9o7sc6WKuU5UUdgTuqJV
t4AqKUkIRdo0qXutigcqrl5q0njrHKHktCEcoUPLHQt+Q+FbS0WhlFbJ3i+SHgs/MXaA+dgEyIhI
+kgthEGVYyf4NV4euo2gcIvTJaw4DtD7B9XtLmTZ3iLrXYbt0kRvRGn94uaaH5JHBWhYixbGDMpA
osMEEpUAFJ4fdN/9g+7PYLNju+6yL5KSiva38GT16wi0Wrc8GLh4u5YHrKgC7JGRagoWt3+5vJ7n
bHlSgdawYvfMFUId7pKAc6/7VmjX6V0BpDSn+BijETHR9BDNBmJj3nAD1kDYAlGo1dnq9Gk2VWqz
dwkh1u2dgE1WlQYKiG+/HkP3jzdw4ZPfnnW9QNoy+65sNMNYy/Z+sJ1ilsZaZ9W1RSz7JkV6bUGt
iRGAG4lQYs+17xP69nT9R6mIHBHVVu8pQEz9xysq3y/5mxaLSGaM28JSjAMgQ/mn1KCrkzjZjT6H
pSM0AkoLjZnwxUQbWavHh7Ec1UYDXB3+9rf2+ubIzZZF4+4osTwHbKk+4KRvqousyM9lwmC5I1iZ
J8jZgYONf8BY2tuuFvNqH2NAYOO/jV19/qldH6ET4sm7r6n4LEp0QWN+Q7aFeqmKARc0LURsHQ6u
V3zDP9HM5WuLn3eFSPqnqS0NNBK8t/EwnSl0mGYbWTL+KEe7CQm8Xhs+1dev9R0df5bEJlrR863f
EwJuTPqgzOBAEGO2ugMXwZvrSKZOriK90A1TolODF4xexGQnF+c9vQRH1k0m9Sw2uuLVDNUFD6YV
m/2fkLGdERyM+ZMzR+23DHhqaqoiCscxnl3WfIG7nqmLEnqT7lMi9mcC69F9Jz16bK0yoZfTiG+x
2K7WxQzlJLiBOFZpiuEAx+k2pOMXX24fuIvLR4Lt1wQ9P6AB9W9xwCsPrCZEtofvAw8d65hG9xOh
TRkIccT8A/EQT6UooxkhdbGgG+8MQUAYfF/XQgewObWWW4jBKHeS83P5kqnQAZmkKLgYhR3FwREI
izB+EephoIQMwTGTYNuGo4QDrlDNkzOrCtFc7iM8nrdRYXr27LWrIK7ZmsZqO6tGyHnQStqwKXVu
ddDgrH3KdjbkhI5kYnrp+3kuiWKHsUIEsbuj3WijSurvxPBqoCOyZhV3wCihAIMCASllz0mvLNd9
vgEXZNHgkBpwl+36+au59H6wSv6gqBPpBJ3b49r5eSHRkL9PQvSZker+uDiykrhrEbuReNuKGZNx
igpAHKuK/c23ZGP1fR7Kusq5VwoKsm4hMfcusOfGhRwkF2IMLRns6YB5G2BtsZJsJkKLGAEXeeK5
m6YV0TrtAVlhlJ4tBOudBV+rc33x+ippha9Iv+Of+DKaWT16Z8I+utmbozNiOhWaqOozWmUqSVm5
pu5kOOaGtjFKu18bL6Qk6m1JgKANHwsHdeqdV8Lw2BZ9cLiCWLt86fkdsvFt8YrRVmYGj24BBi8U
3Y94Uj8Elv8OkQ/4aRdkdEbZfgjq/7ZLVuiSq7s+Y8INyg8GKgG5G67aAdanfTkpQ5oASOoC08Ny
TqISQ+xyNMdiTVCYw/LCs+K13MJwXKKNMySPkRd2x8MKFLKL2YPapQe8D9jXwAiGjyq4icrC1+oM
XElBpp3f7JoO6b8N3iQZ9gbGBYuWL481jF2/WhdArDYEirUIfvY6KuDjjSN1/ymyt6Ov0lradc0o
/WagGiCTd9VGDy8DPOD/NJFivAtjo30DCupyXqhLIGMkUYA1+Yljs0VrK5srqU+F5ydtLgg7oBPW
BFEYKUkCFljqkspDcTgVu7qAMb5plKOOY/9sZnsxsyIilguKE8fTNG0RfXRycIzq1p092OCRMlHa
8dlrd1fEA4+5ypTF9Ugs37GY7iWdN8R4/bRWgEZge2vEU3Q6NKZruNGdm5+Asi6FTbICzb3R7Rrl
YhtiLA7ssEm7mjFhEPEkOTgJ3ouTNphmZgAzyfXzwCoxUr5QwyGIDMCPDQ0LMzx4ua9qJCOwpdrW
d4zX5t0upxG3egt7bPP73QonPdR20r0uFm4EnlXAZ5nEqV5pxY7kV+FXCZIp5E4y9vCFVBN5aW9I
oQPFp74pz2dCl/qfs2N4nW9uxoWLeB6XtG0QifQ74Ch3S03ph9eCDwd2j/uYE8HYlx8i7D+MpXf4
6phZsJzEwljFmUyCdJ6q2pFIWJGEGNSrK0D971a+OzcjAOrXIDYC7RL/0zLq8ercuCIPoPjJfYJX
EX53fVQq3nJzfFIqfiq3ey087PVGFkECmXUGVPQiHp8qMY5AN0dHmOC+oZCscPCTFRkh9tjxmPft
+UrMg5DvBTALlD0bYGINmVAipsvgv8lc+2s2nr5OplWLeMwqwCJvctzP9bEzDzfsWbFpRp617DqI
YQvAnATEnnKOSGnMb1kMlDFUQQI8IFJizsBe4py/65ZqWFhDxC1FhMF7JcjYLDoCT664jA2WABdv
me0RXAITDenWgVCA0v2XXsP0Hili+I2ow/Za7NxXHLz5a+HTKn5BL5L6ySytSBX/VowHs+XWyQzo
fMpP1jeouf++OswPH+I91TD0NmArVB5vdfpsNmuapRkBqgvKwa0u8C0G8uflLLSNyquNG3cEtSsr
WNqcEiHDvFqBHeh3mNMJbo0yPBc2vM1LVy+BMlBoW1bnm1ORgNguvHBCwmRkFXni2N6WaS+43iUq
BQOXfBmahnJnIrazDZBnmlRfwTM5L1fWI5MEHntGJYOmpWim/6M3xmJTRt6w+VY3BAzIgcnEYuZ5
v40GlFiqh7RYnO/fufpEkUNmphARkpDEqWbnJsNzrWs7nKJEhlEmkHl1t5paTKSqRa1KyAtZdG14
V8L6LuCKKRbkzRh9zPaDhodD4ToR+8/GACeEQHOVMeL/FAGK/qPmC2q2DFlait05WqfIN7H2B4jQ
OIU/8v1nE2ye2mDI9cj4c2m7XYzDMVTeNJ2ZlHq1VTfRtVZ7JP96g54uLalHZuBae/RLdbnAqaD3
ryes/EqH5mTvXDbGpSmCt3enKVDtSh3C4EWxf9O5od6Lw4UibwOnEyp1j/0Mb/zMS+DbWrgiSsgo
Tek6UtrY8LmFoDefCUytcPQ+knfO3ks6/V43FcSsVqCrdLNOppR6oBm/2Hgq44uUPkPxEMFulMJu
Vog+Cb4zO9nBnJwmkbRjEm/mpMgqKb9UXWsU1REDdO1909rj4POUwaN3sz/piCJJtg6HI+2qdkqd
oQ18HQCR1LzPSea/5/Kf845wOkpdAjd8DqohcJODWCl0LS34qwsbllI0wTN1r1ETU/mfqrimw6DT
DOrs+vnQ+dr28G/JUTpN2Wadq51kOF6n+jPzPcfv1c3pw52+UHiVay3wtYaow6wXjuyCcCQZDgmj
db2IsZrto7yZAMI1zU0bO0+HW36v4M8TZgpp7Q2cl1FiBc9sV7hZUd59icqD6fXanxJiBK5MBMFn
LAHMDb2yDTNAPFMyyhbhKcxt3srTlaOjwH4WGJX9cUP3EmbnUXnb42MC7waTz+FlDh1MJE7OJB3v
ZLs3SS8pyXy6wLUlrkXUYN5apmWRWD03qtCxcyW+Kyj+ibpSI1glOcgxTMJNorjax9QaHUQfp0ZG
9YavaXk8yd3t/lRjkC10711dRtBugwIS+LbECqxhaJ2O75woZ+T3cXIoNTdOx3QaFL9aSbChIAkn
cE+qTdrdI6e2T9wKPumWM1gj/1CHgbIsCZyq+t4WCNLBCDFMwzjKF8u0fP5eV6663mLGsQbhmWd4
cm693S8KoF0d13cNM+Z1jP6K21MCeK9UBvaQUtsFKWFNzME/U6Jv2EkIEr/8bnJEdrlhNHbKMVmM
lj3yUP6SSj76kr/EGtHR2kyvo3zjztqn1XQvOD1VRr0khdGRJ7uRx1XpxN4DtI30EKrLUS7O7ghp
3W+OwoPZHconWDN4Punf98YHfSKZ3PJ1IJy+YFL2/BhIopm2h2mONA1b4KInsZzo3mw9bky9pGEB
AZ/d7MyyvhJzHq68x1st7nISbmBl9a+2ehEE6r5hFUyLCI99vpWtzQ3bNMbzEP7gFxqDvc9BV5ba
hOr7FRmsaqvjDJ5ugFfmqR/Zm3Nr5RWaYgr3Ldas/sL9+fZGJF51JnVosPfZq2SlPAyp/ZXoDOs9
iVf6u44GeDDQivwGLFxA8pBUMKPHukzmMM9+BA6Jq1e5Ml6Ihqbrz76f2bl1j+mDH1gPA9Mgp9aO
Ytq+Rb4jqv9dRETByLBc9yD+mWtr1fiaR956s+GsgKzrsC4LnS9YjHf9qh1fVuaF/qIfgfy2BKL5
TA8OlC3d4LuO7c31HdjsBPGCnLXuBEzIWrTci0oIRWjq350zUDyKbxesRPem32TFWujetZBN/fA3
3AnBq5KJvvMKrJ2jsFNreXpNPdZGJhiX5MBCIiFM6BMoqEsF4Atiqz7x2VKG4UQWiuwoHrDJSTnc
xHIuo4BMVoOtlYZBcTaCY3i5QvPp5fsKQbiwwJljWpb/k5CWOq8/FahzNhc+8OVruJ71TaEqfXHI
DxCUsX7G/a0T2U1U+jYPz5tr5HczATwLaODFlttjG2UDHb8xMHbBsugYedya1BCwnsGALGJWNKxb
CtptFgS2LxJiIsDFkUUvKy2Y3kfp/tsbNyBvjSSk7rGFAwDnL6OL7FcwTgr0c94yW3hq+jgQPDb6
qsX820XLgDt0tLplGQBV/8Lnke+cdYoIRjW/ZmgwZ1ql231gl1vpuJvSUStA6pTSzf4LTvO6QAj/
2dIZeRT71tNDEmonYs2Tvv5gW1W6p3EvUr3gyReCpFNNkFIW9CyJHqS7pDZf3jd7QM9oOAQaK7R9
gF+Z6u+rmLOwqTE8dM+IPo29fxk88sehzGDHgVPZku8u5YOY0lrGu8LE7/+LLYscDp9ssEVx/OgY
Ry/bxkJn9w7GuszPjQuuu4M5deyqizzpYDjGPjsxFozXHT+Nv8xDE+Z+5dzsJbao7s7flYFgVOx6
FiQHHH8eU9nh6kybTGPBxo45lkEYnzYf+Kbl1RfkKFVFAej/DmkC6Fdo1JS3lSK1aGQvzOjSUyUj
dZg3m0PSiRsklPc9Gx0UhQ+DrPUk0Lh5gOtfZbl5NFxCN0hiRu+awJSto8BJ+pZ8HCkSXiu4S0qU
nmNIYnBEKfqoqDrMhTJdtPKWTUQl7+p6Egi8tn40uz8dwmK30tK8eK364bSKCnSkS3EDfkoRykgq
c8ahMwwPorWIIkyqAKyvEjfOiQsOcXiJlmtGYdSLLRqHZzeuyf1tWVcri5LPhCCJNKaRG1PVC0H0
pIV+ua95+j+146+/UMBONOcw8+nJyOuKWHKoAKAF9b2sCSAPKOX9qa1V86H9pcmvbj0aexMMHUJ4
OC3kOAChWXoX0mAL5Kl0FOt9YxRDolIWeCNdY9M7WKJva/gT+PY1L0rnPeR/GOIRQ3Wp8iwlRhcq
twnpGQzy31ky45rd0ChMi8ffkugAJhmj80POVs40Ev4MNdiy9/UwyGRDjYQOveKH9fLNvHdIEvYW
7QGwtXCyesvOz2hqIGQjAEAYoQNB6TaKhCJQGTpZE3eNU7ooVA4dfPDU9f5NPZRmGKv4gbKGc80C
gwbt1LT/Ch7fEPaQMtcpPInn5zAlfLRa/0K1bGx6MpNQewJQVCB5cee59+w3FKk7fBZQ3mcHgIEK
dicoWbX0BIyXfqLNiXDNann8KAYP2NEA6gzmQ5wZRrB14yd4w7dXgpU5R9m9cXtax4S/D4T++pkl
ZpRztbW4E+I0DNniC6q4Tim9Hj+aG/3akX0aYBUqx7cZL31mWICAQAI5io3KGiHeTPpXBTXdzGo4
WCm70OKVnj6mcGAwgNoUnG3bPlrs7BMuuN3dETr7QR9OFCx9g1bKw7hYfkfMXu9c5S5YpuO7Mw1p
T2k0JXJry7GpCz4qkQxoF5NFWpUa2aeNz4Vi3EjZEcGVwaIf9aZiHgN+dGf+2ZxFE0RmAQfn/Thy
cCs2KThmYAvv80WmFcvoghvJldhfN3Xj7HErMPWM3BV0eLPHUy/uyZxWE9MX4HKO2ZOy78Zw077s
IcoDHEAnBKoELSH3GvGDbWi+zPv9WKVq3LtkkWe0JBT1PkBG51teIogC6/8b6XNgSASRWIpitEtH
swANrLuwydSMk5eEV8PgwR5b+yalFB709MGa8wP9EFmY9mwAh7UoK3YM4cai6FoEewFgZIJZuNtq
32ARkcNGwwA3I0+QN5Tvcq2xfLDlY0UBuwHBIC8OZJdYfVO9s6FGoNRhl+pM86Vi83zFTnxwWnZe
7Jyj8VmGGjC/KdPGO4ilHdEUD4ZnDO7sPruT8KgecDyI8kKZgRsA5oMmFMeTVSTtAr+fq9pMSB6E
KCwyiKJYY7CRdupmtEEQjKDE04AMAs7SmbAUqrmU2w1eA1w5blqU7rAwP1R4AkactMUk/EVA0Ilk
71JoVhBRjer/9WZQgHER/KAXs3nMgN8rxQTKGcswkXShCFDC3B+EcEUqN1LIgd4u+B2mc5vSdlnx
6J6PjCrHphGdAH2PYM44u+4R6mdFMMkp6hXnNxmULdNw+kqSvXYWt5S0kpqVp1ePYAWHjL+GsVkP
NmYeybRp5Jmh5udFrWYZZO2rTakpuiCqSWIQoNEO3ftIrdyrcCaVlj1B+1qqRWy3x6Fg3Io7uebn
su9FyWQhM4SQZX6YQA/qfs+NbmFm6tCMtuFqnAkvrjvZakYP+VVW8Gm+LncwqTqe4aRrUp2G2pjS
kVB3fr3F1lvud1vxSx6evxq74sWTHB3mzhXtjIpOkkz0SKGwTCkAMCb+KjBuuXrsWB+b3HDvRs7N
jLOdeESidkvoqY1Zh82mdIj9iWLo5sR3D4v5QpOCuxKYSDGzSGFH0bPQtVgpnZM4IALCGvl8HdqM
xWAfzPo2A2yYT6FRLngBefaqhTircQi1zwPF+BVwcu/Bh0QCcTHL8eVeOroJN5F+E3HbokW7YSTF
4usnS7Yy6FW4YZcamvM0S06gI1MGpIWZGBwg3YySq8+hYW0xk3bBGHsdfA+L/Sx4oloo3z+vb8O1
PWFrGGpM9K+ME/0X1DnNd1IlZTCTdAu83u899h0uC+se0lclAMUAe1wOz030Z40OWegnuwfSNOZM
SV/bxy5kdMylI4UOtLiZt/8pKgN5QaPMn2WOaPEJNWsf6OyT35YWoMLrP+wOOhqc2qN0c5WVcOS6
WAH1SulCNWOFH2PRA8bi1K3bOHsMx87ng58O4iHBQEZBYbMtfUlU8Rbs1AljmZZMD8veXOF55Px7
gv9CGh65nheoOt78OM1v3AUUDPd8QRYpyMZBXXA6wd5EZoNtTQOwsH9VyEro+rmTF7jeCll2Afw7
YpFNfQLJJ8yjeqraulheS+NhhMpnidaXi5kln/M0RCWtESgtu3w1iowML/ajR46QPqUGUD+DphB3
mY7aSBeQvZkbTIrQz1YKeatnjg4RDijWQvaxD13ngx9+f5qtQhsJELdLOp8MzHPdXVB/YVLhZfxh
XJ1DXiM/1o4Tc9OFlITYOc6Y1zp0iez4ARencJODZqNL5urdNZpMIAc7/nRzlAnlAlOyP1fJKU91
cThHgST6PtA7XNprKPb4qxmw63aQpqnFUpj7T7/UOsLkfUa4dH5aHiNW+l3oLpvTLR2bKtgV+ctk
FCakgnUPnh/Od1XSdUxgsvUHcg9vw7kNiT90nxzjs1WC7iTZGONUpeT5c1SsGrtOncx0L+T6WX6s
3JerobVM8phImbtVhs1x0CkwXNl+paHglUa0sH1pnfnLXRc2+j4YUb1qLEDXehC+jaBkEt43y4JY
vk6yr6Vwm8poajXv26OzOkJrV1MyOlnAQx2jS1M4u+7Rlb7z66nlsORh8dnXrkdKxsIsBHuCE9jQ
k8RwlO5oNG9kq9+bmZ1edHtVudWNcJ9V43upFhR6QRIj6Oqw5qL8uM9xY5W/XMO7CP7md9g1JxhF
KvuObaW4P8GIw4t/kmEo8QcCQ5qvn+wZQfFkWiH3Zfu7nGpHndWBmq7FiBkcbqQCvK0k+is8hDe7
9X0kW9XrPuxiUdu3ne6ITReNF/QyFeX3PjiidwCDhdK6Hr+BNH0cFuAEbTsvbx7ifu16BpfRbOu4
64qmIOVBKi2o6wXSF/WK1xSqBU+Z1fPvazMqg6qSzBKzMnwOziUBKGKSiATM67PbhH06atvXYEoU
Xrv+QG4t8jkTM2oBrw4MlUjNZlv/lpAqcRYwti5tevdUBCANdzBwGL1AwFFCkd8uxonVY1kiShR9
O3WO+Mt7WijMZ+d4Fgl0ufwRSaSMdsmFgjk9gMT5IQHc1FHtw3wp9tzKIM5u75XyhnIM9iiHhVSY
42ckMcqd2DNGLCLzZDvMNR9TzOXwqBOks+To+IQngY5Yss1mMfLJj9oBIJF/MAFcwUSc/2whyVaz
MBqsv5UZfpnpqBcqCNtqLWaJXLo+kGHoK8LTCXFb6Y7jz8wSDywFzj9Te7RGghzu9pR+OntFDMBC
4+tAXKTr27rOlExxKXXkj11i6xiJbYrNxwFyBTa52rJUyefsbLVTYfwIp4N6GcSu0Rwwksaejasz
umxgQ3kh9QcdZ/qvCbKVHaeZGv2nqmgVwhj1VYUe8dvfCCXX0cK/IU0IhrH8qFDQ77bkOIpCcjhy
Rkt0LQl8htsEgXwTsk7TSnI7tPgp1NpJ78ePUa+lho34s93Ix+bYpXmQqnqzVA7XkkjCD2rfK8V9
FzgzDJ6NAp8PVHWnYEL+RTe4J1wKWuVxKnTyAg/8bpif78yJxfDIlemNqZcRjrGOkuGEXe4W90RA
WQx0Gw+1hr728O62zZmsOnlblJNrNicd6CCCHiGtN0xOuCOHctHl8iWnzY0OJ3ZXf8VnaTDKJYSv
ORMnvJvB3UafzUWkhgONkK52EY6y8M/Y3OGie+5a/u1mfaNjundiVM6szrCRmDaSrM1UaV3Vlgl+
FPEpup+N6A8RYGLWbvE2vSOXm32TyqOWngeKHFBnHBJ/Jq4rqBVmZzqh91FqD2Tl6jwnxMlLV4jH
0sJrF4uvxSaU5DWHPjwL+nYOgW7J1VpNMjO9yJMzraHWedrD+AwMYBlunbT4WylfL1/tZhVFjYmq
JyjIMzpwCS2oS8aAg2+dcWcM8nj7I/guCPIUuYK839iD7piPe9UerxIsbq5sI2ozsh1j456gREMy
NszLL4xjaWS158I0CAm5D+AcTcr2WuDHJ8iJQohKRFn9un5FrAU+UCrQ7vxW4eaR4SKKseAAjsMU
7FuWNXggJJf3XQJiXYFWfEkBkYlh0djnV8qwSXaQLMg2HDjdHPHTUGCS4V7jjlTgVK4YyU5q7uh/
v49ihIl1T7S3pNqiE2bmARJGzzST5gnQ+njBKzfylb4jF6cXMqXWJtXwgKL6MZb07fZj9GHRR5NC
vZYowtSNoaaSIglAg3h9zQ0zJc25lVLexcgz854VjFuqjOWXaXOjlzbjgGLqL6OYYE7djhT+i+mJ
i7VH9TjZwwX3jYZHsrq60EB2YPlFgxZH7veHNjt4kvLYxFNAQjGdD3pxbEAaySuqc8zRc9YzpYT2
HtHRw90pASl8PUGenljj3m4dSjF49KC+uhC3CT5VykiCVxHf+CnQlEkXWZINyRhMimXuEZYw1Cc2
0u7naj9ZATD6bNIUCC6XW9mCKPEE9HZvXTguvaZHut60DJUuyF8yykdqR7hO73RUV0mgnc1XpcO5
hyMbyrYO+wzunqdQIpawAz9nwtHiB37sa6ceX+e9i9teyXBDOppWDZwj5vsO5Qf/hFtfaolHW43C
urc2Mood2FvphZy6yMG9G33Ki97Ickp16oKY8lpNBFtnmS0qNwuklV+iXTMbeV0/OkA4QxEXHb6B
54/rX5dys9m763RFof6uLPDcRWhomAJa7S9fWwGzWXzkw5OQvsrTrKt+zGwjUIluyj5UEASUkKF6
bVmsuIElipY25aTG7rYj0udfDSWjjlFBadJhWHwLPXHl9Oq1zzsF0ejhYyaKpyinXOQFTiZeaVV4
+RS2AxjFBidBzUzmSckREEeR2ND+oSkN3yU9GOXgOBthlV/LIcw5lLdXJ6JFN9AZID1Pf34RS/QG
Pz0hD4tvBNRbz6qVYF5NN0OT4Wr6tKGMTn/QCqK2zdztBFs9zfIK7pNtXMYn0zEkk5PUg4BdEo23
2+Aliit8obJzTscEzgo6E6sB38AHqlpvVkLU3oGUqK4GbDUk7De/9RvBoYBHSpqAKoyTWGuyyu9c
k3nvRr6445fgDRb/YiVZXpA4wBBZXJN3n6ZwekWP9ZlkwdUD6UI1v1LXCuw0AMcLxaMbQfPHIYfO
3++wEzwmabECyNAsNd7QG2P5RQhUG4W2Ga4wovMc1yIL+grT+9i9Vo8+T4oEhsBZvE4CnsdAq7DC
+SVdo7OXfUV8SsirQ6ndCCwwO6BPrqXWUEF3KvnjQAI9hD6LZ1Y3Ee7nbcnVWUBVa7U6K8QdcBx8
l6/yXn6kRfpMmWRMrBueErkpvm+KEzTMYkim1SWHEyfvNo0MXuT7IyqJRBH0u9RVPFaT+7LF2y1A
cOZ55gUVHTRD7PwU5GczdbZYFAT7dzrObKoa3mvQu35Bmx1Xay2t2KOLM3S7PS4EYGhMjDuKoJHo
iPYjqTl3zL5PkrGTuSbr9GB5U9Kd7C86Gj2clhYLm9JlZvrU8BH5nE9ZkVcLqgyNrjNCgXe9zNyA
d8kAfoNE5UkWuRUffvkJUa4g+SqRFfNT3RuIp0K+lTxHHBgBk+EXdtDr9LcUlzg6Shlv/5KJmxJT
OECDDrDwszjIwIplI+YqCYMKsmh5NoE/hs4oi+myLmcCjhP/K/xs8KG0w9DKHLOPjGvu8GnMeNjo
FlML2hUTQ79tswuQCZRTaIgM2tchWUu1U+xftgxNY/GviL8vqUeI+8EGG2rrA3dRB4NEgzI9pMbl
4gXFjSxwFIeQJayzCQWenAG1zvveK1jGzVs/mm0Iikozg1iYI1hMa/0hKfxoDWwAL3tgLk8tNOyX
UJKweq6XECjEcxTKkZj2olhabB7JxNE5WLZZGcP3aGWjfmz9/Ah14cTW1LYA/z2NBvah3D2pFrjY
MlusPpi5oDxubtVE091KSERBiDwQS2wpiGVw3jzxKfM1JGfT7X1I2M0DPolgYqsxu+fnLIB8GTZT
9jrwoGy7+05Bb6e/LuvklQs3oJVnYuxbWCk/InBRe9pgIPob7cTfrRtPCt7vGcGI2ESYSIobm0qX
YTG/Z/8HhdTBAs3Uv9rI+BKiKSGYT/1C+jhghmnn5HJ8Fyb7/AMQFnCpryz7SPfYjyRq+7hvUUVN
loUaKHLWvBKlyrnhkmKbXxl7de7vWhqjZE/2qX/faGu8dF/S0yfsWHm6oyLbdF+jULJkxZZC55Vj
q/eh6oARfQgVWaBNYqpBIqH1zZoFX78LZQngWQGfvaPMQ8UQNjbCvdoMjTETQ303IIukkHh+G1H0
//aio1ve0wcVO8/g/qSpb5WZRTeKqEGt8oKE0+vOgMIuHwlll/LJDizsj21yDXj5CG8ZYl80GZ+M
ZfnZiGXlQ3a5/ZMU4lMMkEr6i02qYbNonEIGQLeJQMVP5euPROy6tb0lFaTPyVLHrEnB4JBeJOqM
eN2wM4y86IO4S+4JenrO3SKFDT0XlDZL23kz/idn37Ew8S+5OEC5n7L39PuZ8gwcj59ETYDxnSgG
/0/4CJNUNDTzCsIdH3qG2SKGzyB05L3fSSBIfTPsdAhX8a3aXK++kl1NlkAPLnGemXhsSt77Z3Xc
ttewT1ABOEzqUb7KMO6/5aTupHVAbXNyWS7+3Hfw1wRGdCq9iEtKY4Tz2zWpZwee9HeEGVl6F1+P
zzab1iIgJM50Df5YI8UmKKPyhpCoxeAeqXsgOnoxHKJjhXWjtWh1drGcNABSemDWqs1/sK6/IPEJ
aERXcsiPi5/ziELIOfVWXU39+DVPJfRl9q9b7q95Hu71asw5I9cCyD9NDrnliomGHNriONqXO7Y5
jqR8Yak8kVJwjsmvGWDiwXn6zmPA0wb9oS+QZRICLN9JyV0ZR3a8p0OoG1ESLCa/+7awy8iNsgEm
W0O0rZ+H1lR5jjmjumNSqrlBvkCtHwbuNJnub3bBxy9rJBbHE+vIlWufrPViIERXlqLDk1F6AFof
hlCWUhhC+wABYJp70zhZBLaFXAAnGoH80t+U0ZChitfm/OpfNNfnhXyQEXERSI0IyaIxUCUcByPk
DOZnowWtE7Iqd0z2ZGsb52sKi1ObNLiomVtF7rvCPicQH8qhLu/Y+SfHBBNIdC36cVToFG/E5ijy
CQrxHECTo4Zfq6RHdwEzGmr/sjaiBUMre1kwkdhunWWuF/bqZNjscT4xgtsAUzD+orGLxPHSdwTC
6PA2moxgb2W9XFdEYxAADjodgAHc0Pr4iC80zIg5XInpw1hv24u/OzhGfGJZK/RN8pJgp7GHGcj0
la33bs+M6urYDz4dc8ZhDNzEaJKThoqyY5TGQbg0A9GHD8TRi/hI6HZCi9lbFlYCsv7Mu9ufHS+c
4HMrlYjtNSTwSLCIu3yh+owOZtNZR+ZnicitzrvtGgkEB8Icff/LKWMagg8ReXavCgyqma/tl8SW
8650E9DKfR3MiUn7HuXnwMusK7X+vH5rOw2a3XMqFI0xt8u/qeP+X/G6ZZ4ZIcsoAqDoo6xCLELM
WA++bAt4FAgyFT59hcSSqTjVl5c13Fw8fH64ejyBoQHH7ukZ3/aT0V3p3uPkM22p9wKr0v2vxNuJ
AbiBtnTcTLv4fZg1uOKquasD71Y7HW2BbdBwuDCqOA/JjC8jHKBxgT8XOavq5QoXiVu+5etdPid+
xrKZTq4eWugf0YZvD6t+bLsrp8NquP3KplKLxP6ign74U/Qoid7bTAsmiv7s2OUzXWgwg4gR6YB0
KlED7lmfqu98RGAUVL/+XJGLGIuWXwI9Om5BfTeoWFhlOg14oxyN18KHZKCwkuAVCun6DlgWBeDh
33cdIgv9I0CZJwXOrzcvBRL8+1ggkRFFm3HbUZXWQo2U06YT39YziXCl3UAQdNc0hqVawqftYwUw
dkB6xrqHmM/tN9qGXJfFPVcVwgnWTfR4x105FnzoB1LSvij2gp7fj0zqNQ4CnamlNKG8ldAdLT85
kF5OsNDrrpItpf8cI8c8cJyj7t09vEYwF0LtAV4TZ77oCRJb14a1ARpCPAaIn63E+2Xi4GpzJeyh
pwLVl2QHNJZXemHENvZ50ggiKkXyI+6aKifkeQO2HeYqiu01UtlgSA4KYzEzzPhy8C7+hOGS23ib
icgAPhaX2G/dBOvo9ftSPdeHtfcA9XqKZttF2WuRTEswuFfoMdPnlNM6CWGMssYmV9RQvKEk2AJ2
YaXyhRlvXXBDAgmoeNaOK2wBNFovoMa+jT4zEC4vtbuB3hgVSpoZL6c6q+35gjmPG9BaOOeyEIrU
CZ4cEEGN28SvfzkNt4Bfr9r0SENg0XflnHtYaocMFKfrOa5opsH5U/Zso6PxZy9GDVAElQIchnWv
znj0ls+V16xDnvN6om93O+yYCcrFrnND/GEsz0q90k6X5i21AVdrhB8zEz+q7cZjmyd6Ga2pLJPp
zAEdl94f3cnLJdof2QTifKr9LiI8ERt/LXOfYsOE7QJ0gwIemyfvgsQb4T7C/PU57AMvgVRNICMy
5eXTVHVUyCYwc9b2r/eOFr9kV0mxjNIT1Fj/jegYFxkm9XrGePv50oeJ/3nRnNbEm7rbtMGRZLBh
GHbswsrzYHBuBXktTkBox7sZQJw56mgfv+wsLsTjdspHDvGnvb43Z1wgfiJbyL0Jo9bpd5JF0+yW
Rv9xfyW2JIzOpUflzaHyXHu4GfzCa85vuVtofE6RjNDsESQwORUWLoF3zvTLuI/GKXjw+tn1WMMB
rzb1ulFooNPY+Iwn+/LUZj5/gBRUHni4MEzE/0iirejvBn2n4kPqlZIP4Jj7mMqjGbAd97vm/HR6
d9JV17lwv++opJRkFMC9uu/5uQ8A+yPSzbzFc5sdoN3A4QgNL9QF+3kLNAsXTzqSPII1q8OoO6fJ
QbcdjiJL4rlGmjac5QUvWUAjgJSVymK+9R1ueOS47x6y5GbNef7ls7hrulUoju3rOcvN7lzZH0Or
cLeWgZV2JkOOIPqa0Yvfij9GQUqxqbJtCogWZ3x6Z6sU8CNE72SA5s7vgQOi5/EIH03BBobtS/rG
JN14u5eoLYqKMBcXnmT2o+9zdIZR+LQp+pyrXDfr2sksRe8db3iezm5kD+k6lrp8pPP7qyR/95ft
M0yqYGpvat8TQIziAF4lcoWHN2Fey6H6kmHMg6G2dryqxy1Z92X9uNKOyJ7dMMNgJpB8nyxj7xhU
ioYORhm/K3VJzioP1E2mC9L0EYiBMlX8k4bDiXD8iLjnTjHjH8M4S1lvm1zx9vpr1YdnnGWaZUy2
7LHjzTF0Yl/RULNj+63H6H/UQBVqwDIUob6bthqBgRvMlqgD04M/nJ0w4/jxhyt7IzPQErOyevnL
tSHfhdKOVBCpZPFA03AgFLIVlMm6jgPrAx4N9J4C2cIf1VaWqEmRat+m9e8eFOVMh00O98MLVA0a
i2yGiCrxqchmJQ3a75lRzpsZcl660VrVNDCqPPiDqNbTf5yMxW/5HQYCmcqNkgNVCQ9G5S4vBPfO
hAM0Dsb8tmN9+wkhLQqUklDW6p64Zwv1i87mq6rL7Md2WAAapePPKDFMOJ83vw==
`pragma protect end_protected
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
