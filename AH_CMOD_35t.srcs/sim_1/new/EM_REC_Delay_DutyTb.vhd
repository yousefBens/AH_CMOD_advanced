library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity EM_REC_Delay_DutyTb is
--  Port ( );
end EM_REC_Delay_DutyTb;

architecture DUT of EM_REC_Delay_DutyTb is

  constant ClockFreq    : integer := 12_000_000;                -- 12 MHz
  constant COUNTER_WIDTH    : integer := 16;                
  constant ClockPeriod  : time    := 1 sec / ClockFreq;         -- 83.333 ns

  constant MREEC_Freq    : integer := 1000;                   -- Signal externe = 10 kHz
  constant MREEC_Period  : time := 1 sec / MREEC_Freq;       -- Période de MREEC


  signal Clk           : std_logic := '0';
  signal rst           : std_logic := '1';
  signal EM_REC         : std_logic := '0';
  signal pulse_cycles       : unsigned(COUNTER_WIDTH - 1 downto 0) := (others => '0'); -- duty %
  signal delay_cycles : unsigned(COUNTER_WIDTH -1 downto 0) := (others => '0'); -- delay %
  signal out_sig       : std_logic;
  signal EM_REC_sync       : std_logic;
begin



  i_EM_REC_Del_Du : entity work.EM_REC_Delay_Duty(rtl)
    generic map (
      Clock_Freq => ClockFreq,
      COUNTER_WIDTH => COUNTER_WIDTH
    )
    port map (
      Clk           => Clk,
      rst           => rst,
      EM_REC         => EM_REC,
      EM_REC_sync         => EM_REC_sync,
      pulse_cycles      => pulse_cycles,       -- 1..100
      delay_cycles => delay_cycles,  -- 0..100
      out_sig       => out_sig
    );


  Clk <= not Clk after ClockPeriod/2;


  EM_REC <= not EM_REC after MREEC_Period / 2;


  STIM : process
  begin

    rst <= '1';
    wait for 50 us;       
    rst <= '0';

    pulse_cycles      <= unsigned(to_unsigned(5, COUNTER_WIDTH));
    delay_cycles <= unsigned(to_unsigned(0,  COUNTER_WIDTH));
    wait for 4 ms;       


    pulse_cycles      <= unsigned(to_unsigned(7, COUNTER_WIDTH));
    delay_cycles <= unsigned(to_unsigned(1, COUNTER_WIDTH));
    wait for 4 ms;


    pulse_cycles      <= unsigned(to_unsigned(10, COUNTER_WIDTH));
    delay_cycles <= unsigned(to_unsigned(2, COUNTER_WIDTH));
    wait for 4 ms;


    pulse_cycles      <= unsigned(to_unsigned(90, COUNTER_WIDTH));
    delay_cycles <= unsigned(to_unsigned(3, COUNTER_WIDTH));
    wait for 4 ms;


    pulse_cycles      <= unsigned(to_unsigned(100, COUNTER_WIDTH));
    delay_cycles <= unsigned(to_unsigned(4,   COUNTER_WIDTH));
    wait for 4 ms;


    pulse_cycles      <= unsigned(to_unsigned(40, COUNTER_WIDTH));
    delay_cycles <= unsigned(to_unsigned(10, COUNTER_WIDTH));
    wait for 4 ms;        
    pulse_cycles      <= unsigned(to_unsigned(70, COUNTER_WIDTH));
    delay_cycles <= unsigned(to_unsigned(60, COUNTER_WIDTH));
    wait for 4 ms;

    pulse_cycles      <= unsigned(to_unsigned(100, COUNTER_WIDTH));
    delay_cycles <= unsigned(to_unsigned(100, COUNTER_WIDTH));
    wait for 4 ms;

    wait; 
  end process;

end DUT;
