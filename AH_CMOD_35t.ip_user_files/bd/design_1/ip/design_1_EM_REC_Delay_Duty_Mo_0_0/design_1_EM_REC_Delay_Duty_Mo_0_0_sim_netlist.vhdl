-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Mon Mar  9 14:21:33 2026
-- Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/yousef/Vivado_workspace/AH_CMOD_35t/AH_CMOD_35t.gen/sources_1/bd/design_1/ip/design_1_EM_REC_Delay_Duty_Mo_0_0/design_1_EM_REC_Delay_Duty_Mo_0_0_sim_netlist.vhdl
-- Design      : design_1_EM_REC_Delay_Duty_Mo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_EM_REC_Delay_Duty_Mo_0_0_EM_REC_Delay_Duty_Mode is
  port (
    em_sync2_reg_0 : out STD_LOGIC;
    out_sig : out STD_LOGIC;
    clk : in STD_LOGIC;
    delay_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pulse_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC;
    mode_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    EM_REC : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_EM_REC_Delay_Duty_Mo_0_0_EM_REC_Delay_Duty_Mode : entity is "EM_REC_Delay_Duty_Mode";
end design_1_EM_REC_Delay_Duty_Mo_0_0_EM_REC_Delay_Duty_Mode;

architecture STRUCTURE of design_1_EM_REC_Delay_Duty_Mo_0_0_EM_REC_Delay_Duty_Mode is
  signal delay_active_i_1_n_0 : STD_LOGIC;
  signal delay_active_i_2_n_0 : STD_LOGIC;
  signal delay_active_i_3_n_0 : STD_LOGIC;
  signal delay_active_i_5_n_0 : STD_LOGIC;
  signal delay_active_i_6_n_0 : STD_LOGIC;
  signal delay_active_i_7_n_0 : STD_LOGIC;
  signal delay_active_i_8_n_0 : STD_LOGIC;
  signal delay_active_reg_n_0 : STD_LOGIC;
  signal \delay_cnt1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \delay_cnt1_carry__0_n_3\ : STD_LOGIC;
  signal delay_cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal delay_cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal delay_cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal delay_cnt1_carry_i_4_n_0 : STD_LOGIC;
  signal delay_cnt1_carry_n_0 : STD_LOGIC;
  signal delay_cnt1_carry_n_1 : STD_LOGIC;
  signal delay_cnt1_carry_n_2 : STD_LOGIC;
  signal delay_cnt1_carry_n_3 : STD_LOGIC;
  signal \delay_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal delay_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \delay_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal em_sync1 : STD_LOGIC;
  signal em_sync1_i_1_n_0 : STD_LOGIC;
  signal em_sync2_i_1_n_0 : STD_LOGIC;
  signal \^em_sync2_reg_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal minusOp0_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_i_4_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal out_sig_i_1_n_0 : STD_LOGIC;
  signal out_sig_i_2_n_0 : STD_LOGIC;
  signal out_sig_i_3_n_0 : STD_LOGIC;
  signal out_sig_i_4_n_0 : STD_LOGIC;
  signal out_sig_i_5_n_0 : STD_LOGIC;
  signal out_sig_i_6_n_0 : STD_LOGIC;
  signal out_sig_i_7_n_0 : STD_LOGIC;
  signal out_sig_i_8_n_0 : STD_LOGIC;
  signal out_sig_i_9_n_0 : STD_LOGIC;
  signal pulse_active : STD_LOGIC;
  signal pulse_active0 : STD_LOGIC;
  signal pulse_active_i_1_n_0 : STD_LOGIC;
  signal pulse_cnt1 : STD_LOGIC;
  signal \pulse_cnt1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pulse_cnt1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pulse_cnt1_carry__0_n_3\ : STD_LOGIC;
  signal pulse_cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal pulse_cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal pulse_cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal pulse_cnt1_carry_i_4_n_0 : STD_LOGIC;
  signal pulse_cnt1_carry_n_0 : STD_LOGIC;
  signal pulse_cnt1_carry_n_1 : STD_LOGIC;
  signal pulse_cnt1_carry_n_2 : STD_LOGIC;
  signal pulse_cnt1_carry_n_3 : STD_LOGIC;
  signal \pulse_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal pulse_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pulse_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal NLW_delay_cnt1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_delay_cnt1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_delay_cnt1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_delay_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pulse_cnt1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pulse_cnt1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pulse_cnt1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pulse_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of delay_active_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of delay_active_i_4 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of em_sync1_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of em_sync2_i_1 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of minusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__2\ : label is 35;
  attribute SOFT_HLUTNM of out_sig_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of out_sig_i_5 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD of \pulse_cnt_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_cnt_reg[8]_i_1\ : label is 11;
begin
  em_sync2_reg_0 <= \^em_sync2_reg_0\;
delay_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002232"
    )
        port map (
      I0 => delay_active_i_2_n_0,
      I1 => delay_active_i_3_n_0,
      I2 => delay_active_reg_n_0,
      I3 => \delay_cnt1_carry__0_n_2\,
      I4 => pulse_active0,
      O => delay_active_i_1_n_0
    );
delay_active_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => delay_active_reg_n_0,
      I1 => em_sync1,
      I2 => \^em_sync2_reg_0\,
      I3 => pulse_active,
      O => delay_active_i_2_n_0
    );
delay_active_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => delay_active_i_5_n_0,
      I1 => delay_active_i_6_n_0,
      I2 => delay_active_i_7_n_0,
      I3 => delay_active_i_8_n_0,
      O => delay_active_i_3_n_0
    );
delay_active_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => out_sig_i_4_n_0,
      I1 => rst,
      I2 => mode_sel(0),
      O => pulse_active0
    );
delay_active_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delay_cycles(14),
      I1 => delay_cycles(12),
      I2 => delay_cycles(15),
      I3 => delay_cycles(13),
      O => delay_active_i_5_n_0
    );
delay_active_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => delay_cycles(8),
      I1 => delay_cycles(3),
      I2 => delay_cycles(0),
      I3 => delay_cycles(9),
      O => delay_active_i_6_n_0
    );
delay_active_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delay_cycles(5),
      I1 => delay_cycles(2),
      I2 => delay_cycles(4),
      I3 => delay_cycles(1),
      O => delay_active_i_7_n_0
    );
delay_active_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delay_cycles(11),
      I1 => delay_cycles(6),
      I2 => delay_cycles(10),
      I3 => delay_cycles(7),
      O => delay_active_i_8_n_0
    );
delay_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => delay_active_i_1_n_0,
      Q => delay_active_reg_n_0,
      R => '0'
    );
delay_cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => delay_cnt1_carry_n_0,
      CO(2) => delay_cnt1_carry_n_1,
      CO(1) => delay_cnt1_carry_n_2,
      CO(0) => delay_cnt1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_delay_cnt1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => delay_cnt1_carry_i_1_n_0,
      S(2) => delay_cnt1_carry_i_2_n_0,
      S(1) => delay_cnt1_carry_i_3_n_0,
      S(0) => delay_cnt1_carry_i_4_n_0
    );
\delay_cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => delay_cnt1_carry_n_0,
      CO(3 downto 2) => \NLW_delay_cnt1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \delay_cnt1_carry__0_n_2\,
      CO(0) => \delay_cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_delay_cnt1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \delay_cnt1_carry__0_i_1_n_0\,
      S(0) => \delay_cnt1_carry__0_i_2_n_0\
    );
\delay_cnt1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => minusOp0_in(15),
      I1 => delay_cnt_reg(15),
      O => \delay_cnt1_carry__0_i_1_n_0\
    );
\delay_cnt1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_cnt_reg(12),
      I1 => minusOp0_in(12),
      I2 => delay_cnt_reg(13),
      I3 => minusOp0_in(13),
      I4 => minusOp0_in(14),
      I5 => delay_cnt_reg(14),
      O => \delay_cnt1_carry__0_i_2_n_0\
    );
delay_cnt1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_cnt_reg(9),
      I1 => minusOp0_in(9),
      I2 => delay_cnt_reg(10),
      I3 => minusOp0_in(10),
      I4 => minusOp0_in(11),
      I5 => delay_cnt_reg(11),
      O => delay_cnt1_carry_i_1_n_0
    );
delay_cnt1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_cnt_reg(6),
      I1 => minusOp0_in(6),
      I2 => delay_cnt_reg(7),
      I3 => minusOp0_in(7),
      I4 => minusOp0_in(8),
      I5 => delay_cnt_reg(8),
      O => delay_cnt1_carry_i_2_n_0
    );
delay_cnt1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => delay_cnt_reg(3),
      I1 => minusOp0_in(3),
      I2 => delay_cnt_reg(4),
      I3 => minusOp0_in(4),
      I4 => minusOp0_in(5),
      I5 => delay_cnt_reg(5),
      O => delay_cnt1_carry_i_3_n_0
    );
delay_cnt1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => delay_cycles(0),
      I1 => delay_cnt_reg(0),
      I2 => delay_cnt_reg(2),
      I3 => minusOp0_in(2),
      I4 => delay_cnt_reg(1),
      I5 => minusOp0_in(1),
      O => delay_cnt1_carry_i_4_n_0
    );
\delay_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000010"
    )
        port map (
      I0 => pulse_active,
      I1 => \^em_sync2_reg_0\,
      I2 => em_sync1,
      I3 => delay_active_reg_n_0,
      I4 => delay_active_i_3_n_0,
      I5 => pulse_active0,
      O => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \delay_cnt1_carry__0_n_2\,
      I1 => delay_active_i_3_n_0,
      I2 => delay_active_reg_n_0,
      O => \delay_cnt[0]_i_2_n_0\
    );
\delay_cnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_reg(0),
      O => \delay_cnt[0]_i_4_n_0\
    );
\delay_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[0]_i_3_n_7\,
      Q => delay_cnt_reg(0),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \delay_cnt_reg[0]_i_3_n_0\,
      CO(2) => \delay_cnt_reg[0]_i_3_n_1\,
      CO(1) => \delay_cnt_reg[0]_i_3_n_2\,
      CO(0) => \delay_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \delay_cnt_reg[0]_i_3_n_4\,
      O(2) => \delay_cnt_reg[0]_i_3_n_5\,
      O(1) => \delay_cnt_reg[0]_i_3_n_6\,
      O(0) => \delay_cnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => delay_cnt_reg(3 downto 1),
      S(0) => \delay_cnt[0]_i_4_n_0\
    );
\delay_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[8]_i_1_n_5\,
      Q => delay_cnt_reg(10),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[8]_i_1_n_4\,
      Q => delay_cnt_reg(11),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[12]_i_1_n_7\,
      Q => delay_cnt_reg(12),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_delay_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \delay_cnt_reg[12]_i_1_n_1\,
      CO(1) => \delay_cnt_reg[12]_i_1_n_2\,
      CO(0) => \delay_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_cnt_reg[12]_i_1_n_4\,
      O(2) => \delay_cnt_reg[12]_i_1_n_5\,
      O(1) => \delay_cnt_reg[12]_i_1_n_6\,
      O(0) => \delay_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => delay_cnt_reg(15 downto 12)
    );
\delay_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[12]_i_1_n_6\,
      Q => delay_cnt_reg(13),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[12]_i_1_n_5\,
      Q => delay_cnt_reg(14),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[12]_i_1_n_4\,
      Q => delay_cnt_reg(15),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[0]_i_3_n_6\,
      Q => delay_cnt_reg(1),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[0]_i_3_n_5\,
      Q => delay_cnt_reg(2),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[0]_i_3_n_4\,
      Q => delay_cnt_reg(3),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[4]_i_1_n_7\,
      Q => delay_cnt_reg(4),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[0]_i_3_n_0\,
      CO(3) => \delay_cnt_reg[4]_i_1_n_0\,
      CO(2) => \delay_cnt_reg[4]_i_1_n_1\,
      CO(1) => \delay_cnt_reg[4]_i_1_n_2\,
      CO(0) => \delay_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_cnt_reg[4]_i_1_n_4\,
      O(2) => \delay_cnt_reg[4]_i_1_n_5\,
      O(1) => \delay_cnt_reg[4]_i_1_n_6\,
      O(0) => \delay_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => delay_cnt_reg(7 downto 4)
    );
\delay_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[4]_i_1_n_6\,
      Q => delay_cnt_reg(5),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[4]_i_1_n_5\,
      Q => delay_cnt_reg(6),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[4]_i_1_n_4\,
      Q => delay_cnt_reg(7),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[8]_i_1_n_7\,
      Q => delay_cnt_reg(8),
      R => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[4]_i_1_n_0\,
      CO(3) => \delay_cnt_reg[8]_i_1_n_0\,
      CO(2) => \delay_cnt_reg[8]_i_1_n_1\,
      CO(1) => \delay_cnt_reg[8]_i_1_n_2\,
      CO(0) => \delay_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_cnt_reg[8]_i_1_n_4\,
      O(2) => \delay_cnt_reg[8]_i_1_n_5\,
      O(1) => \delay_cnt_reg[8]_i_1_n_6\,
      O(0) => \delay_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => delay_cnt_reg(11 downto 8)
    );
\delay_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \delay_cnt[0]_i_2_n_0\,
      D => \delay_cnt_reg[8]_i_1_n_6\,
      Q => delay_cnt_reg(9),
      R => \delay_cnt[0]_i_1_n_0\
    );
em_sync1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EM_REC,
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
      Q => \^em_sync2_reg_0\,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cycles(1),
      O => \i__carry_i_4_n_0\
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => delay_cycles(0),
      DI(3 downto 0) => delay_cycles(4 downto 1),
      O(3 downto 0) => minusOp0_in(4 downto 1),
      S(3) => minusOp_carry_i_1_n_0,
      S(2) => minusOp_carry_i_2_n_0,
      S(1) => minusOp_carry_i_3_n_0,
      S(0) => minusOp_carry_i_4_n_0
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delay_cycles(8 downto 5),
      O(3 downto 0) => minusOp0_in(8 downto 5),
      S(3) => \minusOp_carry__0_i_1_n_0\,
      S(2) => \minusOp_carry__0_i_2_n_0\,
      S(1) => \minusOp_carry__0_i_3_n_0\,
      S(0) => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(8),
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(7),
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(6),
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(5),
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delay_cycles(12 downto 9),
      O(3 downto 0) => minusOp0_in(12 downto 9),
      S(3) => \minusOp_carry__1_i_1_n_0\,
      S(2) => \minusOp_carry__1_i_2_n_0\,
      S(1) => \minusOp_carry__1_i_3_n_0\,
      S(0) => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(12),
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(11),
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(10),
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(9),
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => delay_cycles(14 downto 13),
      O(3) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => minusOp0_in(15 downto 13),
      S(3) => '0',
      S(2) => \minusOp_carry__2_i_1_n_0\,
      S(1) => \minusOp_carry__2_i_2_n_0\,
      S(0) => \minusOp_carry__2_i_3_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(15),
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(14),
      O => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(13),
      O => \minusOp_carry__2_i_3_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(4),
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(3),
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(2),
      O => minusOp_carry_i_3_n_0
    );
minusOp_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cycles(1),
      O => minusOp_carry_i_4_n_0
    );
\minusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i__carry_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry_n_3\,
      CYINIT => pulse_cycles(0),
      DI(3 downto 0) => pulse_cycles(4 downto 1),
      O(3 downto 0) => minusOp(4 downto 1),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pulse_cycles(8 downto 5),
      O(3 downto 0) => minusOp(8 downto 5),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pulse_cycles(12 downto 9),
      O(3 downto 0) => minusOp(12 downto 9),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(3 downto 2) => \NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => pulse_cycles(14 downto 13),
      O(3) => \NLW_minusOp_inferred__0/i__carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => minusOp(15 downto 13),
      S(3) => '0',
      S(2) => \i__carry__2_i_1_n_0\,
      S(1) => \i__carry__2_i_2_n_0\,
      S(0) => \i__carry__2_i_3_n_0\
    );
out_sig_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAFE"
    )
        port map (
      I0 => out_sig_i_2_n_0,
      I1 => \pulse_cnt[0]_i_2_n_0\,
      I2 => out_sig_i_3_n_0,
      I3 => out_sig_i_4_n_0,
      I4 => out_sig_i_5_n_0,
      O => out_sig_i_1_n_0
    );
out_sig_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => mode_sel(1),
      I1 => \^em_sync2_reg_0\,
      I2 => mode_sel(0),
      O => out_sig_i_2_n_0
    );
out_sig_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0002020000"
    )
        port map (
      I0 => em_sync1,
      I1 => \^em_sync2_reg_0\,
      I2 => pulse_active,
      I3 => \delay_cnt1_carry__0_n_2\,
      I4 => delay_active_i_3_n_0,
      I5 => delay_active_reg_n_0,
      O => out_sig_i_3_n_0
    );
out_sig_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => mode_sel(1),
      I1 => out_sig_i_6_n_0,
      I2 => out_sig_i_7_n_0,
      I3 => out_sig_i_8_n_0,
      I4 => out_sig_i_9_n_0,
      O => out_sig_i_4_n_0
    );
out_sig_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rst,
      I1 => mode_sel(1),
      I2 => mode_sel(0),
      O => out_sig_i_5_n_0
    );
out_sig_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pulse_cycles(6),
      I1 => pulse_cycles(5),
      I2 => pulse_cycles(9),
      I3 => pulse_cycles(3),
      O => out_sig_i_6_n_0
    );
out_sig_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pulse_cycles(14),
      I1 => pulse_cycles(8),
      I2 => pulse_cycles(10),
      I3 => pulse_cycles(1),
      O => out_sig_i_7_n_0
    );
out_sig_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pulse_cycles(13),
      I1 => pulse_cycles(4),
      I2 => pulse_cycles(11),
      I3 => pulse_cycles(2),
      O => out_sig_i_8_n_0
    );
out_sig_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pulse_cycles(12),
      I1 => pulse_cycles(7),
      I2 => pulse_cycles(0),
      I3 => pulse_cycles(15),
      O => out_sig_i_9_n_0
    );
out_sig_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_sig_i_1_n_0,
      Q => out_sig,
      R => '0'
    );
pulse_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FABA"
    )
        port map (
      I0 => out_sig_i_3_n_0,
      I1 => pulse_cnt1,
      I2 => pulse_active,
      I3 => delay_active_reg_n_0,
      I4 => pulse_active0,
      O => pulse_active_i_1_n_0
    );
pulse_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_active_i_1_n_0,
      Q => pulse_active,
      R => '0'
    );
pulse_cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pulse_cnt1_carry_n_0,
      CO(2) => pulse_cnt1_carry_n_1,
      CO(1) => pulse_cnt1_carry_n_2,
      CO(0) => pulse_cnt1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pulse_cnt1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pulse_cnt1_carry_i_1_n_0,
      S(2) => pulse_cnt1_carry_i_2_n_0,
      S(1) => pulse_cnt1_carry_i_3_n_0,
      S(0) => pulse_cnt1_carry_i_4_n_0
    );
\pulse_cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pulse_cnt1_carry_n_0,
      CO(3 downto 2) => \NLW_pulse_cnt1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => pulse_cnt1,
      CO(0) => \pulse_cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pulse_cnt1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \pulse_cnt1_carry__0_i_1_n_0\,
      S(0) => \pulse_cnt1_carry__0_i_2_n_0\
    );
\pulse_cnt1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => minusOp(15),
      I1 => pulse_cnt_reg(15),
      O => \pulse_cnt1_carry__0_i_1_n_0\
    );
\pulse_cnt1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_cnt_reg(12),
      I1 => minusOp(12),
      I2 => pulse_cnt_reg(13),
      I3 => minusOp(13),
      I4 => minusOp(14),
      I5 => pulse_cnt_reg(14),
      O => \pulse_cnt1_carry__0_i_2_n_0\
    );
pulse_cnt1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_cnt_reg(9),
      I1 => minusOp(9),
      I2 => pulse_cnt_reg(10),
      I3 => minusOp(10),
      I4 => minusOp(11),
      I5 => pulse_cnt_reg(11),
      O => pulse_cnt1_carry_i_1_n_0
    );
pulse_cnt1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_cnt_reg(6),
      I1 => minusOp(6),
      I2 => pulse_cnt_reg(7),
      I3 => minusOp(7),
      I4 => minusOp(8),
      I5 => pulse_cnt_reg(8),
      O => pulse_cnt1_carry_i_2_n_0
    );
pulse_cnt1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_cnt_reg(5),
      I1 => minusOp(5),
      I2 => pulse_cnt_reg(3),
      I3 => minusOp(3),
      I4 => minusOp(4),
      I5 => pulse_cnt_reg(4),
      O => pulse_cnt1_carry_i_3_n_0
    );
pulse_cnt1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990000000000990"
    )
        port map (
      I0 => pulse_cnt_reg(1),
      I1 => minusOp(1),
      I2 => pulse_cnt_reg(0),
      I3 => pulse_cycles(0),
      I4 => minusOp(2),
      I5 => pulse_cnt_reg(2),
      O => pulse_cnt1_carry_i_4_n_0
    );
\pulse_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => out_sig_i_3_n_0,
      I1 => pulse_active0,
      O => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pulse_cnt1,
      I1 => pulse_active,
      I2 => delay_active_reg_n_0,
      O => \pulse_cnt[0]_i_2_n_0\
    );
\pulse_cnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cnt_reg(0),
      O => \pulse_cnt[0]_i_4_n_0\
    );
\pulse_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[0]_i_3_n_7\,
      Q => pulse_cnt_reg(0),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pulse_cnt_reg[0]_i_3_n_0\,
      CO(2) => \pulse_cnt_reg[0]_i_3_n_1\,
      CO(1) => \pulse_cnt_reg[0]_i_3_n_2\,
      CO(0) => \pulse_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pulse_cnt_reg[0]_i_3_n_4\,
      O(2) => \pulse_cnt_reg[0]_i_3_n_5\,
      O(1) => \pulse_cnt_reg[0]_i_3_n_6\,
      O(0) => \pulse_cnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => pulse_cnt_reg(3 downto 1),
      S(0) => \pulse_cnt[0]_i_4_n_0\
    );
\pulse_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[8]_i_1_n_5\,
      Q => pulse_cnt_reg(10),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[8]_i_1_n_4\,
      Q => pulse_cnt_reg(11),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[12]_i_1_n_7\,
      Q => pulse_cnt_reg(12),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_pulse_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pulse_cnt_reg[12]_i_1_n_1\,
      CO(1) => \pulse_cnt_reg[12]_i_1_n_2\,
      CO(0) => \pulse_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pulse_cnt_reg[12]_i_1_n_4\,
      O(2) => \pulse_cnt_reg[12]_i_1_n_5\,
      O(1) => \pulse_cnt_reg[12]_i_1_n_6\,
      O(0) => \pulse_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => pulse_cnt_reg(15 downto 12)
    );
\pulse_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[12]_i_1_n_6\,
      Q => pulse_cnt_reg(13),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[12]_i_1_n_5\,
      Q => pulse_cnt_reg(14),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[12]_i_1_n_4\,
      Q => pulse_cnt_reg(15),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[0]_i_3_n_6\,
      Q => pulse_cnt_reg(1),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[0]_i_3_n_5\,
      Q => pulse_cnt_reg(2),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[0]_i_3_n_4\,
      Q => pulse_cnt_reg(3),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[4]_i_1_n_7\,
      Q => pulse_cnt_reg(4),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_cnt_reg[0]_i_3_n_0\,
      CO(3) => \pulse_cnt_reg[4]_i_1_n_0\,
      CO(2) => \pulse_cnt_reg[4]_i_1_n_1\,
      CO(1) => \pulse_cnt_reg[4]_i_1_n_2\,
      CO(0) => \pulse_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pulse_cnt_reg[4]_i_1_n_4\,
      O(2) => \pulse_cnt_reg[4]_i_1_n_5\,
      O(1) => \pulse_cnt_reg[4]_i_1_n_6\,
      O(0) => \pulse_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => pulse_cnt_reg(7 downto 4)
    );
\pulse_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[4]_i_1_n_6\,
      Q => pulse_cnt_reg(5),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[4]_i_1_n_5\,
      Q => pulse_cnt_reg(6),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[4]_i_1_n_4\,
      Q => pulse_cnt_reg(7),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[8]_i_1_n_7\,
      Q => pulse_cnt_reg(8),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_cnt_reg[4]_i_1_n_0\,
      CO(3) => \pulse_cnt_reg[8]_i_1_n_0\,
      CO(2) => \pulse_cnt_reg[8]_i_1_n_1\,
      CO(1) => \pulse_cnt_reg[8]_i_1_n_2\,
      CO(0) => \pulse_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pulse_cnt_reg[8]_i_1_n_4\,
      O(2) => \pulse_cnt_reg[8]_i_1_n_5\,
      O(1) => \pulse_cnt_reg[8]_i_1_n_6\,
      O(0) => \pulse_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => pulse_cnt_reg(11 downto 8)
    );
\pulse_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_cnt[0]_i_2_n_0\,
      D => \pulse_cnt_reg[8]_i_1_n_6\,
      Q => pulse_cnt_reg(9),
      R => \pulse_cnt[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_EM_REC_Delay_Duty_Mo_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    EM_REC : in STD_LOGIC;
    delay_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pulse_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mode_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    EM_REC_sync : out STD_LOGIC;
    out_sig : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_EM_REC_Delay_Duty_Mo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_EM_REC_Delay_Duty_Mo_0_0 : entity is "design_1_EM_REC_Delay_Duty_Mo_0_0,EM_REC_Delay_Duty_Mode,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_EM_REC_Delay_Duty_Mo_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_EM_REC_Delay_Duty_Mo_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_EM_REC_Delay_Duty_Mo_0_0 : entity is "EM_REC_Delay_Duty_Mode,Vivado 2025.1";
end design_1_EM_REC_Delay_Duty_Mo_0_0;

architecture STRUCTURE of design_1_EM_REC_Delay_Duty_Mo_0_0 is
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
U0: entity work.design_1_EM_REC_Delay_Duty_Mo_0_0_EM_REC_Delay_Duty_Mode
     port map (
      EM_REC => EM_REC,
      clk => clk,
      delay_cycles(15 downto 0) => delay_cycles(15 downto 0),
      em_sync2_reg_0 => EM_REC_sync,
      mode_sel(1 downto 0) => mode_sel(1 downto 0),
      out_sig => out_sig,
      pulse_cycles(15 downto 0) => pulse_cycles(15 downto 0),
      rst => rst
    );
end STRUCTURE;
