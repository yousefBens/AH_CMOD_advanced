
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity debug_signalTb is
--  Port ( );
end debug_signalTb;

architecture DUT of debug_signalTb is
  constant ClockFreq     : integer := 12_000_000;            -- 12 MHz
  constant ClockPeriod   : time := 1 sec / ClockFreq;        -- Période horloge
  
  signal Clk           : std_logic := '0';
  signal rst           : std_logic := '1';
  signal sig           : std_logic;
begin
  ------------------------------------------------------------------------
  -- UUT : instanciation du PWM avec retard programmable
  ------------------------------------------------------------------------
  i_DEB_SEG : entity work.debug_signal(rtl)
    generic map (
      Clock_Freq => ClockFreq
    )
    port map (
      Clk           => Clk,
      rst           => rst,
      sig       => sig
    );
    Clk <= not Clk after ClockPeriod / 2;
  ------------------------------------------------------------------------
  -- PROCESS DE TEST
  ------------------------------------------------------------------------
  process
  begin
    -- Phase de reset
    rst <= '1';
    wait for 50 ms;
    rst <= '0';
    
    
    wait; -- fin de simulation
  end process;
end DUT;
