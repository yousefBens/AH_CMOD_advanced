library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity SPI_slave is
  generic (

    data_length : integer  := 16           
  );
  port (

    Clk        : in  std_logic;
    rst        : in  std_logic;  

    cpol       : in  std_logic;
    cpha       : in  std_logic;


    sclk       : in  std_logic;  
    ss_n       : in  std_logic;   
    mosi       : in  std_logic;   
    miso       : out std_logic;   


    rx_enable  : in  std_logic; 
    tx         : in  std_logic_vector(data_length-1 downto 0);
    rx         : out std_logic_vector(data_length-1 downto 0);

    busy       : out std_logic;   
    rx_done    : out std_logic    
  );
end SPI_slave;

architecture rtl of SPI_slave is


  signal sclk_meta, sclk_sync : std_logic := '0';
  signal ss_meta,   ss_sync   : std_logic := '1';
  signal mosi_meta, mosi_sync : std_logic := '0';


  signal sclk_prev : std_logic := '0';
  signal ss_prev   : std_logic := '1';


  signal rxBuffer  : std_logic_vector(data_length-1 downto 0) := (others => '0');
  signal txBuffer  : std_logic_vector(data_length-1 downto 0) := (others => '0');


  signal bit_count : integer range 0 to data_length := 0;

begin


  process (Clk)

    variable v_sclk_rise : std_logic;
    variable v_sclk_fall : std_logic;
    variable v_ss_rise   : std_logic;
    variable v_ss_fall   : std_logic;
  begin
    if rising_edge(Clk) then


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

        rx_done <= '0'; 


        sclk_meta <= sclk;
        sclk_sync <= sclk_meta;

        ss_meta   <= ss_n;
        ss_sync   <= ss_meta;

        mosi_meta <= mosi;
        mosi_sync <= mosi_meta;


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
          v_ss_rise := '1';       
        elsif (ss_prev = '1' and ss_sync = '0') then
          v_ss_fall := '1';      
        end if;


        sclk_prev <= sclk_sync;
        ss_prev   <= ss_sync;


        busy <= not ss_sync;


        if v_ss_fall = '1' then
          bit_count <= 0;
          txBuffer  <= tx;
        end if;


        if ss_sync = '0' then



          if v_sclk_rise = '1' then
            rxBuffer <= rxBuffer(data_length-2 downto 0) & mosi_sync;

            if bit_count < data_length then
              bit_count <= bit_count + 1;
            end if;
          end if;


          if v_sclk_fall = '1' then
            miso     <= txBuffer(data_length-1);
            txBuffer <= txBuffer(data_length-2 downto 0) & txBuffer(data_length-1);
          end if;

        else

          miso <= 'Z';


          if v_ss_rise = '1' then
            if rx_enable = '1' then
              rx <= rxBuffer;
            end if;
            rx_done <= '1';  
          end if;
        end if;  

      end if; 
    end if;   
  end process;

end rtl;
