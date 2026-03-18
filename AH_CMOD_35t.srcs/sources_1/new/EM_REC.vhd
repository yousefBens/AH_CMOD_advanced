library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- PWM cadencé par Clk, déclenché à chaque front montant de MREEC,
-- avec duty 1..100% (duty_percent) et retard/phase 0..100% (delay_percent)
-- rst actif à '1'.
entity EM_REC is
  generic (
    Clock_Freq : positive := 12_000_000  -- Horloge système (Hz), info facultative ici
  );
  port (
    Clk           : in  std_logic;                      -- Horloge principale FPGA
    rst           : in  std_logic;                      -- Reset actif '1'
    EM_REC         : in  std_logic;                      -- Signal externe (déclencheur)
    EM_REC_sync         : out  std_logic;
    duty_percent     : in  std_logic_vector(7 downto 0);   -- Duty en % : 1..100
    delay_percent : in  std_logic_vector(7 downto 0);   -- Retard en % de période : 0..100
    pwm_out       : out std_logic
  );
end EM_REC;

architecture rtl of EM_REC is
  -------------------------------------------------------------------
  -- Signaux internes
  -------------------------------------------------------------------
  signal duty_val       : integer range 1 to 100 := 50;
  signal duty_count     : natural := 0;        -- largeur pulse PWM en cycles
  signal cnt            : natural := 0;        -- compteur de pulse PWM
  signal pwm_active     : std_logic := '0';    -- état "pulse en cours"
  signal period_count   : natural := 1000;     -- demi-période MREEC (=> fsw = 2*fMREEC)

  -- Retard (phase) programmable
  signal delay_val_pct  : integer range 0 to 100 := 0; -- (en %)
  signal delay_target   : natural := 0;        -- nb de cycles à attendre
  signal delay_cnt      : natural := 0;        -- compteur du retard
  signal delay_active   : std_logic := '0';    -- état "attente de retard"

  -- Synchronisation & détection de front
  signal MREEC_sync1, MREEC_sync2 : std_logic := '0';
  signal MREEC_rising : std_logic := '0';

  -- Mesure de la période de MREEC
  signal MREEC_period_cnt : natural := 0;      -- compteur entre deux fronts MREEC
  signal last_MREEC_period : natural := 10000; -- dernière période mesurée (cycles Clk)
begin

  -------------------------------------------------------------------
  -- 1) Synchronisation du signal externe + détection de front montant
  -------------------------------------------------------------------
  process(Clk)
  begin
    if rising_edge(Clk) then
      MREEC_sync1 <= EM_REC;
      MREEC_sync2 <= MREEC_sync1;
    end if;
  end process;

  MREEC_rising <= '1' when (MREEC_sync1 = '1' and MREEC_sync2 = '0') else '0';
  EM_REC_sync <= MREEC_rising;
  -------------------------------------------------------------------
  -- 2) Mesure dynamique de la période de MREEC
  -------------------------------------------------------------------
  process(Clk)
  begin
    if rising_edge(Clk) then
      if rst = '1' then
        MREEC_period_cnt  <= 0;
        last_MREEC_period <= 10000;  -- valeur non nulle (sécurité au démarrage)
      else
        MREEC_period_cnt <= MREEC_period_cnt + 1;

        if MREEC_rising = '1' then
          last_MREEC_period <= MREEC_period_cnt;  -- période mesurée
          MREEC_period_cnt  <= 0;                 -- repart pour la mesure suivante
        end if;
      end if;
    end if;
  end process;

  -------------------------------------------------------------------
  -- 3) PWM + retard programmable (phase) 0..100% de la période PWM
  -------------------------------------------------------------------
  process(Clk)
    variable duty_int  : integer; -- duty lu sur duty_percent
    variable dly_int   : integer; -- delay lu sur delay_percent
  begin
    if rising_edge(Clk) then
      if rst = '1' then
        pwm_out      <= '0';
        cnt          <= 0;
        pwm_active   <= '0';
        delay_cnt    <= 0;
        delay_active <= '0';
      else
        -- fsw = 2 * fMREEC  => période PWM = last_MREEC_period / 2 (en cycles)
        period_count <= last_MREEC_period / 2;

        -- Lecture et clamp du duty 1..100%
        duty_int := to_integer(unsigned(duty_percent));
        if duty_int < 1 then
          duty_val <= 1;
        elsif duty_int > 100 then
          duty_val <= 100;
        else
          duty_val <= duty_int;
        end if;

        -- Lecture et clamp du delay 0..100%
        dly_int := to_integer(unsigned(delay_percent));
        if dly_int < 0 then
          delay_val_pct <= 0;
        elsif dly_int > 100 then
          delay_val_pct <= 100;
        else
          delay_val_pct <= dly_int;
        end if;

        -- Calculs associés
        duty_count   <= (period_count * duty_val) / 100;          -- largeur du pulse
        delay_target <= (period_count * delay_val_pct) / 100;     -- retard avant début du pulse

        -- Séquence : front MREEC -> attente retard -> pulse PWM (duty)
        if MREEC_rising = '1' then
          -- nouveau cycle : on prépare le retard
          delay_active <= '1';
          delay_cnt    <= 0;
          pwm_active   <= '0';
          cnt          <= 0;

        elsif delay_active = '1' then
          -- on attend la fin du retard
          if delay_cnt < delay_target then
            delay_cnt <= delay_cnt + 1;
          else
            delay_active <= '0';
            pwm_active   <= '1';  -- délai écoulé -> lancer l'impulsion PWM
            cnt          <= 0;
          end if;

        elsif pwm_active = '1' then
          -- génération de l'impulsion PWM pendant "duty_count" cycles
          if cnt < duty_count then
            cnt <= cnt + 1;
          else
            pwm_active <= '0';
          end if;
        end if;

        -- Sortie
        if pwm_active = '1' then
          pwm_out <= '1';
        else
          pwm_out <= '0';
        end if;
      end if;
    end if;
  end process;

end rtl;
