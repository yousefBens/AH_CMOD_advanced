// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Mar 18 15:18:39 2026
// Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yousef/Vivado_workspace/AH_CMOD_35t/AH_CMOD_35t.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
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
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61296)
`pragma protect data_block
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
3Pk56O6u2mCR9T8pUfW4kJ6ErHIh
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
