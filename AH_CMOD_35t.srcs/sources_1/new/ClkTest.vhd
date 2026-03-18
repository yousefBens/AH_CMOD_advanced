library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ClkTest is
  generic (
    DIVIDER : natural := 50_000  -- N : f_out = f_clk / (2*N)
  );
  port (
    clk     : in  std_logic;  -- ton clk 100 MHz
    rst     : in  std_logic;  -- reset synchrone, actif à '1'
    clk_out : out std_logic   -- signal de test vers pin / LED
  );
end ClkTest;

architecture rtl of ClkTest is
  signal cnt     : unsigned(31 downto 0) := (others => '0');
  signal clk_reg : std_logic := '0';
begin

  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        cnt     <= (others => '0');
        clk_reg <= '0';
      else
        if cnt = DIVIDER-1 then
          cnt     <= (others => '0');
          clk_reg <= not clk_reg;  -- toggle => divise par 2
        else
          cnt <= cnt + 1;
        end if;
      end if;
    end if;
  end process;

  clk_out <= clk_reg;

end rtl;
