library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity receive_signalTb is
end receive_signalTb;

architecture DUT of receive_signalTb is

  ------------------------------------------------------------------------
  -- Constantes horloge
  ------------------------------------------------------------------------
  constant ClockFreq   : integer := 12_000_000;          -- 12 MHz
  constant ClockPeriod : time    := 1 sec / ClockFreq;

  ------------------------------------------------------------------------
  -- Constantes IP (doivent matcher tes generics)
  ------------------------------------------------------------------------
  constant TIMEOUT_MS  : integer := 10;  -- présent=1 si toggle récent, sinon 0

  ------------------------------------------------------------------------
  -- Signaux TB
  ------------------------------------------------------------------------
  signal Clk            : std_logic := '0';
  signal rst            : std_logic := '1';
  signal Signal_in      : std_logic := '0';

  signal Signal_sync    : std_logic;
  signal Signal_present : std_logic;

begin

  ------------------------------------------------------------------------
  -- UUT : receive_signal (version avec Signal_present)
  ------------------------------------------------------------------------
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

  ------------------------------------------------------------------------
  -- Horloge 12 MHz
  ------------------------------------------------------------------------
  Clk <= not Clk after ClockPeriod / 2;

  ------------------------------------------------------------------------
  -- RESET
  ------------------------------------------------------------------------
  p_reset : process
  begin
    rst <= '1';
    wait for 50 us;
    rst <= '0';
    wait;
  end process;

  ------------------------------------------------------------------------
  -- STIMULI : scénario complet
  ------------------------------------------------------------------------
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

    --------------------------------------------------------------------
    -- 1) Signal présent : 1 kHz pendant 30 ms
    --------------------------------------------------------------------
    drive_square(1000, 30 ms);

    --------------------------------------------------------------------
    -- 2) Coupure : Signal figé à 0 pendant 30 ms
    --    => Signal_present doit tomber à 0 après ~TIMEOUT_MS
    --------------------------------------------------------------------
    Signal_in <= '0';
    wait for 30 ms;

    --------------------------------------------------------------------
    -- 3) Signal présent : 2 kHz pendant 30 ms
    --------------------------------------------------------------------
    drive_square(2000, 30 ms);

    --------------------------------------------------------------------
    -- 4) Signal figé à 1 pendant 30 ms
    --    => plus de transitions => present doit retomber à 0 après timeout
    --------------------------------------------------------------------
    Signal_in <= '1';
    wait for 30 ms;

    --------------------------------------------------------------------
    -- Fin
    --------------------------------------------------------------------
    wait;
  end process;

end DUT;