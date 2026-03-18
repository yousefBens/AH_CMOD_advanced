library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity EMREC_Signal is
  generic (
    Clock_Freq : positive := 12_000_000  -- Hz
  );
  port (
    Clk        : in  std_logic;
    rst        : in  std_logic;
    freq_val   : in  unsigned(7 downto 0); -- fréquence MREEC en Hz (1..255)
    MREEC_out  : out std_logic
  );
end EMREC_Signal;

architecture rtl of EMREC_Signal is
  signal counter       : unsigned(31 downto 0) := (others => '0');
  signal toggle_limit  : unsigned(31 downto 0) := (others => '0');
  signal MREEC_reg     : std_logic := '0';

  signal freq_val_int  : unsigned(7 downto 0) := to_unsigned(1, 8); -- défaut = 1 Hz
begin

  -- 1) Latch de freq_val avec une valeur par défaut
  process(Clk)
  begin
    if rising_edge(Clk) then
      if rst = '1' then
        freq_val_int <= to_unsigned(1, 8);  -- 1 Hz par défaut
      else
        if freq_val = to_unsigned(0, 8) then
          freq_val_int <= to_unsigned(1, 8);
        else
          freq_val_int <= freq_val;
        end if;
      end if;
    end if;
  end process;

  -- 2) Génération de MREEC_out
  process(Clk)
    variable freq_int : integer;
    variable tl       : integer;
  begin
    if rising_edge(Clk) then
      if rst = '1' then
        counter      <= (others => '0');
        MREEC_reg    <= '0';
        toggle_limit <= (others => '0');
      else
        -- freq ≥ 1 Hz
        freq_int := to_integer(freq_val_int);
        if freq_int < 1 then
          freq_int := 1;
        end if;

        -- nombre de cycles entre deux toggles
        tl := Clock_Freq / (2 * freq_int);
        toggle_limit <= to_unsigned(tl, 32);

        -- compteur
        if counter >= toggle_limit then
          counter   <= (others => '0');
          MREEC_reg <= not MREEC_reg;
        else
          counter <= counter + 1;
        end if;
      end if;
    end if;
  end process;

  MREEC_out <= MREEC_reg;

end rtl;
