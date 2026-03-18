-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Wed Mar 18 15:17:43 2026
-- Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/yousef/Vivado_workspace/AH_CMOD_35t/AH_CMOD_35t.gen/sources_1/bd/design_1/ip/design_1_SPI_slave_0_0/design_1_SPI_slave_0_0_sim_netlist.vhdl
-- Design      : design_1_SPI_slave_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_slave_0_0_SPI_slave is
  port (
    busy : out STD_LOGIC;
    rx_done : out STD_LOGIC;
    miso_INST_0_i_1 : out STD_LOGIC;
    miso : out STD_LOGIC;
    rx : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC;
    ss_n : in STD_LOGIC;
    Clk : in STD_LOGIC;
    sclk : in STD_LOGIC;
    mosi : in STD_LOGIC;
    miso_INST_0_i_1_0 : in STD_LOGIC;
    rx_enable : in STD_LOGIC;
    tx : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_slave_0_0_SPI_slave : entity is "SPI_slave";
end design_1_SPI_slave_0_0_SPI_slave;

architecture STRUCTURE of design_1_SPI_slave_0_0_SPI_slave is
  signal \/i__n_0\ : STD_LOGIC;
  signal busy0 : STD_LOGIC;
  signal miso_tristate_oe_i_1_n_0 : STD_LOGIC;
  signal miso_tristate_oe_reg_n_0 : STD_LOGIC;
  signal mosi_meta : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rxBuffer[15]_i_1_n_0\ : STD_LOGIC;
  signal \rxBuffer_reg_n_0_[15]\ : STD_LOGIC;
  signal rx_done_i_1_n_0 : STD_LOGIC;
  signal sclk_meta : STD_LOGIC;
  signal sclk_prev : STD_LOGIC;
  signal sclk_sync : STD_LOGIC;
  signal ss_meta : STD_LOGIC;
  signal ss_prev : STD_LOGIC;
  signal ss_sync : STD_LOGIC;
  signal txBuffer_n_0 : STD_LOGIC;
  signal \txBuffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \txBuffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of miso_INST_0_i_2 : label is "soft_lutpair0";
begin
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rx_enable,
      I1 => ss_sync,
      I2 => ss_prev,
      O => \/i__n_0\
    );
busy_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ss_sync,
      O => busy0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => busy0,
      Q => busy,
      R => rst
    );
miso_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => miso_tristate_oe_reg_n_0,
      I1 => miso_INST_0_i_1_0,
      O => miso
    );
miso_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002232"
    )
        port map (
      I0 => miso_INST_0_i_1_0,
      I1 => rst,
      I2 => sclk_prev,
      I3 => sclk_sync,
      I4 => ss_sync,
      O => miso_INST_0_i_1
    );
miso_tristate_oe_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBABAAAA88A8"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => rst,
      I2 => sclk_prev,
      I3 => sclk_sync,
      I4 => ss_sync,
      I5 => miso_tristate_oe_reg_n_0,
      O => miso_tristate_oe_i_1_n_0
    );
miso_tristate_oe_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => miso_tristate_oe_i_1_n_0,
      Q => miso_tristate_oe_reg_n_0,
      R => '0'
    );
mosi_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => mosi,
      Q => mosi_meta,
      R => rst
    );
mosi_sync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => mosi_meta,
      Q => p_0_in(0),
      R => rst
    );
\rxBuffer[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sclk_prev,
      I1 => sclk_sync,
      I2 => ss_sync,
      O => \rxBuffer[15]_i_1_n_0\
    );
\rxBuffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(0),
      Q => p_0_in(1),
      R => rst
    );
\rxBuffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(10),
      Q => p_0_in(11),
      R => rst
    );
\rxBuffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(11),
      Q => p_0_in(12),
      R => rst
    );
\rxBuffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(12),
      Q => p_0_in(13),
      R => rst
    );
\rxBuffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(13),
      Q => p_0_in(14),
      R => rst
    );
\rxBuffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(14),
      Q => p_0_in(15),
      R => rst
    );
\rxBuffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(15),
      Q => \rxBuffer_reg_n_0_[15]\,
      R => rst
    );
\rxBuffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(1),
      Q => p_0_in(2),
      R => rst
    );
\rxBuffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(2),
      Q => p_0_in(3),
      R => rst
    );
\rxBuffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(3),
      Q => p_0_in(4),
      R => rst
    );
\rxBuffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(4),
      Q => p_0_in(5),
      R => rst
    );
\rxBuffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(5),
      Q => p_0_in(6),
      R => rst
    );
\rxBuffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(6),
      Q => p_0_in(7),
      R => rst
    );
\rxBuffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(7),
      Q => p_0_in(8),
      R => rst
    );
\rxBuffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(8),
      Q => p_0_in(9),
      R => rst
    );
\rxBuffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \rxBuffer[15]_i_1_n_0\,
      D => p_0_in(9),
      Q => p_0_in(10),
      R => rst
    );
rx_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ss_prev,
      I1 => ss_sync,
      I2 => rst,
      O => rx_done_i_1_n_0
    );
rx_done_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => rx_done_i_1_n_0,
      Q => rx_done,
      R => '0'
    );
\rx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(1),
      Q => rx(0),
      R => rst
    );
\rx_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(11),
      Q => rx(10),
      R => rst
    );
\rx_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(12),
      Q => rx(11),
      R => rst
    );
\rx_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(13),
      Q => rx(12),
      R => rst
    );
\rx_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(14),
      Q => rx(13),
      R => rst
    );
\rx_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(15),
      Q => rx(14),
      R => rst
    );
\rx_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => \rxBuffer_reg_n_0_[15]\,
      Q => rx(15),
      R => rst
    );
\rx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(2),
      Q => rx(1),
      R => rst
    );
\rx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(3),
      Q => rx(2),
      R => rst
    );
\rx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(4),
      Q => rx(3),
      R => rst
    );
\rx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(5),
      Q => rx(4),
      R => rst
    );
\rx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(6),
      Q => rx(5),
      R => rst
    );
\rx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(7),
      Q => rx(6),
      R => rst
    );
\rx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(8),
      Q => rx(7),
      R => rst
    );
\rx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(9),
      Q => rx(8),
      R => rst
    );
\rx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \/i__n_0\,
      D => p_0_in(10),
      Q => rx(9),
      R => rst
    );
sclk_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => sclk,
      Q => sclk_meta,
      R => rst
    );
sclk_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => sclk_sync,
      Q => sclk_prev,
      R => rst
    );
sclk_sync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => sclk_meta,
      Q => sclk_sync,
      R => rst
    );
ss_meta_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => ss_n,
      Q => ss_meta,
      S => rst
    );
ss_prev_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => ss_sync,
      Q => ss_prev,
      S => rst
    );
ss_sync_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => ss_meta,
      Q => ss_sync,
      S => rst
    );
txBuffer: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5510"
    )
        port map (
      I0 => ss_sync,
      I1 => sclk_sync,
      I2 => sclk_prev,
      I3 => ss_prev,
      O => txBuffer_n_0
    );
\txBuffer[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(0),
      O => p_1_in(0)
    );
\txBuffer[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[9]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(10),
      O => p_1_in(10)
    );
\txBuffer[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[10]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(11),
      O => p_1_in(11)
    );
\txBuffer[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[11]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(12),
      O => p_1_in(12)
    );
\txBuffer[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[12]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(13),
      O => p_1_in(13)
    );
\txBuffer[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[13]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(14),
      O => p_1_in(14)
    );
\txBuffer[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[14]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(15),
      O => p_1_in(15)
    );
\txBuffer[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[0]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(1),
      O => p_1_in(1)
    );
\txBuffer[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[1]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(2),
      O => p_1_in(2)
    );
\txBuffer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[2]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(3),
      O => p_1_in(3)
    );
\txBuffer[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[3]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(4),
      O => p_1_in(4)
    );
\txBuffer[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[4]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(5),
      O => p_1_in(5)
    );
\txBuffer[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[5]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(6),
      O => p_1_in(6)
    );
\txBuffer[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[6]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(7),
      O => p_1_in(7)
    );
\txBuffer[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[7]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(8),
      O => p_1_in(8)
    );
\txBuffer[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \txBuffer_reg_n_0_[8]\,
      I1 => sclk_prev,
      I2 => sclk_sync,
      I3 => tx(9),
      O => p_1_in(9)
    );
\txBuffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(0),
      Q => \txBuffer_reg_n_0_[0]\,
      R => rst
    );
\txBuffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(10),
      Q => \txBuffer_reg_n_0_[10]\,
      R => rst
    );
\txBuffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(11),
      Q => \txBuffer_reg_n_0_[11]\,
      R => rst
    );
\txBuffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(12),
      Q => \txBuffer_reg_n_0_[12]\,
      R => rst
    );
\txBuffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(13),
      Q => \txBuffer_reg_n_0_[13]\,
      R => rst
    );
\txBuffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(14),
      Q => \txBuffer_reg_n_0_[14]\,
      R => rst
    );
\txBuffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(15),
      Q => p_0_in_0(0),
      R => rst
    );
\txBuffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(1),
      Q => \txBuffer_reg_n_0_[1]\,
      R => rst
    );
\txBuffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(2),
      Q => \txBuffer_reg_n_0_[2]\,
      R => rst
    );
\txBuffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(3),
      Q => \txBuffer_reg_n_0_[3]\,
      R => rst
    );
\txBuffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(4),
      Q => \txBuffer_reg_n_0_[4]\,
      R => rst
    );
\txBuffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(5),
      Q => \txBuffer_reg_n_0_[5]\,
      R => rst
    );
\txBuffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(6),
      Q => \txBuffer_reg_n_0_[6]\,
      R => rst
    );
\txBuffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(7),
      Q => \txBuffer_reg_n_0_[7]\,
      R => rst
    );
\txBuffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(8),
      Q => \txBuffer_reg_n_0_[8]\,
      R => rst
    );
\txBuffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => txBuffer_n_0,
      D => p_1_in(9),
      Q => \txBuffer_reg_n_0_[9]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_slave_0_0 is
  port (
    Clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    cpol : in STD_LOGIC;
    cpha : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss_n : in STD_LOGIC;
    mosi : in STD_LOGIC;
    miso : out STD_LOGIC;
    rx_enable : in STD_LOGIC;
    tx : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx : out STD_LOGIC_VECTOR ( 15 downto 0 );
    busy : out STD_LOGIC;
    rx_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_SPI_slave_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SPI_slave_0_0 : entity is "design_1_SPI_slave_0_0,SPI_slave,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_SPI_slave_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_SPI_slave_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_SPI_slave_0_0 : entity is "SPI_slave,Vivado 2025.1";
end design_1_SPI_slave_0_0;

architecture STRUCTURE of design_1_SPI_slave_0_0 is
  signal U0_n_2 : STD_LOGIC;
  signal miso_INST_0_i_1_n_0 : STD_LOGIC;
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
U0: entity work.design_1_SPI_slave_0_0_SPI_slave
     port map (
      Clk => Clk,
      busy => busy,
      miso => miso,
      miso_INST_0_i_1 => U0_n_2,
      miso_INST_0_i_1_0 => miso_INST_0_i_1_n_0,
      mosi => mosi,
      rst => rst,
      rx(15 downto 0) => rx(15 downto 0),
      rx_done => rx_done,
      rx_enable => rx_enable,
      sclk => sclk,
      ss_n => ss_n,
      tx(15 downto 0) => tx(15 downto 0)
    );
miso_INST_0_i_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => U0_n_2,
      Q => miso_INST_0_i_1_n_0,
      R => '0'
    );
end STRUCTURE;
