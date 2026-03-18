library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity receive_signal is
  generic(
    CLK_FREQ_HZ      : positive := 100_000_000; -- clk FPGA
    TIMEOUT_MS       : positive := 3000;         -- après 10 ms sans toggles -> absent
    COUNTER_WIDTH    : positive := 24          -- assez large
  );
  port (
    Clk            : in  std_logic;
    rst            : in  std_logic;
    Signal_in      : in  std_logic;

    Signal_sync    : out std_logic;
    Signal_present : out std_logic
  );
end receive_signal;

architecture rtl of receive_signal is
  signal s1, s2      : std_logic := '0';
  signal s2_d         : std_logic := '0';

  -- nb cycles avant "absent"
  constant TIMEOUT_CYCLES : natural :=
    (CLK_FREQ_HZ / 1000) * TIMEOUT_MS;

  signal timeout_cnt : unsigned(COUNTER_WIDTH-1 downto 0) := (others => '0');
  signal present_r   : std_logic := '0';
begin

  process(Clk)
    variable changed : boolean;
  begin
    if rising_edge(Clk) then
      if rst = '1' then
        s1 <= '0';
        s2 <= '0';
        s2_d <= '0';
        timeout_cnt <= (others => '0');
        present_r <= '0';
      else
        -- 1) synchronisation 2 FF
        s1 <= Signal_in;
        s2 <= s1;

        -- 2) détection de changement (toggle)
        changed := (s2 /= s2_d);
        s2_d <= s2;

        if changed then
          -- activité détectée -> present = 1 et recharge timeout
          present_r <= '1';
          timeout_cnt <= to_unsigned(TIMEOUT_CYCLES, COUNTER_WIDTH);
        else
          -- pas de changement : on décrémente
          if timeout_cnt /= 0 then
            timeout_cnt <= timeout_cnt - 1;
          else
            present_r <= '0';
          end if;
        end if;
      end if;
    end if;
  end process;

  Signal_sync    <= s2;
  Signal_present <= present_r;

end rtl;