-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Mon Mar  9 14:21:32 2026
-- Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/yousef/Vivado_workspace/AH_CMOD_35t/AH_CMOD_35t.gen/sources_1/bd/design_1/ip/design_1_EM_REC_Delay_Duty_Mo_2_0/design_1_EM_REC_Delay_Duty_Mo_2_0_stub.vhdl
-- Design      : design_1_EM_REC_Delay_Duty_Mo_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_EM_REC_Delay_Duty_Mo_2_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    EM_REC : in STD_LOGIC;
    delay_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pulse_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mode_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    EM_REC_sync : out STD_LOGIC;
    out_sig : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_EM_REC_Delay_Duty_Mo_2_0 : entity is "design_1_EM_REC_Delay_Duty_Mo_2_0,EM_REC_Delay_Duty_Mode_QPF,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of design_1_EM_REC_Delay_Duty_Mo_2_0 : entity is "design_1_EM_REC_Delay_Duty_Mo_2_0,EM_REC_Delay_Duty_Mode_QPF,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=EM_REC_Delay_Duty_Mode_QPF,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Clock_Freq=12000000,COUNTER_WIDTH=16}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_EM_REC_Delay_Duty_Mo_2_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_EM_REC_Delay_Duty_Mo_2_0 : entity is "module_ref";
end design_1_EM_REC_Delay_Duty_Mo_2_0;

architecture stub of design_1_EM_REC_Delay_Duty_Mo_2_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,EM_REC,delay_cycles[15:0],pulse_cycles[15:0],mode_sel[1:0],EM_REC_sync,out_sig";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "EM_REC_Delay_Duty_Mode_QPF,Vivado 2025.1";
begin
end;
