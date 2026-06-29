library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity EM_REC_Delay_Duty_ModeTb is
end EM_REC_Delay_Duty_ModeTb;

architecture DUT of EM_REC_Delay_Duty_ModeTb is


  constant ClockFreq      : integer := 12_000_000;            -- 12 MHz
  constant COUNTER_WIDTH  : integer := 16;
  constant ClockPeriod    : time    := 1 sec / ClockFreq;     -- 83.333 ns

  constant EMREC_Freq     : integer := 1000;                  -- 1 kHz
  constant EMREC_Period   : time    := 1 sec / EMREC_Freq;


  signal Clk          : std_logic := '0';
  signal rst          : std_logic := '1';
  signal EM_REC       : std_logic := '0';

  signal pulse_cycles : unsigned(COUNTER_WIDTH-1 downto 0) := (others => '0');
  signal delay_cycles : unsigned(COUNTER_WIDTH-1 downto 0) := (others => '0');

  signal mode_sel     : unsigned(1 downto 0) := "00";  -- 00 normal, 01 force0, 10 force1, 11 bypass

  signal EM_REC_sync  : std_logic;
  signal out_sig      : std_logic;

begin

  i_EM_REC_Del_Du_Mode : entity work.EM_REC_Delay_Duty_Mode(rtl)
    generic map (
      Clock_Freq     => ClockFreq,
      COUNTER_WIDTH  => COUNTER_WIDTH
    )
    port map (
      clk          => Clk,
      rst          => rst,
      EM_REC       => EM_REC,

      delay_cycles => delay_cycles,
      pulse_cycles => pulse_cycles,

      mode_sel     => mode_sel,

      EM_REC_sync  => EM_REC_sync,
      out_sig      => out_sig
    );


  Clk <= not Clk after ClockPeriod/2;


  EM_REC <= not EM_REC after EMREC_Period/2;


  STIM : process
  begin

    rst <= '1';
    mode_sel <= "00";
    pulse_cycles <= (others => '0');
    delay_cycles <= (others => '0');
    wait for 50 us;
    rst <= '0';


    mode_sel <= "00";
    delay_cycles <= to_unsigned(0, COUNTER_WIDTH);
    pulse_cycles <= to_unsigned(5, COUNTER_WIDTH);
    wait for 3 ms;

    mode_sel <= "00";
    delay_cycles <= to_unsigned(20, COUNTER_WIDTH);
    pulse_cycles <= to_unsigned(30, COUNTER_WIDTH);
    wait for 3 ms;

    mode_sel <= "01";

    delay_cycles <= to_unsigned(200, COUNTER_WIDTH);
    pulse_cycles <= to_unsigned(200, COUNTER_WIDTH);
    wait for 3 ms;


    mode_sel <= "10";
    delay_cycles <= to_unsigned(10, COUNTER_WIDTH);
    pulse_cycles <= to_unsigned(10, COUNTER_WIDTH);
    wait for 3 ms;


    mode_sel <= "11";
    wait for 3 ms;


    mode_sel <= "00";
    delay_cycles <= to_unsigned(0, COUNTER_WIDTH);
    pulse_cycles <= to_unsigned(50, COUNTER_WIDTH);
    wait for 3 ms;


    delay_cycles <= to_unsigned(100, COUNTER_WIDTH);
    pulse_cycles <= to_unsigned(100, COUNTER_WIDTH);
    wait for 3 ms;

    wait; -- fin simulation
  end process;

end DUT;