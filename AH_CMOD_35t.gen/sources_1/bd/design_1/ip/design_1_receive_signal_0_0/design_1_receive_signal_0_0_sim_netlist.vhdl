-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Wed Mar 18 15:19:51 2026
-- Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/yousef/Vivado_workspace/AH_CMOD_35t/AH_CMOD_35t.gen/sources_1/bd/design_1/ip/design_1_receive_signal_0_0/design_1_receive_signal_0_0_sim_netlist.vhdl
-- Design      : design_1_receive_signal_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_receive_signal_0_0_receive_signal is
  port (
    Signal_sync : out STD_LOGIC;
    Signal_present : out STD_LOGIC;
    rst : in STD_LOGIC;
    Signal_in : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_receive_signal_0_0_receive_signal : entity is "receive_signal";
end design_1_receive_signal_0_0_receive_signal;

architecture STRUCTURE of design_1_receive_signal_0_0_receive_signal is
  signal \^signal_present\ : STD_LOGIC;
  signal \^signal_sync\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 23 downto 0 );
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
  signal \minusOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_2\ : STD_LOGIC;
  signal \minusOp_carry__4_n_3\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_i_4_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal present_r_i_1_n_0 : STD_LOGIC;
  signal s1 : STD_LOGIC;
  signal s2_d : STD_LOGIC;
  signal \timeout_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_cnt[20]_i_3_n_0\ : STD_LOGIC;
  signal \timeout_cnt[20]_i_4_n_0\ : STD_LOGIC;
  signal \timeout_cnt[20]_i_5_n_0\ : STD_LOGIC;
  signal \timeout_cnt[20]_i_6_n_0\ : STD_LOGIC;
  signal \timeout_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_cnt[23]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \timeout_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_minusOp_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of minusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__4\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \timeout_cnt[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \timeout_cnt[15]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \timeout_cnt[16]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \timeout_cnt[21]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \timeout_cnt[22]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \timeout_cnt[23]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \timeout_cnt[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \timeout_cnt[9]_i_1\ : label is "soft_lutpair3";
begin
  Signal_present <= \^signal_present\;
  Signal_sync <= \^signal_sync\;
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => \timeout_cnt_reg_n_0_[0]\,
      DI(3) => \timeout_cnt_reg_n_0_[4]\,
      DI(2) => \timeout_cnt_reg_n_0_[3]\,
      DI(1) => \timeout_cnt_reg_n_0_[2]\,
      DI(0) => \timeout_cnt_reg_n_0_[1]\,
      O(3 downto 0) => minusOp(4 downto 1),
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
      DI(3) => \timeout_cnt_reg_n_0_[8]\,
      DI(2) => \timeout_cnt_reg_n_0_[7]\,
      DI(1) => \timeout_cnt_reg_n_0_[6]\,
      DI(0) => \timeout_cnt_reg_n_0_[5]\,
      O(3 downto 0) => minusOp(8 downto 5),
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
      I0 => \timeout_cnt_reg_n_0_[8]\,
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[7]\,
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[6]\,
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[5]\,
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
      DI(3) => \timeout_cnt_reg_n_0_[12]\,
      DI(2) => \timeout_cnt_reg_n_0_[11]\,
      DI(1) => \timeout_cnt_reg_n_0_[10]\,
      DI(0) => \timeout_cnt_reg_n_0_[9]\,
      O(3 downto 0) => minusOp(12 downto 9),
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
      I0 => \timeout_cnt_reg_n_0_[12]\,
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[11]\,
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[10]\,
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[9]\,
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \minusOp_carry__2_n_0\,
      CO(2) => \minusOp_carry__2_n_1\,
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \timeout_cnt_reg_n_0_[16]\,
      DI(2) => \timeout_cnt_reg_n_0_[15]\,
      DI(1) => \timeout_cnt_reg_n_0_[14]\,
      DI(0) => \timeout_cnt_reg_n_0_[13]\,
      O(3 downto 0) => minusOp(16 downto 13),
      S(3) => \minusOp_carry__2_i_1_n_0\,
      S(2) => \minusOp_carry__2_i_2_n_0\,
      S(1) => \minusOp_carry__2_i_3_n_0\,
      S(0) => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[16]\,
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[15]\,
      O => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[14]\,
      O => \minusOp_carry__2_i_3_n_0\
    );
\minusOp_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[13]\,
      O => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__2_n_0\,
      CO(3) => \minusOp_carry__3_n_0\,
      CO(2) => \minusOp_carry__3_n_1\,
      CO(1) => \minusOp_carry__3_n_2\,
      CO(0) => \minusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \timeout_cnt_reg_n_0_[20]\,
      DI(2) => \timeout_cnt_reg_n_0_[19]\,
      DI(1) => \timeout_cnt_reg_n_0_[18]\,
      DI(0) => \timeout_cnt_reg_n_0_[17]\,
      O(3 downto 0) => minusOp(20 downto 17),
      S(3) => \minusOp_carry__3_i_1_n_0\,
      S(2) => \minusOp_carry__3_i_2_n_0\,
      S(1) => \minusOp_carry__3_i_3_n_0\,
      S(0) => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[20]\,
      O => \minusOp_carry__3_i_1_n_0\
    );
\minusOp_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[19]\,
      O => \minusOp_carry__3_i_2_n_0\
    );
\minusOp_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[18]\,
      O => \minusOp_carry__3_i_3_n_0\
    );
\minusOp_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[17]\,
      O => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__3_n_0\,
      CO(3 downto 2) => \NLW_minusOp_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_carry__4_n_2\,
      CO(0) => \minusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \timeout_cnt_reg_n_0_[22]\,
      DI(0) => \timeout_cnt_reg_n_0_[21]\,
      O(3) => \NLW_minusOp_carry__4_O_UNCONNECTED\(3),
      O(2 downto 0) => minusOp(23 downto 21),
      S(3) => '0',
      S(2) => \minusOp_carry__4_i_1_n_0\,
      S(1) => \minusOp_carry__4_i_2_n_0\,
      S(0) => \minusOp_carry__4_i_3_n_0\
    );
\minusOp_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[23]\,
      O => \minusOp_carry__4_i_1_n_0\
    );
\minusOp_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[22]\,
      O => \minusOp_carry__4_i_2_n_0\
    );
\minusOp_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[21]\,
      O => \minusOp_carry__4_i_3_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[4]\,
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[3]\,
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[2]\,
      O => minusOp_carry_i_3_n_0
    );
minusOp_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[1]\,
      O => minusOp_carry_i_4_n_0
    );
present_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F666"
    )
        port map (
      I0 => \^signal_sync\,
      I1 => s2_d,
      I2 => p_0_in,
      I3 => \^signal_present\,
      O => present_r_i_1_n_0
    );
present_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => present_r_i_1_n_0,
      Q => \^signal_present\,
      R => rst
    );
s1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Signal_in,
      Q => s1,
      R => rst
    );
s2_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \^signal_sync\,
      Q => s2_d,
      R => rst
    );
s2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => s1,
      Q => \^signal_sync\,
      R => rst
    );
\timeout_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[0]\,
      O => minusOp(0)
    );
\timeout_cnt[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => minusOp(13),
      I1 => \^signal_sync\,
      I2 => s2_d,
      O => \timeout_cnt[13]_i_1_n_0\
    );
\timeout_cnt[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => minusOp(15),
      I1 => \^signal_sync\,
      I2 => s2_d,
      O => \timeout_cnt[15]_i_1_n_0\
    );
\timeout_cnt[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => minusOp(16),
      I1 => \^signal_sync\,
      I2 => s2_d,
      O => \timeout_cnt[16]_i_1_n_0\
    );
\timeout_cnt[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => rst,
      I1 => \^signal_sync\,
      I2 => s2_d,
      O => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \timeout_cnt[20]_i_3_n_0\,
      I1 => \timeout_cnt[20]_i_4_n_0\,
      I2 => \timeout_cnt[20]_i_5_n_0\,
      I3 => \timeout_cnt[20]_i_6_n_0\,
      O => p_0_in
    );
\timeout_cnt[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[2]\,
      I1 => \timeout_cnt_reg_n_0_[0]\,
      I2 => \timeout_cnt_reg_n_0_[1]\,
      I3 => \timeout_cnt_reg_n_0_[5]\,
      I4 => \timeout_cnt_reg_n_0_[3]\,
      I5 => \timeout_cnt_reg_n_0_[4]\,
      O => \timeout_cnt[20]_i_3_n_0\
    );
\timeout_cnt[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[11]\,
      I1 => \timeout_cnt_reg_n_0_[9]\,
      I2 => \timeout_cnt_reg_n_0_[10]\,
      I3 => \timeout_cnt_reg_n_0_[6]\,
      I4 => \timeout_cnt_reg_n_0_[7]\,
      I5 => \timeout_cnt_reg_n_0_[8]\,
      O => \timeout_cnt[20]_i_4_n_0\
    );
\timeout_cnt[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[14]\,
      I1 => \timeout_cnt_reg_n_0_[12]\,
      I2 => \timeout_cnt_reg_n_0_[13]\,
      I3 => \timeout_cnt_reg_n_0_[17]\,
      I4 => \timeout_cnt_reg_n_0_[15]\,
      I5 => \timeout_cnt_reg_n_0_[16]\,
      O => \timeout_cnt[20]_i_5_n_0\
    );
\timeout_cnt[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \timeout_cnt_reg_n_0_[22]\,
      I1 => \timeout_cnt_reg_n_0_[21]\,
      I2 => \timeout_cnt_reg_n_0_[23]\,
      I3 => \timeout_cnt_reg_n_0_[18]\,
      I4 => \timeout_cnt_reg_n_0_[19]\,
      I5 => \timeout_cnt_reg_n_0_[20]\,
      O => \timeout_cnt[20]_i_6_n_0\
    );
\timeout_cnt[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => minusOp(21),
      I1 => \^signal_sync\,
      I2 => s2_d,
      O => \timeout_cnt[21]_i_1_n_0\
    );
\timeout_cnt[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => minusOp(22),
      I1 => \^signal_sync\,
      I2 => s2_d,
      O => \timeout_cnt[22]_i_1_n_0\
    );
\timeout_cnt[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => p_0_in,
      I1 => \^signal_sync\,
      I2 => s2_d,
      O => \timeout_cnt[23]_i_1_n_0\
    );
\timeout_cnt[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => minusOp(23),
      I1 => \^signal_sync\,
      I2 => s2_d,
      O => \timeout_cnt[23]_i_2_n_0\
    );
\timeout_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => minusOp(8),
      I1 => \^signal_sync\,
      I2 => s2_d,
      O => \timeout_cnt[8]_i_1_n_0\
    );
\timeout_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => minusOp(9),
      I1 => \^signal_sync\,
      I2 => s2_d,
      O => \timeout_cnt[9]_i_1_n_0\
    );
\timeout_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(0),
      Q => \timeout_cnt_reg_n_0_[0]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(10),
      Q => \timeout_cnt_reg_n_0_[10]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(11),
      Q => \timeout_cnt_reg_n_0_[11]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(12),
      Q => \timeout_cnt_reg_n_0_[12]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \timeout_cnt[23]_i_1_n_0\,
      D => \timeout_cnt[13]_i_1_n_0\,
      Q => \timeout_cnt_reg_n_0_[13]\,
      R => rst
    );
\timeout_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(14),
      Q => \timeout_cnt_reg_n_0_[14]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \timeout_cnt[23]_i_1_n_0\,
      D => \timeout_cnt[15]_i_1_n_0\,
      Q => \timeout_cnt_reg_n_0_[15]\,
      R => rst
    );
\timeout_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \timeout_cnt[23]_i_1_n_0\,
      D => \timeout_cnt[16]_i_1_n_0\,
      Q => \timeout_cnt_reg_n_0_[16]\,
      R => rst
    );
\timeout_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(17),
      Q => \timeout_cnt_reg_n_0_[17]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(18),
      Q => \timeout_cnt_reg_n_0_[18]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(19),
      Q => \timeout_cnt_reg_n_0_[19]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(1),
      Q => \timeout_cnt_reg_n_0_[1]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(20),
      Q => \timeout_cnt_reg_n_0_[20]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \timeout_cnt[23]_i_1_n_0\,
      D => \timeout_cnt[21]_i_1_n_0\,
      Q => \timeout_cnt_reg_n_0_[21]\,
      R => rst
    );
\timeout_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \timeout_cnt[23]_i_1_n_0\,
      D => \timeout_cnt[22]_i_1_n_0\,
      Q => \timeout_cnt_reg_n_0_[22]\,
      R => rst
    );
\timeout_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \timeout_cnt[23]_i_1_n_0\,
      D => \timeout_cnt[23]_i_2_n_0\,
      Q => \timeout_cnt_reg_n_0_[23]\,
      R => rst
    );
\timeout_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(2),
      Q => \timeout_cnt_reg_n_0_[2]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(3),
      Q => \timeout_cnt_reg_n_0_[3]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(4),
      Q => \timeout_cnt_reg_n_0_[4]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(5),
      Q => \timeout_cnt_reg_n_0_[5]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(6),
      Q => \timeout_cnt_reg_n_0_[6]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(7),
      Q => \timeout_cnt_reg_n_0_[7]\,
      R => \timeout_cnt[20]_i_1_n_0\
    );
\timeout_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \timeout_cnt[23]_i_1_n_0\,
      D => \timeout_cnt[8]_i_1_n_0\,
      Q => \timeout_cnt_reg_n_0_[8]\,
      R => rst
    );
\timeout_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \timeout_cnt[23]_i_1_n_0\,
      D => \timeout_cnt[9]_i_1_n_0\,
      Q => \timeout_cnt_reg_n_0_[9]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_receive_signal_0_0 is
  port (
    Clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Signal_in : in STD_LOGIC;
    Signal_sync : out STD_LOGIC;
    Signal_present : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_receive_signal_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_receive_signal_0_0 : entity is "design_1_receive_signal_0_0,receive_signal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_receive_signal_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_receive_signal_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_receive_signal_0_0 : entity is "receive_signal,Vivado 2025.1";
end design_1_receive_signal_0_0;

architecture STRUCTURE of design_1_receive_signal_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of Clk : signal is "slave Clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.design_1_receive_signal_0_0_receive_signal
     port map (
      Clk => Clk,
      Signal_in => Signal_in,
      Signal_present => Signal_present,
      Signal_sync => Signal_sync,
      rst => rst
    );
end STRUCTURE;
