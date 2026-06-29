library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity EM_REC is
  generic (
    Clock_Freq : positive := 12_000_000 
  );
  port (
    Clk           : in  std_logic;                      
    rst           : in  std_logic;                      
    EM_REC         : in  std_logic;                      
    EM_REC_sync         : out  std_logic;
    duty_percent     : in  std_logic_vector(7 downto 0);   
    delay_percent : in  std_logic_vector(7 downto 0);   
    pwm_out       : out std_logic
  );
end EM_REC;

architecture rtl of EM_REC is

  signal duty_val       : integer range 1 to 100 := 50;
  signal duty_count     : natural := 0;       
  signal cnt            : natural := 0;        
  signal pwm_active     : std_logic := '0';    
  signal period_count   : natural := 1000;     

  
  signal delay_val_pct  : integer range 0 to 100 := 0; 
  signal delay_target   : natural := 0;       
  signal delay_cnt      : natural := 0;       
  signal delay_active   : std_logic := '0';    


  signal MREEC_sync1, MREEC_sync2 : std_logic := '0';
  signal MREEC_rising : std_logic := '0';


  signal MREEC_period_cnt : natural := 0;     
  signal last_MREEC_period : natural := 10000; 
begin


  process(Clk)
  begin
    if rising_edge(Clk) then
      MREEC_sync1 <= EM_REC;
      MREEC_sync2 <= MREEC_sync1;
    end if;
  end process;

  MREEC_rising <= '1' when (MREEC_sync1 = '1' and MREEC_sync2 = '0') else '0';
  EM_REC_sync <= MREEC_rising;

  process(Clk)
  begin
    if rising_edge(Clk) then
      if rst = '1' then
        MREEC_period_cnt  <= 0;
        last_MREEC_period <= 10000; 
      else
        MREEC_period_cnt <= MREEC_period_cnt + 1;

        if MREEC_rising = '1' then
          last_MREEC_period <= MREEC_period_cnt; 
          MREEC_period_cnt  <= 0;                 
        end if;
      end if;
    end if;
  end process;


  process(Clk)
    variable duty_int  : integer; 
    variable dly_int   : integer; 
  begin
    if rising_edge(Clk) then
      if rst = '1' then
        pwm_out      <= '0';
        cnt          <= 0;
        pwm_active   <= '0';
        delay_cnt    <= 0;
        delay_active <= '0';
      else
     
        period_count <= last_MREEC_period / 2;

       
        duty_int := to_integer(unsigned(duty_percent));
        if duty_int < 1 then
          duty_val <= 1;
        elsif duty_int > 100 then
          duty_val <= 100;
        else
          duty_val <= duty_int;
        end if;

   
        dly_int := to_integer(unsigned(delay_percent));
        if dly_int < 0 then
          delay_val_pct <= 0;
        elsif dly_int > 100 then
          delay_val_pct <= 100;
        else
          delay_val_pct <= dly_int;
        end if;

      
        duty_count   <= (period_count * duty_val) / 100;          
        delay_target <= (period_count * delay_val_pct) / 100;     


        if MREEC_rising = '1' then
          
          delay_active <= '1';
          delay_cnt    <= 0;
          pwm_active   <= '0';
          cnt          <= 0;

        elsif delay_active = '1' then
        
          if delay_cnt < delay_target then
            delay_cnt <= delay_cnt + 1;
          else
            delay_active <= '0';
            pwm_active   <= '1';  
            cnt          <= 0;
          end if;

        elsif pwm_active = '1' then
         
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
