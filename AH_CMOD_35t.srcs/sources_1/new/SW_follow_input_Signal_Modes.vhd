library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity SW_follow_input_Signal_Modes is
  generic (
    Clock_Freq    : positive := 12_000_000;
    COUNTER_WIDTH : positive := 16
  );
  port (
    clk           : in  std_logic;
    rst           : in  std_logic;  

    in_sig        : in  std_logic;



    mode_sel      : in  unsigned(1 downto 0);

    in_sig_sync   : out std_logic;
    out_sig       : out std_logic
  );
end SW_follow_input_Signal_Modes;

architecture rtl of SW_follow_input_Signal_Modes is
  signal em_sync1, em_sync2 : std_logic := '0';
  signal em_rising : std_logic := '0';

  signal delay_cnt  : unsigned(COUNTER_WIDTH-1 downto 0) := (others => '0');
  signal pulse_cnt  : unsigned(COUNTER_WIDTH-1 downto 0) := (others => '0');
  signal delay_active : std_logic := '0';
  signal pulse_active : std_logic := '0';
begin


  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        em_sync1 <= '0';
        em_sync2 <= '0';
      else
        em_sync1 <= in_sig;
        em_sync2 <= em_sync1;
      end if;
    end if;
  end process;

  in_sig_sync <= em_sync2;


  em_rising <= '1' when (em_sync1 = '1' and em_sync2 = '0') else '0';


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

        if mode_sel = "01" then
          -- Force 0
          out_sig      <= '0';
          delay_cnt    <= (others => '0');
          pulse_cnt    <= (others => '0');
          delay_active <= '0';
          pulse_active <= '0';

        elsif mode_sel = "10" then
          -- Force 1
          out_sig      <= '1';
          delay_cnt    <= (others => '0');
          pulse_cnt    <= (others => '0');
          delay_active <= '0';
          pulse_active <= '0';

        else
          -- bypas
          out_sig      <= em_sync2;
          delay_cnt    <= (others => '0');
          pulse_cnt    <= (others => '0');
          delay_active <= '0';
          pulse_active <= '0';
        end if;
      end if;
    end if;
  end process;

end rtl;
