library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity receive_signalTb is
end receive_signalTb;

architecture DUT of receive_signalTb is


  constant ClockFreq   : integer := 12_000_000;          -- 12 MHz
  constant ClockPeriod : time    := 1 sec / ClockFreq;


  constant TIMEOUT_MS  : integer := 10; 

  signal Clk            : std_logic := '0';
  signal rst            : std_logic := '1';
  signal Signal_in      : std_logic := '0';

  signal Signal_sync    : std_logic;
  signal Signal_present : std_logic;

begin


  i_receive_signal : entity work.receive_signal(rtl)
    generic map (
      CLK_FREQ_HZ   => ClockFreq,
      TIMEOUT_MS    => TIMEOUT_MS,
      COUNTER_WIDTH => 24
    )
    port map (
      Clk            => Clk,
      rst            => rst,
      Signal_in      => Signal_in,
      Signal_sync    => Signal_sync,
      Signal_present => Signal_present
    );


  Clk <= not Clk after ClockPeriod / 2;


  p_reset : process
  begin
    rst <= '1';
    wait for 50 us;
    rst <= '0';
    wait;
  end process;


  p_stim : process
    procedure drive_square(freq_hz : integer; duration : time) is
      constant T : time := 1 sec / freq_hz;
      variable t_acc : time := 0 ns;
    begin
      while t_acc < duration loop
        Signal_in <= '1';
        wait for T/2;
        Signal_in <= '0';
        wait for T/2;
        t_acc := t_acc + T;
      end loop;
    end procedure;
  begin
    wait until rst = '0';


    drive_square(1000, 30 ms);


    Signal_in <= '0';
    wait for 30 ms;


    drive_square(2000, 30 ms);


    Signal_in <= '1';
    wait for 30 ms;


    wait;
  end process;

end DUT;