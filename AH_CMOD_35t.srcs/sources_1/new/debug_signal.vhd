library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity debug_signal is
  generic (
    Clock_Freq : positive := 12_000_000  -- Horloge système (Hz), info facultative ici
  );
  port (
    Clk           : in  std_logic;                      -- Horloge principale FPGA
    rst           : in  std_logic;                      -- Reset actif '1'
    sig       : out std_logic
  );
end debug_signal;

architecture rtl of debug_signal is

begin
    process(Clk)
    begin
      if rst = '1' then
        sig  <= '0';
      else
        sig <='1';
      end if;
    end process;

end rtl;
