library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_slaveTb is
end SPI_slaveTb;

architecture DUT of SPI_slaveTb is

  ------------------------------------------------------------------------
  -- CONSTANTES DE SIMULATION
  ------------------------------------------------------------------------
  constant ClockFreq      : integer := 12_000_000;             -- 12 MHz
  constant ClockPeriod    : time    := 1 sec / ClockFreq;      -- ~83 ns

  constant SpiClockFreq   : integer := 1_000_000;              -- 1 MHz
  constant SpiClockPeriod : time    := 1 sec / SpiClockFreq;   -- 1 µs

  constant DATA_LEN       : integer := 16;

  ------------------------------------------------------------------------
  -- SIGNaux
  ------------------------------------------------------------------------
  -- Horloge / reset système
  signal Clk       : std_logic := '0';
  signal rst       : std_logic := '1';

  -- Config SPI (mode 0)
  signal cpol      : std_logic := '0';
  signal cpha      : std_logic := '0';

  -- Lignes SPI
  signal sclk      : std_logic := '0';
  signal ss_n      : std_logic := '1';
  signal mosi      : std_logic := '0';
  signal miso      : std_logic;

  -- Interface registres
  signal rx_enable : std_logic := '1';
  signal tx        : std_logic_vector(DATA_LEN-1 downto 0) := (others => '0');
  signal rx        : std_logic_vector(DATA_LEN-1 downto 0);

  -- Status
  signal busy      : std_logic;
  signal rx_done   : std_logic;

begin

  ------------------------------------------------------------------------
  -- UUT : instanciation du SPI_slave
  ------------------------------------------------------------------------
  U_SPI : entity work.SPI_slave(rtl)
    generic map (
      Clock_Freq  => ClockFreq,
      data_length => DATA_LEN
    )
    port map (
      Clk       => Clk,
      rst       => rst,
      cpol      => cpol,
      cpha      => cpha,
      sclk      => sclk,
      ss_n      => ss_n,
      mosi      => mosi,
      miso      => miso,
      rx_enable => rx_enable,
      tx        => tx,
      rx        => rx,
      busy      => busy,
      rx_done   => rx_done
    );

  ------------------------------------------------------------------------
  -- HORLOGE SYSTÈME 12 MHz (comme EM_RECTb)
  ------------------------------------------------------------------------
  Clk <= not Clk after ClockPeriod/2;

  ------------------------------------------------------------------------
  -- PROCESSUS DE STIMULATION
  ------------------------------------------------------------------------
  STIM : process

    -- Procédure pour envoyer un mot 16 bits MSB-first sur MOSI
    procedure spi_send_word (
      constant w : in std_logic_vector(DATA_LEN-1 downto 0)) is
    begin
      for i in DATA_LEN-1 downto 0 loop
        -- préparer le bit sur MOSI
        mosi <= w(i);
        wait for SpiClockPeriod/2;

        -- front montant de SCLK (le slave échantillonne)
        sclk <= '1';
        wait for SpiClockPeriod/2;

        -- front descendant -> prochain bit
        sclk <= '0';
      end loop;
    end procedure;

  begin
    --------------------------------------------------------------------
    -- Reset et init
    --------------------------------------------------------------------
    rst       <= '1';
    cpol      <= '0';         -- mode 0
    cpha      <= '0';
    rx_enable <= '1';

    sclk      <= '0';
    ss_n      <= '1';
    mosi      <= '0';
    tx        <= x"ABCD";     -- première valeur que le slave renverra

    wait for 2 us;
    rst <= '0';
    wait for 2 us;

    --------------------------------------------------------------------
    -- TRAME 1 : master envoie 0x1234, le slave renvoie 0xABCD
    --------------------------------------------------------------------
    report "=== TRAME 1 : envoi 0x1234, tx = 0xABCD ===";

    ss_n <= '0';                      -- sélection de l'esclave
    wait for SpiClockPeriod;

    spi_send_word(x"1234");

    wait for SpiClockPeriod;
    ss_n <= '1';                      -- fin de trame

    -- attendre le pulse rx_done (forme VHDL-93)
    wait until (Clk'event and Clk = '1') and rx_done = '1';
    report "Trame 1 reçue (decimal) = " &
           integer'image(to_integer(unsigned(rx)));

    --------------------------------------------------------------------
    -- TRAME 2 : on change tx et on envoie un autre mot
    --------------------------------------------------------------------
    tx <= x"55AA";
    wait for 5 us;

    report "=== TRAME 2 : envoi 0x0F0F, tx = 0x55AA ===";

    ss_n <= '0';
    wait for SpiClockPeriod;

    spi_send_word(x"0F0F");

    wait for SpiClockPeriod;
    ss_n <= '1';

    wait until (Clk'event and Clk = '1') and rx_done = '1';
    report "Trame 2 reçue (decimal) = " &
           integer'image(to_integer(unsigned(rx)));

    --------------------------------------------------------------------
    -- Fin de simulation
    --------------------------------------------------------------------
    wait for 20 us;
    report "FIN DE SIMULATION" severity note;
    wait;
  end process;

end DUT;
