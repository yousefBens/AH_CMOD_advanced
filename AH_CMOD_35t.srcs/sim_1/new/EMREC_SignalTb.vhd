library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity EMREC_SignalTb is
--  Port ( );
end EMREC_SignalTb;

architecture DUT of EMREC_SignalTb is
  constant ClockFreq     : integer := 12_000_000;            -- 12 MHz
  constant ClockPeriod   : time := 1 sec / ClockFreq;        -- Période horloge

  signal Clk        : std_logic := '0';
  signal rst        : std_logic := '1';
  signal freq_val   : unsigned(7 downto 0); --:= to_unsigned(10, 32); -- fréquence MREEC en Hz
  
  signal MREEC_out  : std_logic;
begin

  i_EMREC : entity work.EMREC_Signal(rtl)
  generic map (
    Clock_Freq => ClockFreq
  )
  port map (
    Clk       => Clk,
    rst       => rst,
    freq_val     => freq_val,
    MREEC_out  => MREEC_out
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
    
    wait for 200 ms;
    freq_val <= to_unsigned(1000, 8) ;    
    
    wait; -- fin de simulation
  end process;

end DUT;
