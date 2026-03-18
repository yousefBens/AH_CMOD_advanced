library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity EM_RECTb is
--  Port ( );
end EM_RECTb;

architecture DUT of EM_RECTb is
  ------------------------------------------------------------------------
  -- CONSTANTES DE SIMULATION
  ------------------------------------------------------------------------
  constant ClockFreq    : integer := 12_000_000;                -- 12 MHz
  constant ClockPeriod  : time    := 1 sec / ClockFreq;         -- 83.333 ns

  constant MREEC_Freq    : integer := 1000;                   -- Signal externe = 10 kHz
  constant MREEC_Period  : time := 1 sec / MREEC_Freq;       -- Période de MREEC

  ------------------------------------------------------------------------
  -- SIGNALS
  ------------------------------------------------------------------------
  signal Clk           : std_logic := '0';
  signal rst           : std_logic := '1';
  signal EM_REC         : std_logic := '0';
  signal duty_percent      : std_logic_vector(7 downto 0) := (others => '0'); -- duty %
  signal delay_percent : std_logic_vector(7 downto 0) := (others => '0'); -- delay %
  signal pwm_out       : std_logic;
  signal EM_REC_sync       : std_logic;
begin

  ------------------------------------------------------------------------
  -- UUT : instanciation du PWM avec retard programmable
  ------------------------------------------------------------------------
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

  ------------------------------------------------------------------------
  -- HORLOGE 12 MHz
  ------------------------------------------------------------------------
  Clk <= not Clk after ClockPeriod/2;

  ------------------------------------------------------------------------
  -- GENERATEUR DE MREEC AVEC CHANGEMENT DE FREQUENCE EN COURS DE RUN
  -- (1 kHz pendant 8 ms, puis 2 kHz ensuite)
  ------------------------------------------------------------------------
  EM_REC <= not EM_REC after MREEC_Period / 2;

  ------------------------------------------------------------------------
  -- SCENARIO DE TEST
  -- - Reset court
  -- - Balayage duty (10% -> 30% -> 60% -> 90% -> 100%)
  -- - Balayage delay (0% -> 25% -> 50% -> 75%)
  -- - Changement de fréquence MREEC (1 kHz -> 2 kHz) pendant le run
  ------------------------------------------------------------------------
  STIM : process
  begin
    --------------------------------------------------------------------
    -- Phase de reset
    --------------------------------------------------------------------
    rst <= '1';
    wait for 50 us;       -- reset visible quelques cycles
    rst <= '0';

    --------------------------------------------------------------------
    -- Duty = 10%, delay = 0%
    --------------------------------------------------------------------
    duty_percent      <= std_logic_vector(to_unsigned(10, 8));
    delay_percent <= std_logic_vector(to_unsigned(0,  8));
    wait for 4 ms;       -- à 1 kHz ça fait ~4 périodes PWM (PWM = 2*f_MREEC)

    --------------------------------------------------------------------
    -- Duty = 30%, delay = 25%
    --------------------------------------------------------------------
    duty_percent      <= std_logic_vector(to_unsigned(30, 8));
    delay_percent <= std_logic_vector(to_unsigned(1, 8));
    wait for 4 ms;

    --------------------------------------------------------------------
    -- Duty = 60%, delay = 50%
    --------------------------------------------------------------------
    duty_percent      <= std_logic_vector(to_unsigned(60, 8));
    delay_percent <= std_logic_vector(to_unsigned(2, 8));
    wait for 4 ms;

    --------------------------------------------------------------------
    -- Duty = 90%, delay = 75%
    --------------------------------------------------------------------
    duty_percent      <= std_logic_vector(to_unsigned(90, 8));
    delay_percent <= std_logic_vector(to_unsigned(3, 8));
    wait for 4 ms;

    --------------------------------------------------------------------
    -- Duty = 100%, delay = 0% (bord cas)
    --------------------------------------------------------------------
    duty_percent      <= std_logic_vector(to_unsigned(100, 8));
    delay_percent <= std_logic_vector(to_unsigned(4,   8));
    wait for 4 ms;

    --------------------------------------------------------------------
    -- Après ~8 ms de simulation, le générateur MREEC passe à 2 kHz.
    -- On rejoue quelques cas pour vérifier l'adaptation de la période.
    --------------------------------------------------------------------
    duty_percent      <= std_logic_vector(to_unsigned(40, 8));
    delay_percent <= std_logic_vector(to_unsigned(10, 8));
    wait for 4 ms;        -- plus rapide car f_MREEC a doublé → f_PWM = 4 kHz

    duty_percent      <= std_logic_vector(to_unsigned(70, 8));
    delay_percent <= std_logic_vector(to_unsigned(60, 8));
    wait for 4 ms;

    duty_percent      <= std_logic_vector(to_unsigned(100, 8));
    delay_percent <= std_logic_vector(to_unsigned(100, 8));
    wait for 4 ms;

    wait; -- fin
  end process;
end DUT;
