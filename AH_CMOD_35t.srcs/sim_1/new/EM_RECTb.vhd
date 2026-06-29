library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity EM_RECTb is
--  Port ( );
end EM_RECTb;

architecture DUT of EM_RECTb is

  constant ClockFreq    : integer := 12_000_000;                -- 12 MHz
  constant ClockPeriod  : time    := 1 sec / ClockFreq;         -- 83.333 ns

  constant MREEC_Freq    : integer := 1000;                   -- Signal externe = 10 kHz
  constant MREEC_Period  : time := 1 sec / MREEC_Freq;       -- Période de MREEC


  signal Clk           : std_logic := '0';
  signal rst           : std_logic := '1';
  signal EM_REC         : std_logic := '0';
  signal duty_percent      : std_logic_vector(7 downto 0) := (others => '0'); -- duty %
  signal delay_percent : std_logic_vector(7 downto 0) := (others => '0'); -- delay %
  signal pwm_out       : std_logic;
  signal EM_REC_sync       : std_logic;
begin


  i_EM_REC : entity work.EM_REC(rtl)
    generic map (
      Clock_Freq => ClockFreq
    )
    port map (
      Clk           => Clk,
      rst           => rst,
      EM_REC         => EM_REC,
      EM_REC_sync         => EM_REC_sync,
      duty_percent      => duty_percent,       -- 1..100
      delay_percent => delay_percent,  -- 0..100
      pwm_out       => pwm_out
    );


  Clk <= not Clk after ClockPeriod/2;


  EM_REC <= not EM_REC after MREEC_Period / 2;


  STIM : process
  begin

    rst <= '1';
    wait for 50 us;       
    rst <= '0';


    duty_percent      <= std_logic_vector(to_unsigned(10, 8));
    delay_percent <= std_logic_vector(to_unsigned(0,  8));
    wait for 4 ms;       


    duty_percent      <= std_logic_vector(to_unsigned(30, 8));
    delay_percent <= std_logic_vector(to_unsigned(1, 8));
    wait for 4 ms;


    duty_percent      <= std_logic_vector(to_unsigned(60, 8));
    delay_percent <= std_logic_vector(to_unsigned(2, 8));
    wait for 4 ms;


    duty_percent      <= std_logic_vector(to_unsigned(90, 8));
    delay_percent <= std_logic_vector(to_unsigned(3, 8));
    wait for 4 ms;


    duty_percent      <= std_logic_vector(to_unsigned(100, 8));
    delay_percent <= std_logic_vector(to_unsigned(4,   8));
    wait for 4 ms;


    duty_percent      <= std_logic_vector(to_unsigned(40, 8));
    delay_percent <= std_logic_vector(to_unsigned(10, 8));
    wait for 4 ms;       

    duty_percent      <= std_logic_vector(to_unsigned(70, 8));
    delay_percent <= std_logic_vector(to_unsigned(60, 8));
    wait for 4 ms;

    duty_percent      <= std_logic_vector(to_unsigned(100, 8));
    delay_percent <= std_logic_vector(to_unsigned(100, 8));
    wait for 4 ms;

    wait; -- fin
  end process;
end DUT;
