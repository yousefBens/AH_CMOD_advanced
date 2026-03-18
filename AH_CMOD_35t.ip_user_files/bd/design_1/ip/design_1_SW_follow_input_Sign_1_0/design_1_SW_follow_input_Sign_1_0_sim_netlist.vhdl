-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Wed Mar 18 15:17:36 2026
-- Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/yousef/Vivado_workspace/AH_CMOD_35t/AH_CMOD_35t.gen/sources_1/bd/design_1/ip/design_1_SW_follow_input_Sign_1_0/design_1_SW_follow_input_Sign_1_0_sim_netlist.vhdl
-- Design      : design_1_SW_follow_input_Sign_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SW_follow_input_Sign_1_0_SW_follow_input_Signal_Modes is
  port (
    in_sig_sync : out STD_LOGIC;
    out_sig : out STD_LOGIC;
    mode_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC;
    in_sig : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SW_follow_input_Sign_1_0_SW_follow_input_Signal_Modes : entity is "SW_follow_input_Signal_Modes";
end design_1_SW_follow_input_Sign_1_0_SW_follow_input_Signal_Modes;

architecture STRUCTURE of design_1_SW_follow_input_Sign_1_0_SW_follow_input_Signal_Modes is
  signal em_sync1 : STD_LOGIC;
  signal em_sync1_i_1_n_0 : STD_LOGIC;
  signal em_sync2_i_1_n_0 : STD_LOGIC;
  signal \^in_sig_sync\ : STD_LOGIC;
  signal out_sig_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of em_sync1_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of out_sig_i_1 : label is "soft_lutpair0";
begin
  in_sig_sync <= \^in_sig_sync\;
em_sync1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_sig,
      I1 => rst,
      O => em_sync1_i_1_n_0
    );
em_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => em_sync1_i_1_n_0,
      Q => em_sync1,
      R => '0'
    );
em_sync2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => em_sync1,
      I1 => rst,
      O => em_sync2_i_1_n_0
    );
em_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => em_sync2_i_1_n_0,
      Q => \^in_sig_sync\,
      R => '0'
    );
out_sig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^in_sig_sync\,
      I1 => mode_sel(0),
      I2 => mode_sel(1),
      I3 => rst,
      O => out_sig_i_1_n_0
    );
out_sig_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_sig_i_1_n_0,
      Q => out_sig,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SW_follow_input_Sign_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    in_sig : in STD_LOGIC;
    mode_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_sig_sync : out STD_LOGIC;
    out_sig : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_SW_follow_input_Sign_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SW_follow_input_Sign_1_0 : entity is "design_1_SW_follow_input_Sign_1_0,SW_follow_input_Signal_Modes,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_SW_follow_input_Sign_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_SW_follow_input_Sign_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_SW_follow_input_Sign_1_0 : entity is "SW_follow_input_Signal_Modes,Vivado 2025.1";
end design_1_SW_follow_input_Sign_1_0;

architecture STRUCTURE of design_1_SW_follow_input_Sign_1_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.design_1_SW_follow_input_Sign_1_0_SW_follow_input_Signal_Modes
     port map (
      clk => clk,
      in_sig => in_sig,
      in_sig_sync => in_sig_sync,
      mode_sel(1 downto 0) => mode_sel(1 downto 0),
      out_sig => out_sig,
      rst => rst
    );
end STRUCTURE;
