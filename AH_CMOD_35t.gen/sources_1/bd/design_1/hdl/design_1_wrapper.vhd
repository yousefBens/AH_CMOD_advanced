--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
--Date        : Wed Mar 18 15:57:18 2026
--Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    Clk : in STD_LOGIC;
    Cswitch_Rx : out STD_LOGIC;
    DSA_P : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LNA : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Tx_Rx_switch : out STD_LOGIC;
    V1_V2_RX : out STD_LOGIC_VECTOR ( 1 downto 0 );
    V1_V2_TX : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Vcomp1 : in STD_LOGIC;
    Vcomp2 : in STD_LOGIC;
    Vcomp3 : in STD_LOGIC;
    Vcomp4 : in STD_LOGIC;
    Vcomp5 : in STD_LOGIC;
    Vcomp6 : in STD_LOGIC;
    btn : in STD_LOGIC;
    em_rec_real_in : in STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    rst : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_sclk : in STD_LOGIC;
    spi_ss_n : in STD_LOGIC;
    sw1 : out STD_LOGIC;
    sw2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sw3 : out STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    uart_txd_in : in STD_LOGIC;
    vauxn4 : in STD_LOGIC;
    vauxp4 : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    Clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    uart_txd_in : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    led1 : out STD_LOGIC;
    spi_sclk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    spi_ss_n : in STD_LOGIC;
    Tx_Rx_switch : out STD_LOGIC;
    Cswitch_Rx : out STD_LOGIC;
    em_rec_real_in : in STD_LOGIC;
    V1_V2_TX : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Vcomp1 : in STD_LOGIC;
    Vcomp2 : in STD_LOGIC;
    vauxn4 : in STD_LOGIC;
    vauxp4 : in STD_LOGIC;
    Vcomp3 : in STD_LOGIC;
    Vcomp4 : in STD_LOGIC;
    Vcomp5 : in STD_LOGIC;
    Vcomp6 : in STD_LOGIC;
    btn : in STD_LOGIC;
    V1_V2_RX : out STD_LOGIC_VECTOR ( 1 downto 0 );
    LNA : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DSA_P : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led2 : out STD_LOGIC;
    sw1 : out STD_LOGIC;
    sw3 : out STD_LOGIC;
    sw2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      Clk => Clk,
      Cswitch_Rx => Cswitch_Rx,
      DSA_P(3 downto 0) => DSA_P(3 downto 0),
      LNA(2 downto 0) => LNA(2 downto 0),
      Tx_Rx_switch => Tx_Rx_switch,
      V1_V2_RX(1 downto 0) => V1_V2_RX(1 downto 0),
      V1_V2_TX(1 downto 0) => V1_V2_TX(1 downto 0),
      Vcomp1 => Vcomp1,
      Vcomp2 => Vcomp2,
      Vcomp3 => Vcomp3,
      Vcomp4 => Vcomp4,
      Vcomp5 => Vcomp5,
      Vcomp6 => Vcomp6,
      btn => btn,
      em_rec_real_in => em_rec_real_in,
      led1 => led1,
      led2 => led2,
      rst => rst,
      spi_miso => spi_miso,
      spi_mosi => spi_mosi,
      spi_sclk => spi_sclk,
      spi_ss_n => spi_ss_n,
      sw1 => sw1,
      sw2(0) => sw2(0),
      sw3 => sw3,
      uart_rxd_out => uart_rxd_out,
      uart_txd_in => uart_txd_in,
      vauxn4 => vauxn4,
      vauxp4 => vauxp4
    );
end STRUCTURE;
