library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- ==========================================================================
--  SPI_slave : esclave SPI mode 0 (CPOL=0, CPHA=0) sans utiliser sclk comme
--  horloge. Tout est cadencé par Clk (horloge FPGA, 12 MHz).
--
--  - Clk / rst : horloge et reset système (comme EM_REC)
--  - sclk, ss_n, mosi, miso : lignes SPI
--  - tx       : mot parallèle à envoyer au master (chargé au début de la trame)
--  - rx       : dernier mot reçu
--  - rx_done  : pulse 1 coup d'horloge quand une trame complète est reçue
--  - busy     : '1' lorsque ss_n est actif bas (transaction en cours)
--
--  Hypothèse : mode SPI 0 (CPOL='0', CPHA='0').
-- ==========================================================================

entity SPI_slave is
  generic (
    Clock_Freq  : positive := 12_000_000;  -- Hz (pas utilisé ici, info seulement)
    data_length : integer  := 16           -- nombre de bits par trame
  );
  port (
    -- Horloge / reset système
    Clk        : in  std_logic;
    rst        : in  std_logic;   -- reset actif haut, synchronisé sur Clk

    -- Config SPI (pour l'instant on suppose CPOL=0, CPHA=0)
    cpol       : in  std_logic;
    cpha       : in  std_logic;

    -- Lignes SPI physiques
    sclk       : in  std_logic;   -- SCK du master (STM32)
    ss_n       : in  std_logic;   -- CS / NSS (actif bas)
    mosi       : in  std_logic;   -- MOSI (STM32 -> FPGA)
    miso       : out std_logic;   -- MISO (FPGA -> STM32)

    -- Interface registres parallèles
    rx_enable  : in  std_logic;   -- autorise la copie rxBuffer -> rx
    tx         : in  std_logic_vector(data_length-1 downto 0);
    rx         : out std_logic_vector(data_length-1 downto 0);

    busy       : out std_logic;   -- '1' quand transaction active
    rx_done    : out std_logic    -- pulse 1 cycle Clk quand nouvelle trame reçue
  );
end SPI_slave;

architecture rtl of SPI_slave is

  ---------------------------------------------------------------------------
  -- Synchronisation des entrées asynchrones sclk / ss_n / mosi
  -- dans le domaine Clk (double-flop pour chaque).
  ---------------------------------------------------------------------------
  signal sclk_meta, sclk_sync : std_logic := '0';
  signal ss_meta,   ss_sync   : std_logic := '1';
  signal mosi_meta, mosi_sync : std_logic := '0';

  -- Historique pour détection de fronts
  signal sclk_prev : std_logic := '0';
  signal ss_prev   : std_logic := '1';

  -- Buffers de données
  signal rxBuffer  : std_logic_vector(data_length-1 downto 0) := (others => '0');
  signal txBuffer  : std_logic_vector(data_length-1 downto 0) := (others => '0');

  -- Compteur de bits reçus dans la trame courante
  signal bit_count : integer range 0 to data_length := 0;

begin

  ---------------------------------------------------------------------------
  -- Process principal : tout se fait sur l'horloge Clk
  ---------------------------------------------------------------------------
  process (Clk)
    -- variables locales pour les pulses de front
    variable v_sclk_rise : std_logic;
    variable v_sclk_fall : std_logic;
    variable v_ss_rise   : std_logic;
    variable v_ss_fall   : std_logic;
  begin
    if rising_edge(Clk) then

      ----------------------------------------------------------------------
      -- RESET SYNCHRONE
      ----------------------------------------------------------------------
      if rst = '1' then
        -- sync
        sclk_meta <= '0';
        sclk_sync <= '0';
        sclk_prev <= '0';

        ss_meta   <= '1';
        ss_sync   <= '1';
        ss_prev   <= '1';

        mosi_meta <= '0';
        mosi_sync <= '0';

        -- données
        rxBuffer  <= (others => '0');
        txBuffer  <= (others => '0');
        bit_count <= 0;

        rx       <= (others => '0');
        miso     <= 'Z';
        busy     <= '0';
        rx_done  <= '0';

      else
        --------------------------------------------------------------------
        -- Valeurs par défaut
        --------------------------------------------------------------------
        rx_done <= '0';  -- pulse d'un seul cycle

        --------------------------------------------------------------------
        -- 1) Synchronisation des entrées SPI dans le domaine Clk
        --------------------------------------------------------------------
        sclk_meta <= sclk;
        sclk_sync <= sclk_meta;

        ss_meta   <= ss_n;
        ss_sync   <= ss_meta;

        mosi_meta <= mosi;
        mosi_sync <= mosi_meta;

        --------------------------------------------------------------------
        -- 2) Détection des fronts sur sclk_sync et ss_sync
        --------------------------------------------------------------------
        v_sclk_rise := '0';
        v_sclk_fall := '0';
        v_ss_rise   := '0';
        v_ss_fall   := '0';

        -- fronts sur SCLK
        if (sclk_prev = '0' and sclk_sync = '1') then
          v_sclk_rise := '1';
        elsif (sclk_prev = '1' and sclk_sync = '0') then
          v_sclk_fall := '1';
        end if;

        -- fronts sur SS_N
        if (ss_prev = '0' and ss_sync = '1') then
          v_ss_rise := '1';       -- fin de transaction
        elsif (ss_prev = '1' and ss_sync = '0') then
          v_ss_fall := '1';       -- début de transaction
        end if;

        -- mémoriser l'état courant pour le prochain cycle
        sclk_prev <= sclk_sync;
        ss_prev   <= ss_sync;

        --------------------------------------------------------------------
        -- 3) busy = transaction en cours (CS actif bas)
        --------------------------------------------------------------------
        busy <= not ss_sync;

        --------------------------------------------------------------------
        -- 4) Début de transaction : front descendant de SS_N
        --    On réinitialise le compteur et on charge txBuffer avec tx.
        --------------------------------------------------------------------
        if v_ss_fall = '1' then
          bit_count <= 0;
          txBuffer  <= tx;
        end if;

        --------------------------------------------------------------------
        -- 5) Pendant que SS_N est à 0 : échanges SPI
        --------------------------------------------------------------------
        if ss_sync = '0' then
          --------------------------------------------------------------
          -- MODE 0 (CPOL=0, CPHA=0) :
          --  - l'esclave échantillonne MOSI sur le front montant de SCLK
          --  - il met à jour MISO juste après le front descendant
          --------------------------------------------------------------

          -- Réception : on shift RX sur front montant de SCLK
          if v_sclk_rise = '1' then
            rxBuffer <= rxBuffer(data_length-2 downto 0) & mosi_sync;

            if bit_count < data_length then
              bit_count <= bit_count + 1;
            end if;
          end if;

          -- Transmission : on présente le bit courant sur le front descendant
          if v_sclk_fall = '1' then
            miso     <= txBuffer(data_length-1);
            txBuffer <= txBuffer(data_length-2 downto 0) & txBuffer(data_length-1);
          end if;

        else
          ----------------------------------------------------------------
          -- 6) SS_N = 1 : pas de transaction -> MISO en tri-state
          ----------------------------------------------------------------
          miso <= 'Z';

          ----------------------------------------------------------------
          -- Fin de transaction : front montant de SS_N
          -- On valide la trame reçue et on génère rx_done.
          ----------------------------------------------------------------
          if v_ss_rise = '1' then
            if rx_enable = '1' then
              rx <= rxBuffer;
            end if;
            rx_done <= '1';   -- pulse 1 cycle Clk
          end if;
        end if;  -- ss_sync

      end if; -- rst
    end if;    -- rising_edge(Clk)
  end process;

end rtl;
