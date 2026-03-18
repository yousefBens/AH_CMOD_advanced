library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity EM_REC_Delay_Duty is
  generic (
    Clock_Freq : positive := 12_000_000;  -- Horloge système (Hz), info facultative ici
    COUNTER_WIDTH : positive := 16  -- nombre de bits pour les compteurss
  );
  port (
    clk           : in  std_logic;  -- horloge FPGA
    rst           : in  std_logic;  -- reset synchro actif à '1'

    EM_REC     : in  std_logic;  -- signal EM_REC "brut" venant de l'extérieur

    -- paramètres en N coups d'horloge
    delay_cycles  : in  unsigned(COUNTER_WIDTH-1 downto 0); -- retard avant sortie=1
    pulse_cycles  : in  unsigned(COUNTER_WIDTH-1 downto 0); -- durée pendant laquelle sortie=1

    EM_REC_sync   : out std_logic;  -- EM_REC synchronisé sur clk (optionnel)
    out_sig       : out std_logic   -- signal de sortie retardé et élargi
  );
end EM_REC_Delay_Duty;

architecture rtl of EM_REC_Delay_Duty is
  -- synchronisation 2 flip-flops
  signal em_sync1, em_sync2 : std_logic := '0';

  -- pulse de 1 cycle sur front montant synchro
  signal em_rising : std_logic := '0';

  signal delay_cnt  : unsigned(COUNTER_WIDTH-1 downto 0) := (others => '0');
  signal pulse_cnt  : unsigned(COUNTER_WIDTH-1 downto 0) := (others => '0');
  signal delay_active       : std_logic := '0';
  signal pulse_active       : std_logic := '0';
begin

  ---------------------------------------------------------------------------
  -- 1) Synchronisation de EM_REC sur clk
  ---------------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        em_sync1 <= '0';
        em_sync2 <= '0';
      else
        em_sync1 <= EM_REC;
        em_sync2 <= em_sync1;
      end if;
    end if;
  end process;

  EM_REC_sync <= em_sync2;

  -- Détection de front montant (synchrone)
  em_rising <= '1' when (em_sync1 = '1' and em_sync2 = '0') else '0';

  ---------------------------------------------------------------------------
  -- 2) Retard + largeur en nombre de cycles
  ---------------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        delay_cnt    <= (others => '0');
        pulse_cnt    <= (others => '0');
        delay_active <= '0';
        pulse_active <= '0';
        out_sig      <= '0';

      else

        -- 1) Nouveau front montant de EM_REC_sync ?
        if (em_rising = '1') and (delay_active = '0') and (pulse_active = '0') then

          if delay_cycles = 0 then
            -- pas de retard : on démarre directement le pulse
            pulse_active <= '1';
            pulse_cnt    <= (others => '0');
            out_sig      <= '1';  -- 1er cycle du pulse dès maintenant
          else
            -- retard demandé : on commence la phase de delay
            delay_active <= '1';
            delay_cnt    <= (others => '0');
            out_sig      <= '0';
          end if;

        -- 2) Phase de retard
        elsif delay_active = '1' then

          if delay_cnt = delay_cycles - 1 then
            -- retard terminé -> on lance le pulse
            delay_active <= '0';
            pulse_active <= '1';
            pulse_cnt    <= (others => '0');
            out_sig      <= '1';  -- 1er cycle du pulse
          else
            delay_cnt <= delay_cnt + 1;
            out_sig   <= '0';
          end if;

        -- 3) Phase de pulse (sortie à 1 pendant pulse_cycles cycles)
        elsif pulse_active = '1' then

          if pulse_cnt = pulse_cycles - 1 then
            pulse_active <= '0';
            out_sig      <= '0';
          else
            pulse_cnt <= pulse_cnt + 1;
            out_sig   <= '1';
          end if;

        -- 4) Rien en cours
        else
          out_sig <= '0';
        end if;

      end if;
    end if;
  end process;
end rtl;
