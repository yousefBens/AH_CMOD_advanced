library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity axis_tlast is
  generic (
    N_SAMPLES : positive := 2048   -- nombre d'échantillons par "frame"
  );
  port (
    -- AXI-Stream slave (from XADC)
    s_tdata  : in  std_logic_vector(15 downto 0);
    s_tvalid : in  std_logic;
    s_tready : out std_logic;

    -- AXI-Stream master (to DMA S2MM)
    m_tdata  : out std_logic_vector(15 downto 0);
    m_tvalid : out std_logic;
    m_tready : in  std_logic;
    m_tlast  : out std_logic;

    -- clock / reset
    aclk     : in  std_logic;
    aresetn  : in  std_logic
  );
end axis_tlast;

architecture rtl of axis_tlast is
  signal cnt      : unsigned(31 downto 0) := (others => '0');
  signal xfer     : std_logic;
  signal last_i   : std_logic := '0';
begin

  -- Pass-through handshake + data
  m_tdata  <= s_tdata;
  m_tvalid <= s_tvalid;
  s_tready <= m_tready;

  -- un transfert a lieu uniquement quand valid && ready
  xfer <= s_tvalid and m_tready;

  process(aclk)
  begin
    if rising_edge(aclk) then
      if aresetn = '0' then
        cnt    <= (others => '0');
        last_i <= '0';
      else
        last_i <= '0';

        if xfer = '1' then
          if cnt = to_unsigned(N_SAMPLES - 1, cnt'length) then
            -- fin de frame
            last_i <= '1';
            cnt    <= (others => '0');
          else
            cnt <= cnt + 1;
          end if;
        end if;

      end if;
    end if;
  end process;

  m_tlast <= last_i;

end rtl;
