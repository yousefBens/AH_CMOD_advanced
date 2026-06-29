library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity EM_REC_Delay_Duty is
  generic (
    Clock_Freq : positive := 12_000_000;  
    COUNTER_WIDTH : positive := 16  
  );
  port (
    clk           : in  std_logic;  
    rst           : in  std_logic;  

    EM_REC     : in  std_logic;  


    delay_cycles  : in  unsigned(COUNTER_WIDTH-1 downto 0); 
    pulse_cycles  : in  unsigned(COUNTER_WIDTH-1 downto 0);

    EM_REC_sync   : out std_logic; 
    out_sig       : out std_logic   
  );
end EM_REC_Delay_Duty;

architecture rtl of EM_REC_Delay_Duty is

  signal em_sync1, em_sync2 : std_logic := '0';


  signal em_rising : std_logic := '0';

  signal delay_cnt  : unsigned(COUNTER_WIDTH-1 downto 0) := (others => '0');
  signal pulse_cnt  : unsigned(COUNTER_WIDTH-1 downto 0) := (others => '0');
  signal delay_active       : std_logic := '0';
  signal pulse_active       : std_logic := '0';
begin


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


        if (em_rising = '1') and (delay_active = '0') and (pulse_active = '0') then

          if delay_cycles = 0 then

            pulse_active <= '1';
            pulse_cnt    <= (others => '0');
            out_sig      <= '1';  
          else
 
            delay_active <= '1';
            delay_cnt    <= (others => '0');
            out_sig      <= '0';
          end if;


        elsif delay_active = '1' then

          if delay_cnt = delay_cycles - 1 then

            delay_active <= '0';
            pulse_active <= '1';
            pulse_cnt    <= (others => '0');
            out_sig      <= '1';  
          else
            delay_cnt <= delay_cnt + 1;
            out_sig   <= '0';
          end if;


        elsif pulse_active = '1' then

          if pulse_cnt = pulse_cycles - 1 then
            pulse_active <= '0';
            out_sig      <= '0';
          else
            pulse_cnt <= pulse_cnt + 1;
            out_sig   <= '1';
          end if;


        else
          out_sig <= '0';
        end if;

      end if;
    end if;
  end process;
end rtl;
