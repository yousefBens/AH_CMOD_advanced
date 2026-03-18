--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
--Date        : Fri Mar 13 10:44:57 2026
--Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity i00_couplers_imp_MLJI85 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end i00_couplers_imp_MLJI85;

architecture STRUCTURE of i00_couplers_imp_MLJI85 is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_rready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_arready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_awready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wready\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arprot(2 downto 0) <= \^m_axi_arprot\(2 downto 0);
  M_AXI_arvalid(0) <= \^m_axi_arvalid\(0);
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awprot(2 downto 0) <= \^m_axi_awprot\(2 downto 0);
  M_AXI_awvalid(0) <= \^m_axi_awvalid\(0);
  M_AXI_bready(0) <= \^m_axi_bready\(0);
  M_AXI_rready(0) <= \^m_axi_rready\(0);
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid(0) <= \^m_axi_wvalid\(0);
  S_AXI_arready(0) <= \^s_axi_arready\(0);
  S_AXI_awready(0) <= \^s_axi_awready\(0);
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid(0) <= \^s_axi_bvalid\(0);
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid(0) <= \^s_axi_rvalid\(0);
  S_AXI_wready(0) <= \^s_axi_wready\(0);
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arprot\(2 downto 0) <= S_AXI_arprot(2 downto 0);
  \^m_axi_arvalid\(0) <= S_AXI_arvalid(0);
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awprot\(2 downto 0) <= S_AXI_awprot(2 downto 0);
  \^m_axi_awvalid\(0) <= S_AXI_awvalid(0);
  \^m_axi_bready\(0) <= S_AXI_bready(0);
  \^m_axi_rready\(0) <= S_AXI_rready(0);
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\(0) <= S_AXI_wvalid(0);
  \^s_axi_arready\(0) <= M_AXI_arready(0);
  \^s_axi_awready\(0) <= M_AXI_awready(0);
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\(0) <= M_AXI_bvalid(0);
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\(0) <= M_AXI_rvalid(0);
  \^s_axi_wready\(0) <= M_AXI_wready(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity i01_couplers_imp_1GR4JJ8 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end i01_couplers_imp_1GR4JJ8;

architecture STRUCTURE of i01_couplers_imp_1GR4JJ8 is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_rready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_arready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_awready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wready\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arprot(2 downto 0) <= \^m_axi_arprot\(2 downto 0);
  M_AXI_arvalid(0) <= \^m_axi_arvalid\(0);
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awprot(2 downto 0) <= \^m_axi_awprot\(2 downto 0);
  M_AXI_awvalid(0) <= \^m_axi_awvalid\(0);
  M_AXI_bready(0) <= \^m_axi_bready\(0);
  M_AXI_rready(0) <= \^m_axi_rready\(0);
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid(0) <= \^m_axi_wvalid\(0);
  S_AXI_arready(0) <= \^s_axi_arready\(0);
  S_AXI_awready(0) <= \^s_axi_awready\(0);
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid(0) <= \^s_axi_bvalid\(0);
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid(0) <= \^s_axi_rvalid\(0);
  S_AXI_wready(0) <= \^s_axi_wready\(0);
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arprot\(2 downto 0) <= S_AXI_arprot(2 downto 0);
  \^m_axi_arvalid\(0) <= S_AXI_arvalid(0);
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awprot\(2 downto 0) <= S_AXI_awprot(2 downto 0);
  \^m_axi_awvalid\(0) <= S_AXI_awvalid(0);
  \^m_axi_bready\(0) <= S_AXI_bready(0);
  \^m_axi_rready\(0) <= S_AXI_rready(0);
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\(0) <= S_AXI_wvalid(0);
  \^s_axi_arready\(0) <= M_AXI_arready(0);
  \^s_axi_awready\(0) <= M_AXI_awready(0);
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\(0) <= M_AXI_bvalid(0);
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\(0) <= M_AXI_rvalid(0);
  \^s_axi_wready\(0) <= M_AXI_wready(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity i02_couplers_imp_NHJKHY is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end i02_couplers_imp_NHJKHY;

architecture STRUCTURE of i02_couplers_imp_NHJKHY is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_rready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_arready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_awready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wready\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arprot(2 downto 0) <= \^m_axi_arprot\(2 downto 0);
  M_AXI_arvalid(0) <= \^m_axi_arvalid\(0);
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awprot(2 downto 0) <= \^m_axi_awprot\(2 downto 0);
  M_AXI_awvalid(0) <= \^m_axi_awvalid\(0);
  M_AXI_bready(0) <= \^m_axi_bready\(0);
  M_AXI_rready(0) <= \^m_axi_rready\(0);
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid(0) <= \^m_axi_wvalid\(0);
  S_AXI_arready(0) <= \^s_axi_arready\(0);
  S_AXI_awready(0) <= \^s_axi_awready\(0);
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid(0) <= \^s_axi_bvalid\(0);
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid(0) <= \^s_axi_rvalid\(0);
  S_AXI_wready(0) <= \^s_axi_wready\(0);
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arprot\(2 downto 0) <= S_AXI_arprot(2 downto 0);
  \^m_axi_arvalid\(0) <= S_AXI_arvalid(0);
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awprot\(2 downto 0) <= S_AXI_awprot(2 downto 0);
  \^m_axi_awvalid\(0) <= S_AXI_awvalid(0);
  \^m_axi_bready\(0) <= S_AXI_bready(0);
  \^m_axi_rready\(0) <= S_AXI_rready(0);
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\(0) <= S_AXI_wvalid(0);
  \^s_axi_arready\(0) <= M_AXI_arready(0);
  \^s_axi_awready\(0) <= M_AXI_awready(0);
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\(0) <= M_AXI_bvalid(0);
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\(0) <= M_AXI_rvalid(0);
  \^s_axi_wready\(0) <= M_AXI_wready(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_8RVYHO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_8RVYHO;

architecture STRUCTURE of m00_couplers_imp_8RVYHO is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1UTB3Y5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_1UTB3Y5;

architecture STRUCTURE of m01_couplers_imp_1UTB3Y5 is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_7ANRHB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_7ANRHB;

architecture STRUCTURE of m02_couplers_imp_7ANRHB is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1W07O72 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_1W07O72;

architecture STRUCTURE of m03_couplers_imp_1W07O72 is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_5LX7BU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_5LX7BU;

architecture STRUCTURE of m04_couplers_imp_5LX7BU is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1XR4ZAZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_1XR4ZAZ;

architecture STRUCTURE of m05_couplers_imp_1XR4ZAZ is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_4YOIXL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_4YOIXL;

architecture STRUCTURE of m06_couplers_imp_4YOIXL is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1YO2N20 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m07_couplers_imp_1YO2N20;

architecture STRUCTURE of m07_couplers_imp_1YO2N20 is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_2FYR80 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m08_couplers_imp_2FYR80;

architecture STRUCTURE of m08_couplers_imp_2FYR80 is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_1S9IENL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m09_couplers_imp_1S9IENL;

architecture STRUCTURE of m09_couplers_imp_1S9IENL is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m10_couplers_imp_1JMMVIC is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m10_couplers_imp_1JMMVIC;

architecture STRUCTURE of m10_couplers_imp_1JMMVIC is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arprot(2 downto 0) <= \^m_axi_arprot\(2 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awprot(2 downto 0) <= \^m_axi_awprot\(2 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arprot\(2 downto 0) <= S_AXI_arprot(2 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awprot\(2 downto 0) <= S_AXI_awprot(2 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m11_couplers_imp_AVFHLX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m11_couplers_imp_AVFHLX;

architecture STRUCTURE of m11_couplers_imp_AVFHLX is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m12_couplers_imp_1L2AF0N is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m12_couplers_imp_1L2AF0N;

architecture STRUCTURE of m12_couplers_imp_1L2AF0N is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m13_couplers_imp_9PFI3Q is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m13_couplers_imp_9PFI3Q;

architecture STRUCTURE of m13_couplers_imp_9PFI3Q is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m14_couplers_imp_1IC4S8Y is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m14_couplers_imp_1IC4S8Y;

architecture STRUCTURE of m14_couplers_imp_1IC4S8Y is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m15_couplers_imp_CCS34Z is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m15_couplers_imp_CCS34Z;

architecture STRUCTURE of m15_couplers_imp_CCS34Z is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m16_couplers_imp_1IXUA2P is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m16_couplers_imp_1IXUA2P;

architecture STRUCTURE of m16_couplers_imp_1IXUA2P is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arvalid <= \^m_axi_arvalid\;
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awvalid <= \^m_axi_awvalid\;
  M_AXI_bready <= \^m_axi_bready\;
  M_AXI_rready <= \^m_axi_rready\;
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid <= \^m_axi_wvalid\;
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arvalid\ <= S_AXI_arvalid;
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awvalid\ <= S_AXI_awvalid;
  \^m_axi_bready\ <= S_AXI_bready;
  \^m_axi_rready\ <= S_AXI_rready;
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\ <= S_AXI_wvalid;
  \^s_axi_arready\ <= M_AXI_arready;
  \^s_axi_awready\ <= M_AXI_awready;
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\ <= M_AXI_bvalid;
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\ <= M_AXI_rvalid;
  \^s_axi_wready\ <= M_AXI_wready;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_0_local_memory_imp_1K0VQXK is
  port (
    Clk : in STD_LOGIC;
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end microblaze_0_local_memory_imp_1K0VQXK;

architecture STRUCTURE of microblaze_0_local_memory_imp_1K0VQXK is
  component design_1_dlmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component design_1_dlmb_v10_0;
  component design_1_ilmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component design_1_ilmb_v10_0;
  component design_1_dlmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component design_1_dlmb_bram_if_cntlr_0;
  component design_1_ilmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component design_1_ilmb_bram_if_cntlr_0;
  component design_1_lmb_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component design_1_lmb_bram_0;
  signal microblaze_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rstb_busy_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > design_1 microblaze_0_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
dlmb_bram_if_cntlr: component design_1_dlmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component design_1_dlmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_CE => DLMB_ce,
      LMB_Clk => Clk,
      LMB_ReadDBus(0 to 31) => DLMB_readdbus(0 to 31),
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Ready => DLMB_ready,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => DLMB_ue,
      LMB_Wait => DLMB_wait,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => DLMB_abus(0 to 31),
      M_AddrStrobe => DLMB_addrstrobe,
      M_BE(0 to 3) => DLMB_be(0 to 3),
      M_DBus(0 to 31) => DLMB_writedbus(0 to 31),
      M_ReadStrobe => DLMB_readstrobe,
      M_WriteStrobe => DLMB_writestrobe,
      SYS_Rst => SYS_Rst,
      Sl_CE(0) => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component design_1_ilmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => Clk,
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_ilmb_bus_READY,
      Sl_UE => microblaze_0_ilmb_bus_UE,
      Sl_Wait => microblaze_0_ilmb_bus_WAIT
    );
ilmb_v10: component design_1_ilmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_CE => ILMB_ce,
      LMB_Clk => Clk,
      LMB_ReadDBus(0 to 31) => ILMB_readdbus(0 to 31),
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Ready => ILMB_ready,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => ILMB_ue,
      LMB_Wait => ILMB_wait,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => ILMB_abus(0 to 31),
      M_AddrStrobe => ILMB_addrstrobe,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => ILMB_readstrobe,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst,
      Sl_CE(0) => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_0_ilmb_bus_WAIT
    );
lmb_bram: component design_1_lmb_bram_0
     port map (
      addra(31) => microblaze_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_0_dlmb_cntlr_CLK,
      clkb => microblaze_0_ilmb_cntlr_CLK,
      dina(31) => microblaze_0_dlmb_cntlr_DIN(0),
      dina(30) => microblaze_0_dlmb_cntlr_DIN(1),
      dina(29) => microblaze_0_dlmb_cntlr_DIN(2),
      dina(28) => microblaze_0_dlmb_cntlr_DIN(3),
      dina(27) => microblaze_0_dlmb_cntlr_DIN(4),
      dina(26) => microblaze_0_dlmb_cntlr_DIN(5),
      dina(25) => microblaze_0_dlmb_cntlr_DIN(6),
      dina(24) => microblaze_0_dlmb_cntlr_DIN(7),
      dina(23) => microblaze_0_dlmb_cntlr_DIN(8),
      dina(22) => microblaze_0_dlmb_cntlr_DIN(9),
      dina(21) => microblaze_0_dlmb_cntlr_DIN(10),
      dina(20) => microblaze_0_dlmb_cntlr_DIN(11),
      dina(19) => microblaze_0_dlmb_cntlr_DIN(12),
      dina(18) => microblaze_0_dlmb_cntlr_DIN(13),
      dina(17) => microblaze_0_dlmb_cntlr_DIN(14),
      dina(16) => microblaze_0_dlmb_cntlr_DIN(15),
      dina(15) => microblaze_0_dlmb_cntlr_DIN(16),
      dina(14) => microblaze_0_dlmb_cntlr_DIN(17),
      dina(13) => microblaze_0_dlmb_cntlr_DIN(18),
      dina(12) => microblaze_0_dlmb_cntlr_DIN(19),
      dina(11) => microblaze_0_dlmb_cntlr_DIN(20),
      dina(10) => microblaze_0_dlmb_cntlr_DIN(21),
      dina(9) => microblaze_0_dlmb_cntlr_DIN(22),
      dina(8) => microblaze_0_dlmb_cntlr_DIN(23),
      dina(7) => microblaze_0_dlmb_cntlr_DIN(24),
      dina(6) => microblaze_0_dlmb_cntlr_DIN(25),
      dina(5) => microblaze_0_dlmb_cntlr_DIN(26),
      dina(4) => microblaze_0_dlmb_cntlr_DIN(27),
      dina(3) => microblaze_0_dlmb_cntlr_DIN(28),
      dina(2) => microblaze_0_dlmb_cntlr_DIN(29),
      dina(1) => microblaze_0_dlmb_cntlr_DIN(30),
      dina(0) => microblaze_0_dlmb_cntlr_DIN(31),
      dinb(31) => microblaze_0_ilmb_cntlr_DIN(0),
      dinb(30) => microblaze_0_ilmb_cntlr_DIN(1),
      dinb(29) => microblaze_0_ilmb_cntlr_DIN(2),
      dinb(28) => microblaze_0_ilmb_cntlr_DIN(3),
      dinb(27) => microblaze_0_ilmb_cntlr_DIN(4),
      dinb(26) => microblaze_0_ilmb_cntlr_DIN(5),
      dinb(25) => microblaze_0_ilmb_cntlr_DIN(6),
      dinb(24) => microblaze_0_ilmb_cntlr_DIN(7),
      dinb(23) => microblaze_0_ilmb_cntlr_DIN(8),
      dinb(22) => microblaze_0_ilmb_cntlr_DIN(9),
      dinb(21) => microblaze_0_ilmb_cntlr_DIN(10),
      dinb(20) => microblaze_0_ilmb_cntlr_DIN(11),
      dinb(19) => microblaze_0_ilmb_cntlr_DIN(12),
      dinb(18) => microblaze_0_ilmb_cntlr_DIN(13),
      dinb(17) => microblaze_0_ilmb_cntlr_DIN(14),
      dinb(16) => microblaze_0_ilmb_cntlr_DIN(15),
      dinb(15) => microblaze_0_ilmb_cntlr_DIN(16),
      dinb(14) => microblaze_0_ilmb_cntlr_DIN(17),
      dinb(13) => microblaze_0_ilmb_cntlr_DIN(18),
      dinb(12) => microblaze_0_ilmb_cntlr_DIN(19),
      dinb(11) => microblaze_0_ilmb_cntlr_DIN(20),
      dinb(10) => microblaze_0_ilmb_cntlr_DIN(21),
      dinb(9) => microblaze_0_ilmb_cntlr_DIN(22),
      dinb(8) => microblaze_0_ilmb_cntlr_DIN(23),
      dinb(7) => microblaze_0_ilmb_cntlr_DIN(24),
      dinb(6) => microblaze_0_ilmb_cntlr_DIN(25),
      dinb(5) => microblaze_0_ilmb_cntlr_DIN(26),
      dinb(4) => microblaze_0_ilmb_cntlr_DIN(27),
      dinb(3) => microblaze_0_ilmb_cntlr_DIN(28),
      dinb(2) => microblaze_0_ilmb_cntlr_DIN(29),
      dinb(1) => microblaze_0_ilmb_cntlr_DIN(30),
      dinb(0) => microblaze_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => microblaze_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => microblaze_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => microblaze_0_dlmb_cntlr_EN,
      enb => microblaze_0_ilmb_cntlr_EN,
      rsta => microblaze_0_dlmb_cntlr_RST,
      rsta_busy => NLW_lmb_bram_rsta_busy_UNCONNECTED,
      rstb => microblaze_0_ilmb_cntlr_RST,
      rstb_busy => NLW_lmb_bram_rstb_busy_UNCONNECTED,
      wea(3) => microblaze_0_dlmb_cntlr_WE(0),
      wea(2) => microblaze_0_dlmb_cntlr_WE(1),
      wea(1) => microblaze_0_dlmb_cntlr_WE(2),
      wea(0) => microblaze_0_dlmb_cntlr_WE(3),
      web(3) => microblaze_0_ilmb_cntlr_WE(0),
      web(2) => microblaze_0_ilmb_cntlr_WE(1),
      web(1) => microblaze_0_ilmb_cntlr_WE(2),
      web(0) => microblaze_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1RZP34U is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_1RZP34U;

architecture STRUCTURE of s00_couplers_imp_1RZP34U is
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_rready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_arready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_awready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wready\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_arprot(2 downto 0) <= \^m_axi_arprot\(2 downto 0);
  M_AXI_arvalid(0) <= \^m_axi_arvalid\(0);
  M_AXI_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_awprot(2 downto 0) <= \^m_axi_awprot\(2 downto 0);
  M_AXI_awvalid(0) <= \^m_axi_awvalid\(0);
  M_AXI_bready(0) <= \^m_axi_bready\(0);
  M_AXI_rready(0) <= \^m_axi_rready\(0);
  M_AXI_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  M_AXI_wvalid(0) <= \^m_axi_wvalid\(0);
  S_AXI_arready(0) <= \^s_axi_arready\(0);
  S_AXI_awready(0) <= \^s_axi_awready\(0);
  S_AXI_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  S_AXI_bvalid(0) <= \^s_axi_bvalid\(0);
  S_AXI_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  S_AXI_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  S_AXI_rvalid(0) <= \^s_axi_rvalid\(0);
  S_AXI_wready(0) <= \^s_axi_wready\(0);
  \^m_axi_araddr\(31 downto 0) <= S_AXI_araddr(31 downto 0);
  \^m_axi_arprot\(2 downto 0) <= S_AXI_arprot(2 downto 0);
  \^m_axi_arvalid\(0) <= S_AXI_arvalid(0);
  \^m_axi_awaddr\(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  \^m_axi_awprot\(2 downto 0) <= S_AXI_awprot(2 downto 0);
  \^m_axi_awvalid\(0) <= S_AXI_awvalid(0);
  \^m_axi_bready\(0) <= S_AXI_bready(0);
  \^m_axi_rready\(0) <= S_AXI_rready(0);
  \^m_axi_wdata\(31 downto 0) <= S_AXI_wdata(31 downto 0);
  \^m_axi_wstrb\(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  \^m_axi_wvalid\(0) <= S_AXI_wvalid(0);
  \^s_axi_arready\(0) <= M_AXI_arready(0);
  \^s_axi_awready\(0) <= M_AXI_awready(0);
  \^s_axi_bresp\(1 downto 0) <= M_AXI_bresp(1 downto 0);
  \^s_axi_bvalid\(0) <= M_AXI_bvalid(0);
  \^s_axi_rdata\(31 downto 0) <= M_AXI_rdata(31 downto 0);
  \^s_axi_rresp\(1 downto 0) <= M_AXI_rresp(1 downto 0);
  \^s_axi_rvalid\(0) <= M_AXI_rvalid(0);
  \^s_axi_wready\(0) <= M_AXI_wready(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_microblaze_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wvalid : out STD_LOGIC;
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M10_AXI_arready : in STD_LOGIC;
    M10_AXI_arvalid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M10_AXI_awready : in STD_LOGIC;
    M10_AXI_awvalid : out STD_LOGIC;
    M10_AXI_bready : out STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC;
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC;
    M10_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_wvalid : out STD_LOGIC;
    M11_ACLK : in STD_LOGIC;
    M11_ARESETN : in STD_LOGIC;
    M11_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_arready : in STD_LOGIC;
    M11_AXI_arvalid : out STD_LOGIC;
    M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_awready : in STD_LOGIC;
    M11_AXI_awvalid : out STD_LOGIC;
    M11_AXI_bready : out STD_LOGIC;
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_bvalid : in STD_LOGIC;
    M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_rready : out STD_LOGIC;
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rvalid : in STD_LOGIC;
    M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_wready : in STD_LOGIC;
    M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_wvalid : out STD_LOGIC;
    M12_ACLK : in STD_LOGIC;
    M12_ARESETN : in STD_LOGIC;
    M12_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_arready : in STD_LOGIC;
    M12_AXI_arvalid : out STD_LOGIC;
    M12_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_awready : in STD_LOGIC;
    M12_AXI_awvalid : out STD_LOGIC;
    M12_AXI_bready : out STD_LOGIC;
    M12_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_bvalid : in STD_LOGIC;
    M12_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_rready : out STD_LOGIC;
    M12_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_rvalid : in STD_LOGIC;
    M12_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_wready : in STD_LOGIC;
    M12_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M12_AXI_wvalid : out STD_LOGIC;
    M13_ACLK : in STD_LOGIC;
    M13_ARESETN : in STD_LOGIC;
    M13_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_arready : in STD_LOGIC;
    M13_AXI_arvalid : out STD_LOGIC;
    M13_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_awready : in STD_LOGIC;
    M13_AXI_awvalid : out STD_LOGIC;
    M13_AXI_bready : out STD_LOGIC;
    M13_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M13_AXI_bvalid : in STD_LOGIC;
    M13_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_rready : out STD_LOGIC;
    M13_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M13_AXI_rvalid : in STD_LOGIC;
    M13_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_wready : in STD_LOGIC;
    M13_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M13_AXI_wvalid : out STD_LOGIC;
    M14_ACLK : in STD_LOGIC;
    M14_ARESETN : in STD_LOGIC;
    M14_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_arready : in STD_LOGIC;
    M14_AXI_arvalid : out STD_LOGIC;
    M14_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_awready : in STD_LOGIC;
    M14_AXI_awvalid : out STD_LOGIC;
    M14_AXI_bready : out STD_LOGIC;
    M14_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M14_AXI_bvalid : in STD_LOGIC;
    M14_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_rready : out STD_LOGIC;
    M14_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M14_AXI_rvalid : in STD_LOGIC;
    M14_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_wready : in STD_LOGIC;
    M14_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M14_AXI_wvalid : out STD_LOGIC;
    M15_ACLK : in STD_LOGIC;
    M15_ARESETN : in STD_LOGIC;
    M15_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M15_AXI_arready : in STD_LOGIC;
    M15_AXI_arvalid : out STD_LOGIC;
    M15_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M15_AXI_awready : in STD_LOGIC;
    M15_AXI_awvalid : out STD_LOGIC;
    M15_AXI_bready : out STD_LOGIC;
    M15_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M15_AXI_bvalid : in STD_LOGIC;
    M15_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M15_AXI_rready : out STD_LOGIC;
    M15_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M15_AXI_rvalid : in STD_LOGIC;
    M15_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M15_AXI_wready : in STD_LOGIC;
    M15_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M15_AXI_wvalid : out STD_LOGIC;
    M16_ACLK : in STD_LOGIC;
    M16_ARESETN : in STD_LOGIC;
    M16_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M16_AXI_arready : in STD_LOGIC;
    M16_AXI_arvalid : out STD_LOGIC;
    M16_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M16_AXI_awready : in STD_LOGIC;
    M16_AXI_awvalid : out STD_LOGIC;
    M16_AXI_bready : out STD_LOGIC;
    M16_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M16_AXI_bvalid : in STD_LOGIC;
    M16_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M16_AXI_rready : out STD_LOGIC;
    M16_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M16_AXI_rvalid : in STD_LOGIC;
    M16_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M16_AXI_wready : in STD_LOGIC;
    M16_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M16_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_microblaze_0_axi_periph_0;

architecture STRUCTURE of design_1_microblaze_0_axi_periph_0 is
  component design_1_microblaze_0_axi_periph_imp_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1_microblaze_0_axi_periph_imp_xbar_0;
  component design_1_microblaze_0_axi_periph_imp_tier2_xbar_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_microblaze_0_axi_periph_imp_tier2_xbar_0_0;
  component design_1_microblaze_0_axi_periph_imp_tier2_xbar_1_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_1_microblaze_0_axi_periph_imp_tier2_xbar_1_0;
  component design_1_microblaze_0_axi_periph_imp_tier2_xbar_2_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_microblaze_0_axi_periph_imp_tier2_xbar_2_0;
  signal i00_couplers_to_tier2_xbar_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_0_to_m01_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_0_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_0_to_m01_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_0_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_0_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m01_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_0_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m01_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_0_to_m01_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal tier2_xbar_0_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_0_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_0_to_m02_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_0_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_0_to_m02_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_0_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_0_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m02_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_0_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m02_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_0_to_m02_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal tier2_xbar_0_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_0_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_0_to_m03_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_0_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_0_to_m03_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_0_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_0_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m03_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_0_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m03_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_0_to_m03_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal tier2_xbar_0_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_0_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_0_to_m04_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_0_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_0_to_m04_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_0_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_0_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m04_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_0_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m04_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_0_to_m04_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal tier2_xbar_0_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_0_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_0_to_m05_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_0_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_0_to_m05_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_0_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_0_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m05_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_0_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m05_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_0_to_m05_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal tier2_xbar_0_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_0_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_0_to_m06_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_0_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_0_to_m06_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_0_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_0_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m06_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_0_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m06_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_0_to_m06_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal tier2_xbar_0_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_0_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal tier2_xbar_0_to_m07_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_0_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal tier2_xbar_0_to_m07_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_0_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_0_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m07_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_0_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m07_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_0_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal tier2_xbar_0_to_m07_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_0_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal tier2_xbar_0_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_1_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_1_to_m09_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_1_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_1_to_m09_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_1_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_1_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m09_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_1_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m09_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_1_to_m09_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_1_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_1_to_m10_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal tier2_xbar_1_to_m10_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m10_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_1_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_1_to_m10_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal tier2_xbar_1_to_m10_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m10_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_1_to_m10_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_1_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m10_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m10_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_1_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m10_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_1_to_m10_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal tier2_xbar_1_to_m10_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_1_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_1_to_m11_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_1_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_1_to_m11_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_1_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_1_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m11_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_1_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m11_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_1_to_m11_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal tier2_xbar_1_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_1_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_1_to_m12_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m12_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_1_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_1_to_m12_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m12_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_1_to_m12_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_1_to_m12_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m12_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m12_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m12_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_1_to_m12_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m12_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_1_to_m12_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m12_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal tier2_xbar_1_to_m12_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_1_to_m13_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_1_to_m13_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m13_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_1_to_m13_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_1_to_m13_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m13_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_1_to_m13_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_1_to_m13_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m13_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m13_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m13_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_1_to_m13_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m13_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m13_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_1_to_m13_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m13_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal tier2_xbar_1_to_m13_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_1_to_m14_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_1_to_m14_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m14_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_1_to_m14_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_1_to_m14_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m14_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_1_to_m14_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_1_to_m14_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m14_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m14_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m14_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_1_to_m14_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m14_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_1_to_m14_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_1_to_m14_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_1_to_m14_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal tier2_xbar_1_to_m14_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_2_to_m15_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_2_to_m15_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_2_to_m15_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m15_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_2_to_m15_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_2_to_m15_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m15_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m15_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_2_to_m15_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_2_to_m15_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_2_to_m15_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m15_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_2_to_m15_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_2_to_m15_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_2_to_m15_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_2_to_m15_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tier2_xbar_2_to_m15_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m16_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_2_to_m16_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_2_to_m16_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_2_to_m16_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_2_to_m16_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_2_to_m16_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_2_to_m16_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_2_to_m16_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_2_to_m16_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_2_to_m16_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_2_to_m16_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_2_to_m16_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_2_to_m16_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_2_to_m16_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_2_to_m16_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_2_to_m16_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal tier2_xbar_2_to_m16_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_i00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_i00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_i00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_i00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_i01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_i01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_i01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_i01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_i01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_i01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_i01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_i01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_i01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_i01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_i02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_i02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_i02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_i02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_i02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_i02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_i02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_i02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_i02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_i02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_i02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_tier2_xbar_0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_tier2_xbar_0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal NLW_tier2_xbar_1_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_tier2_xbar_2_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_tier2_xbar_2_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
i00_couplers: entity work.i00_couplers_imp_MLJI85
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => i00_couplers_to_tier2_xbar_0_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => i00_couplers_to_tier2_xbar_0_ARPROT(2 downto 0),
      M_AXI_arready(0) => i00_couplers_to_tier2_xbar_0_ARREADY(0),
      M_AXI_arvalid(0) => i00_couplers_to_tier2_xbar_0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => i00_couplers_to_tier2_xbar_0_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => i00_couplers_to_tier2_xbar_0_AWPROT(2 downto 0),
      M_AXI_awready(0) => i00_couplers_to_tier2_xbar_0_AWREADY(0),
      M_AXI_awvalid(0) => i00_couplers_to_tier2_xbar_0_AWVALID(0),
      M_AXI_bready(0) => i00_couplers_to_tier2_xbar_0_BREADY(0),
      M_AXI_bresp(1 downto 0) => i00_couplers_to_tier2_xbar_0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => i00_couplers_to_tier2_xbar_0_BVALID(0),
      M_AXI_rdata(31 downto 0) => i00_couplers_to_tier2_xbar_0_RDATA(31 downto 0),
      M_AXI_rready(0) => i00_couplers_to_tier2_xbar_0_RREADY(0),
      M_AXI_rresp(1 downto 0) => i00_couplers_to_tier2_xbar_0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => i00_couplers_to_tier2_xbar_0_RVALID(0),
      M_AXI_wdata(31 downto 0) => i00_couplers_to_tier2_xbar_0_WDATA(31 downto 0),
      M_AXI_wready(0) => i00_couplers_to_tier2_xbar_0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => i00_couplers_to_tier2_xbar_0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => i00_couplers_to_tier2_xbar_0_WVALID(0),
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => xbar_to_i00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_i00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => xbar_to_i00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_i00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_i00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_i00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => xbar_to_i00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_i00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_i00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_i00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_i00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_i00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_i00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_i00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_i00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_i00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_i00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_i00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_i00_couplers_WVALID(0)
    );
i01_couplers: entity work.i01_couplers_imp_1GR4JJ8
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => i01_couplers_to_tier2_xbar_1_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => i01_couplers_to_tier2_xbar_1_ARPROT(2 downto 0),
      M_AXI_arready(0) => i01_couplers_to_tier2_xbar_1_ARREADY(0),
      M_AXI_arvalid(0) => i01_couplers_to_tier2_xbar_1_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => i01_couplers_to_tier2_xbar_1_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => i01_couplers_to_tier2_xbar_1_AWPROT(2 downto 0),
      M_AXI_awready(0) => i01_couplers_to_tier2_xbar_1_AWREADY(0),
      M_AXI_awvalid(0) => i01_couplers_to_tier2_xbar_1_AWVALID(0),
      M_AXI_bready(0) => i01_couplers_to_tier2_xbar_1_BREADY(0),
      M_AXI_bresp(1 downto 0) => i01_couplers_to_tier2_xbar_1_BRESP(1 downto 0),
      M_AXI_bvalid(0) => i01_couplers_to_tier2_xbar_1_BVALID(0),
      M_AXI_rdata(31 downto 0) => i01_couplers_to_tier2_xbar_1_RDATA(31 downto 0),
      M_AXI_rready(0) => i01_couplers_to_tier2_xbar_1_RREADY(0),
      M_AXI_rresp(1 downto 0) => i01_couplers_to_tier2_xbar_1_RRESP(1 downto 0),
      M_AXI_rvalid(0) => i01_couplers_to_tier2_xbar_1_RVALID(0),
      M_AXI_wdata(31 downto 0) => i01_couplers_to_tier2_xbar_1_WDATA(31 downto 0),
      M_AXI_wready(0) => i01_couplers_to_tier2_xbar_1_WREADY(0),
      M_AXI_wstrb(3 downto 0) => i01_couplers_to_tier2_xbar_1_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => i01_couplers_to_tier2_xbar_1_WVALID(0),
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => xbar_to_i01_couplers_ARADDR(63 downto 32),
      S_AXI_arprot(2 downto 0) => xbar_to_i01_couplers_ARPROT(5 downto 3),
      S_AXI_arready(0) => xbar_to_i01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_i01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_i01_couplers_AWADDR(63 downto 32),
      S_AXI_awprot(2 downto 0) => xbar_to_i01_couplers_AWPROT(5 downto 3),
      S_AXI_awready(0) => xbar_to_i01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_i01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_i01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_i01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_i01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_i01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_i01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_i01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_i01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_i01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_i01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_i01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_i01_couplers_WVALID(1)
    );
i02_couplers: entity work.i02_couplers_imp_NHJKHY
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => i02_couplers_to_tier2_xbar_2_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => i02_couplers_to_tier2_xbar_2_ARPROT(2 downto 0),
      M_AXI_arready(0) => i02_couplers_to_tier2_xbar_2_ARREADY(0),
      M_AXI_arvalid(0) => i02_couplers_to_tier2_xbar_2_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => i02_couplers_to_tier2_xbar_2_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => i02_couplers_to_tier2_xbar_2_AWPROT(2 downto 0),
      M_AXI_awready(0) => i02_couplers_to_tier2_xbar_2_AWREADY(0),
      M_AXI_awvalid(0) => i02_couplers_to_tier2_xbar_2_AWVALID(0),
      M_AXI_bready(0) => i02_couplers_to_tier2_xbar_2_BREADY(0),
      M_AXI_bresp(1 downto 0) => i02_couplers_to_tier2_xbar_2_BRESP(1 downto 0),
      M_AXI_bvalid(0) => i02_couplers_to_tier2_xbar_2_BVALID(0),
      M_AXI_rdata(31 downto 0) => i02_couplers_to_tier2_xbar_2_RDATA(31 downto 0),
      M_AXI_rready(0) => i02_couplers_to_tier2_xbar_2_RREADY(0),
      M_AXI_rresp(1 downto 0) => i02_couplers_to_tier2_xbar_2_RRESP(1 downto 0),
      M_AXI_rvalid(0) => i02_couplers_to_tier2_xbar_2_RVALID(0),
      M_AXI_wdata(31 downto 0) => i02_couplers_to_tier2_xbar_2_WDATA(31 downto 0),
      M_AXI_wready(0) => i02_couplers_to_tier2_xbar_2_WREADY(0),
      M_AXI_wstrb(3 downto 0) => i02_couplers_to_tier2_xbar_2_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => i02_couplers_to_tier2_xbar_2_WVALID(0),
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => xbar_to_i02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_i02_couplers_ARPROT(8 downto 6),
      S_AXI_arready(0) => xbar_to_i02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_i02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_i02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_i02_couplers_AWPROT(8 downto 6),
      S_AXI_awready(0) => xbar_to_i02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_i02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_i02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_i02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_i02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_i02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_i02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_i02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_i02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_i02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_i02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_i02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_i02_couplers_WVALID(2)
    );
m00_couplers: entity work.m00_couplers_imp_8RVYHO
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      M_AXI_arready => M00_AXI_arready,
      M_AXI_arvalid => M00_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      M_AXI_awready => M00_AXI_awready,
      M_AXI_awvalid => M00_AXI_awvalid,
      M_AXI_bready => M00_AXI_bready,
      M_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M00_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      M_AXI_rready => M00_AXI_rready,
      M_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M00_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      M_AXI_wready => M00_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M00_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready => tier2_xbar_0_to_m00_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_0_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready => tier2_xbar_0_to_m00_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_0_to_m00_couplers_AWVALID(0),
      S_AXI_bready => tier2_xbar_0_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_0_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_0_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_0_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => tier2_xbar_0_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => tier2_xbar_0_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1UTB3Y5
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M01_AXI_araddr(31 downto 0),
      M_AXI_arready => M01_AXI_arready,
      M_AXI_arvalid => M01_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M01_AXI_awaddr(31 downto 0),
      M_AXI_awready => M01_AXI_awready,
      M_AXI_awvalid => M01_AXI_awvalid,
      M_AXI_bready => M01_AXI_bready,
      M_AXI_bresp(1 downto 0) => M01_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M01_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M01_AXI_rdata(31 downto 0),
      M_AXI_rready => M01_AXI_rready,
      M_AXI_rresp(1 downto 0) => M01_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M01_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M01_AXI_wdata(31 downto 0),
      M_AXI_wready => M01_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M01_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M01_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready => tier2_xbar_0_to_m01_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_0_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready => tier2_xbar_0_to_m01_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_0_to_m01_couplers_AWVALID(1),
      S_AXI_bready => tier2_xbar_0_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_0_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_0_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_0_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => tier2_xbar_0_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => tier2_xbar_0_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_7ANRHB
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M02_AXI_araddr(31 downto 0),
      M_AXI_arready => M02_AXI_arready,
      M_AXI_arvalid => M02_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M02_AXI_awaddr(31 downto 0),
      M_AXI_awready => M02_AXI_awready,
      M_AXI_awvalid => M02_AXI_awvalid,
      M_AXI_bready => M02_AXI_bready,
      M_AXI_bresp(1 downto 0) => M02_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M02_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M02_AXI_rdata(31 downto 0),
      M_AXI_rready => M02_AXI_rready,
      M_AXI_rresp(1 downto 0) => M02_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M02_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M02_AXI_wdata(31 downto 0),
      M_AXI_wready => M02_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M02_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M02_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready => tier2_xbar_0_to_m02_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_0_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready => tier2_xbar_0_to_m02_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_0_to_m02_couplers_AWVALID(2),
      S_AXI_bready => tier2_xbar_0_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_0_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_0_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_0_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => tier2_xbar_0_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => tier2_xbar_0_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1W07O72
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M03_AXI_araddr(31 downto 0),
      M_AXI_arready => M03_AXI_arready,
      M_AXI_arvalid => M03_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M03_AXI_awaddr(31 downto 0),
      M_AXI_awready => M03_AXI_awready,
      M_AXI_awvalid => M03_AXI_awvalid,
      M_AXI_bready => M03_AXI_bready,
      M_AXI_bresp(1 downto 0) => M03_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M03_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M03_AXI_rdata(31 downto 0),
      M_AXI_rready => M03_AXI_rready,
      M_AXI_rresp(1 downto 0) => M03_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M03_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M03_AXI_wdata(31 downto 0),
      M_AXI_wready => M03_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M03_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M03_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arready => tier2_xbar_0_to_m03_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_0_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awready => tier2_xbar_0_to_m03_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_0_to_m03_couplers_AWVALID(3),
      S_AXI_bready => tier2_xbar_0_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_0_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_0_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_0_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => tier2_xbar_0_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => tier2_xbar_0_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_5LX7BU
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M04_AXI_araddr(31 downto 0),
      M_AXI_arready => M04_AXI_arready,
      M_AXI_arvalid => M04_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M04_AXI_awaddr(31 downto 0),
      M_AXI_awready => M04_AXI_awready,
      M_AXI_awvalid => M04_AXI_awvalid,
      M_AXI_bready => M04_AXI_bready,
      M_AXI_bresp(1 downto 0) => M04_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M04_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M04_AXI_rdata(31 downto 0),
      M_AXI_rready => M04_AXI_rready,
      M_AXI_rresp(1 downto 0) => M04_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M04_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M04_AXI_wdata(31 downto 0),
      M_AXI_wready => M04_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M04_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M04_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready => tier2_xbar_0_to_m04_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_0_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready => tier2_xbar_0_to_m04_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_0_to_m04_couplers_AWVALID(4),
      S_AXI_bready => tier2_xbar_0_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_0_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_0_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_0_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => tier2_xbar_0_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => tier2_xbar_0_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1XR4ZAZ
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M05_AXI_araddr(31 downto 0),
      M_AXI_arready => M05_AXI_arready,
      M_AXI_arvalid => M05_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M05_AXI_awaddr(31 downto 0),
      M_AXI_awready => M05_AXI_awready,
      M_AXI_awvalid => M05_AXI_awvalid,
      M_AXI_bready => M05_AXI_bready,
      M_AXI_bresp(1 downto 0) => M05_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M05_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M05_AXI_rdata(31 downto 0),
      M_AXI_rready => M05_AXI_rready,
      M_AXI_rresp(1 downto 0) => M05_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M05_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M05_AXI_wdata(31 downto 0),
      M_AXI_wready => M05_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M05_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M05_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready => tier2_xbar_0_to_m05_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_0_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready => tier2_xbar_0_to_m05_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_0_to_m05_couplers_AWVALID(5),
      S_AXI_bready => tier2_xbar_0_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_0_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_0_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_0_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => tier2_xbar_0_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => tier2_xbar_0_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_4YOIXL
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M06_AXI_araddr(31 downto 0),
      M_AXI_arready => M06_AXI_arready,
      M_AXI_arvalid => M06_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M06_AXI_awaddr(31 downto 0),
      M_AXI_awready => M06_AXI_awready,
      M_AXI_awvalid => M06_AXI_awvalid,
      M_AXI_bready => M06_AXI_bready,
      M_AXI_bresp(1 downto 0) => M06_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M06_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M06_AXI_rdata(31 downto 0),
      M_AXI_rready => M06_AXI_rready,
      M_AXI_rresp(1 downto 0) => M06_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M06_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M06_AXI_wdata(31 downto 0),
      M_AXI_wready => M06_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M06_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M06_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arready => tier2_xbar_0_to_m06_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_0_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awready => tier2_xbar_0_to_m06_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_0_to_m06_couplers_AWVALID(6),
      S_AXI_bready => tier2_xbar_0_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_0_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_0_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_0_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => tier2_xbar_0_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => tier2_xbar_0_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1YO2N20
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M07_AXI_araddr(31 downto 0),
      M_AXI_arready => M07_AXI_arready,
      M_AXI_arvalid => M07_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M07_AXI_awaddr(31 downto 0),
      M_AXI_awready => M07_AXI_awready,
      M_AXI_awvalid => M07_AXI_awvalid,
      M_AXI_bready => M07_AXI_bready,
      M_AXI_bresp(1 downto 0) => M07_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M07_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M07_AXI_rdata(31 downto 0),
      M_AXI_rready => M07_AXI_rready,
      M_AXI_rresp(1 downto 0) => M07_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M07_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M07_AXI_wdata(31 downto 0),
      M_AXI_wready => M07_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M07_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M07_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arready => tier2_xbar_0_to_m07_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_0_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awready => tier2_xbar_0_to_m07_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_0_to_m07_couplers_AWVALID(7),
      S_AXI_bready => tier2_xbar_0_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_0_to_m07_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_0_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_0_to_m07_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wready => tier2_xbar_0_to_m07_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid => tier2_xbar_0_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_2FYR80
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M08_AXI_araddr(31 downto 0),
      M_AXI_arready => M08_AXI_arready,
      M_AXI_arvalid => M08_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M08_AXI_awaddr(31 downto 0),
      M_AXI_awready => M08_AXI_awready,
      M_AXI_awvalid => M08_AXI_awvalid,
      M_AXI_bready => M08_AXI_bready,
      M_AXI_bresp(1 downto 0) => M08_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M08_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M08_AXI_rdata(31 downto 0),
      M_AXI_rready => M08_AXI_rready,
      M_AXI_rresp(1 downto 0) => M08_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M08_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M08_AXI_wdata(31 downto 0),
      M_AXI_wready => M08_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M08_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M08_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m08_couplers_ARADDR(31 downto 0),
      S_AXI_arready => tier2_xbar_1_to_m08_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_1_to_m08_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m08_couplers_AWADDR(31 downto 0),
      S_AXI_awready => tier2_xbar_1_to_m08_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_1_to_m08_couplers_AWVALID(0),
      S_AXI_bready => tier2_xbar_1_to_m08_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_1_to_m08_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m08_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_1_to_m08_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_1_to_m08_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m08_couplers_WDATA(31 downto 0),
      S_AXI_wready => tier2_xbar_1_to_m08_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m08_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => tier2_xbar_1_to_m08_couplers_WVALID(0)
    );
m09_couplers: entity work.m09_couplers_imp_1S9IENL
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M09_AXI_araddr(31 downto 0),
      M_AXI_arready => M09_AXI_arready,
      M_AXI_arvalid => M09_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M09_AXI_awaddr(31 downto 0),
      M_AXI_awready => M09_AXI_awready,
      M_AXI_awvalid => M09_AXI_awvalid,
      M_AXI_bready => M09_AXI_bready,
      M_AXI_bresp(1 downto 0) => M09_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M09_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M09_AXI_rdata(31 downto 0),
      M_AXI_rready => M09_AXI_rready,
      M_AXI_rresp(1 downto 0) => M09_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M09_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M09_AXI_wdata(31 downto 0),
      M_AXI_wready => M09_AXI_wready,
      M_AXI_wvalid => M09_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m09_couplers_ARADDR(63 downto 32),
      S_AXI_arready => tier2_xbar_1_to_m09_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_1_to_m09_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m09_couplers_AWADDR(63 downto 32),
      S_AXI_awready => tier2_xbar_1_to_m09_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_1_to_m09_couplers_AWVALID(1),
      S_AXI_bready => tier2_xbar_1_to_m09_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_1_to_m09_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m09_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_1_to_m09_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_1_to_m09_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m09_couplers_WDATA(63 downto 32),
      S_AXI_wready => tier2_xbar_1_to_m09_couplers_WREADY,
      S_AXI_wvalid => tier2_xbar_1_to_m09_couplers_WVALID(1)
    );
m10_couplers: entity work.m10_couplers_imp_1JMMVIC
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M10_AXI_araddr(31 downto 0),
      M_AXI_arprot(2 downto 0) => M10_AXI_arprot(2 downto 0),
      M_AXI_arready => M10_AXI_arready,
      M_AXI_arvalid => M10_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M10_AXI_awaddr(31 downto 0),
      M_AXI_awprot(2 downto 0) => M10_AXI_awprot(2 downto 0),
      M_AXI_awready => M10_AXI_awready,
      M_AXI_awvalid => M10_AXI_awvalid,
      M_AXI_bready => M10_AXI_bready,
      M_AXI_bresp(1 downto 0) => M10_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M10_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M10_AXI_rdata(31 downto 0),
      M_AXI_rready => M10_AXI_rready,
      M_AXI_rresp(1 downto 0) => M10_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M10_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M10_AXI_wdata(31 downto 0),
      M_AXI_wready => M10_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M10_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M10_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m10_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => tier2_xbar_1_to_m10_couplers_ARPROT(8 downto 6),
      S_AXI_arready => tier2_xbar_1_to_m10_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_1_to_m10_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m10_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => tier2_xbar_1_to_m10_couplers_AWPROT(8 downto 6),
      S_AXI_awready => tier2_xbar_1_to_m10_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_1_to_m10_couplers_AWVALID(2),
      S_AXI_bready => tier2_xbar_1_to_m10_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m10_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_1_to_m10_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m10_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_1_to_m10_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m10_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_1_to_m10_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m10_couplers_WDATA(95 downto 64),
      S_AXI_wready => tier2_xbar_1_to_m10_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m10_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => tier2_xbar_1_to_m10_couplers_WVALID(2)
    );
m11_couplers: entity work.m11_couplers_imp_AVFHLX
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M11_AXI_araddr(31 downto 0),
      M_AXI_arready => M11_AXI_arready,
      M_AXI_arvalid => M11_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M11_AXI_awaddr(31 downto 0),
      M_AXI_awready => M11_AXI_awready,
      M_AXI_awvalid => M11_AXI_awvalid,
      M_AXI_bready => M11_AXI_bready,
      M_AXI_bresp(1 downto 0) => M11_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M11_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M11_AXI_rdata(31 downto 0),
      M_AXI_rready => M11_AXI_rready,
      M_AXI_rresp(1 downto 0) => M11_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M11_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M11_AXI_wdata(31 downto 0),
      M_AXI_wready => M11_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M11_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M11_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m11_couplers_ARADDR(127 downto 96),
      S_AXI_arready => tier2_xbar_1_to_m11_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_1_to_m11_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m11_couplers_AWADDR(127 downto 96),
      S_AXI_awready => tier2_xbar_1_to_m11_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_1_to_m11_couplers_AWVALID(3),
      S_AXI_bready => tier2_xbar_1_to_m11_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m11_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_1_to_m11_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m11_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_1_to_m11_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m11_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_1_to_m11_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m11_couplers_WDATA(127 downto 96),
      S_AXI_wready => tier2_xbar_1_to_m11_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m11_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => tier2_xbar_1_to_m11_couplers_WVALID(3)
    );
m12_couplers: entity work.m12_couplers_imp_1L2AF0N
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M12_AXI_araddr(31 downto 0),
      M_AXI_arready => M12_AXI_arready,
      M_AXI_arvalid => M12_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M12_AXI_awaddr(31 downto 0),
      M_AXI_awready => M12_AXI_awready,
      M_AXI_awvalid => M12_AXI_awvalid,
      M_AXI_bready => M12_AXI_bready,
      M_AXI_bresp(1 downto 0) => M12_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M12_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M12_AXI_rdata(31 downto 0),
      M_AXI_rready => M12_AXI_rready,
      M_AXI_rresp(1 downto 0) => M12_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M12_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M12_AXI_wdata(31 downto 0),
      M_AXI_wready => M12_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M12_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M12_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m12_couplers_ARADDR(159 downto 128),
      S_AXI_arready => tier2_xbar_1_to_m12_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_1_to_m12_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m12_couplers_AWADDR(159 downto 128),
      S_AXI_awready => tier2_xbar_1_to_m12_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_1_to_m12_couplers_AWVALID(4),
      S_AXI_bready => tier2_xbar_1_to_m12_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m12_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_1_to_m12_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m12_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_1_to_m12_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m12_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_1_to_m12_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m12_couplers_WDATA(159 downto 128),
      S_AXI_wready => tier2_xbar_1_to_m12_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m12_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => tier2_xbar_1_to_m12_couplers_WVALID(4)
    );
m13_couplers: entity work.m13_couplers_imp_9PFI3Q
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M13_AXI_araddr(31 downto 0),
      M_AXI_arready => M13_AXI_arready,
      M_AXI_arvalid => M13_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M13_AXI_awaddr(31 downto 0),
      M_AXI_awready => M13_AXI_awready,
      M_AXI_awvalid => M13_AXI_awvalid,
      M_AXI_bready => M13_AXI_bready,
      M_AXI_bresp(1 downto 0) => M13_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M13_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M13_AXI_rdata(31 downto 0),
      M_AXI_rready => M13_AXI_rready,
      M_AXI_rresp(1 downto 0) => M13_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M13_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M13_AXI_wdata(31 downto 0),
      M_AXI_wready => M13_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M13_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M13_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m13_couplers_ARADDR(191 downto 160),
      S_AXI_arready => tier2_xbar_1_to_m13_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_1_to_m13_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m13_couplers_AWADDR(191 downto 160),
      S_AXI_awready => tier2_xbar_1_to_m13_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_1_to_m13_couplers_AWVALID(5),
      S_AXI_bready => tier2_xbar_1_to_m13_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m13_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_1_to_m13_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m13_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_1_to_m13_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m13_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_1_to_m13_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m13_couplers_WDATA(191 downto 160),
      S_AXI_wready => tier2_xbar_1_to_m13_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m13_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => tier2_xbar_1_to_m13_couplers_WVALID(5)
    );
m14_couplers: entity work.m14_couplers_imp_1IC4S8Y
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M14_AXI_araddr(31 downto 0),
      M_AXI_arready => M14_AXI_arready,
      M_AXI_arvalid => M14_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M14_AXI_awaddr(31 downto 0),
      M_AXI_awready => M14_AXI_awready,
      M_AXI_awvalid => M14_AXI_awvalid,
      M_AXI_bready => M14_AXI_bready,
      M_AXI_bresp(1 downto 0) => M14_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M14_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M14_AXI_rdata(31 downto 0),
      M_AXI_rready => M14_AXI_rready,
      M_AXI_rresp(1 downto 0) => M14_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M14_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M14_AXI_wdata(31 downto 0),
      M_AXI_wready => M14_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M14_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M14_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m14_couplers_ARADDR(223 downto 192),
      S_AXI_arready => tier2_xbar_1_to_m14_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_1_to_m14_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m14_couplers_AWADDR(223 downto 192),
      S_AXI_awready => tier2_xbar_1_to_m14_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_1_to_m14_couplers_AWVALID(6),
      S_AXI_bready => tier2_xbar_1_to_m14_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m14_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_1_to_m14_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m14_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_1_to_m14_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m14_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_1_to_m14_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m14_couplers_WDATA(223 downto 192),
      S_AXI_wready => tier2_xbar_1_to_m14_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m14_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => tier2_xbar_1_to_m14_couplers_WVALID(6)
    );
m15_couplers: entity work.m15_couplers_imp_CCS34Z
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M15_AXI_araddr(31 downto 0),
      M_AXI_arready => M15_AXI_arready,
      M_AXI_arvalid => M15_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M15_AXI_awaddr(31 downto 0),
      M_AXI_awready => M15_AXI_awready,
      M_AXI_awvalid => M15_AXI_awvalid,
      M_AXI_bready => M15_AXI_bready,
      M_AXI_bresp(1 downto 0) => M15_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M15_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M15_AXI_rdata(31 downto 0),
      M_AXI_rready => M15_AXI_rready,
      M_AXI_rresp(1 downto 0) => M15_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M15_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M15_AXI_wdata(31 downto 0),
      M_AXI_wready => M15_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M15_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M15_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_2_to_m15_couplers_ARADDR(31 downto 0),
      S_AXI_arready => tier2_xbar_2_to_m15_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_2_to_m15_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_2_to_m15_couplers_AWADDR(31 downto 0),
      S_AXI_awready => tier2_xbar_2_to_m15_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_2_to_m15_couplers_AWVALID(0),
      S_AXI_bready => tier2_xbar_2_to_m15_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => tier2_xbar_2_to_m15_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_2_to_m15_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_2_to_m15_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_2_to_m15_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => tier2_xbar_2_to_m15_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_2_to_m15_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_2_to_m15_couplers_WDATA(31 downto 0),
      S_AXI_wready => tier2_xbar_2_to_m15_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_2_to_m15_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => tier2_xbar_2_to_m15_couplers_WVALID(0)
    );
m16_couplers: entity work.m16_couplers_imp_1IXUA2P
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => M16_AXI_araddr(31 downto 0),
      M_AXI_arready => M16_AXI_arready,
      M_AXI_arvalid => M16_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M16_AXI_awaddr(31 downto 0),
      M_AXI_awready => M16_AXI_awready,
      M_AXI_awvalid => M16_AXI_awvalid,
      M_AXI_bready => M16_AXI_bready,
      M_AXI_bresp(1 downto 0) => M16_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M16_AXI_bvalid,
      M_AXI_rdata(31 downto 0) => M16_AXI_rdata(31 downto 0),
      M_AXI_rready => M16_AXI_rready,
      M_AXI_rresp(1 downto 0) => M16_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M16_AXI_rvalid,
      M_AXI_wdata(31 downto 0) => M16_AXI_wdata(31 downto 0),
      M_AXI_wready => M16_AXI_wready,
      M_AXI_wstrb(3 downto 0) => M16_AXI_wstrb(3 downto 0),
      M_AXI_wvalid => M16_AXI_wvalid,
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => tier2_xbar_2_to_m16_couplers_ARADDR(63 downto 32),
      S_AXI_arready => tier2_xbar_2_to_m16_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_2_to_m16_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_2_to_m16_couplers_AWADDR(63 downto 32),
      S_AXI_awready => tier2_xbar_2_to_m16_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_2_to_m16_couplers_AWVALID(1),
      S_AXI_bready => tier2_xbar_2_to_m16_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => tier2_xbar_2_to_m16_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_2_to_m16_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_2_to_m16_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_2_to_m16_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => tier2_xbar_2_to_m16_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_2_to_m16_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_2_to_m16_couplers_WDATA(63 downto 32),
      S_AXI_wready => tier2_xbar_2_to_m16_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_2_to_m16_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => tier2_xbar_2_to_m16_couplers_WVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_1RZP34U
     port map (
      M_ACLK => ACLK,
      M_ARESETN => ARESETN,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => ACLK,
      S_ARESETN => ARESETN,
      S_AXI_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      S_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S_AXI_arready(0) => S00_AXI_arready(0),
      S_AXI_arvalid(0) => S00_AXI_arvalid(0),
      S_AXI_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      S_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S_AXI_awready(0) => S00_AXI_awready(0),
      S_AXI_awvalid(0) => S00_AXI_awvalid(0),
      S_AXI_bready(0) => S00_AXI_bready(0),
      S_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S_AXI_bvalid(0) => S00_AXI_bvalid(0),
      S_AXI_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      S_AXI_rready(0) => S00_AXI_rready(0),
      S_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S_AXI_rvalid(0) => S00_AXI_rvalid(0),
      S_AXI_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      S_AXI_wready(0) => S00_AXI_wready(0),
      S_AXI_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      S_AXI_wvalid(0) => S00_AXI_wvalid(0)
    );
tier2_xbar_0: component design_1_microblaze_0_axi_periph_imp_tier2_xbar_0_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(255 downto 224) => tier2_xbar_0_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => tier2_xbar_0_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => tier2_xbar_0_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => tier2_xbar_0_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => tier2_xbar_0_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => tier2_xbar_0_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => tier2_xbar_0_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => tier2_xbar_0_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(23 downto 0) => NLW_tier2_xbar_0_m_axi_arprot_UNCONNECTED(23 downto 0),
      m_axi_arready(7) => tier2_xbar_0_to_m07_couplers_ARREADY,
      m_axi_arready(6) => tier2_xbar_0_to_m06_couplers_ARREADY,
      m_axi_arready(5) => tier2_xbar_0_to_m05_couplers_ARREADY,
      m_axi_arready(4) => tier2_xbar_0_to_m04_couplers_ARREADY,
      m_axi_arready(3) => tier2_xbar_0_to_m03_couplers_ARREADY,
      m_axi_arready(2) => tier2_xbar_0_to_m02_couplers_ARREADY,
      m_axi_arready(1) => tier2_xbar_0_to_m01_couplers_ARREADY,
      m_axi_arready(0) => tier2_xbar_0_to_m00_couplers_ARREADY,
      m_axi_arvalid(7) => tier2_xbar_0_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => tier2_xbar_0_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => tier2_xbar_0_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => tier2_xbar_0_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => tier2_xbar_0_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => tier2_xbar_0_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => tier2_xbar_0_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => tier2_xbar_0_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(255 downto 224) => tier2_xbar_0_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => tier2_xbar_0_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => tier2_xbar_0_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => tier2_xbar_0_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => tier2_xbar_0_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => tier2_xbar_0_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => tier2_xbar_0_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => tier2_xbar_0_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(23 downto 0) => NLW_tier2_xbar_0_m_axi_awprot_UNCONNECTED(23 downto 0),
      m_axi_awready(7) => tier2_xbar_0_to_m07_couplers_AWREADY,
      m_axi_awready(6) => tier2_xbar_0_to_m06_couplers_AWREADY,
      m_axi_awready(5) => tier2_xbar_0_to_m05_couplers_AWREADY,
      m_axi_awready(4) => tier2_xbar_0_to_m04_couplers_AWREADY,
      m_axi_awready(3) => tier2_xbar_0_to_m03_couplers_AWREADY,
      m_axi_awready(2) => tier2_xbar_0_to_m02_couplers_AWREADY,
      m_axi_awready(1) => tier2_xbar_0_to_m01_couplers_AWREADY,
      m_axi_awready(0) => tier2_xbar_0_to_m00_couplers_AWREADY,
      m_axi_awvalid(7) => tier2_xbar_0_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => tier2_xbar_0_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => tier2_xbar_0_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => tier2_xbar_0_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => tier2_xbar_0_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => tier2_xbar_0_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => tier2_xbar_0_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => tier2_xbar_0_to_m00_couplers_AWVALID(0),
      m_axi_bready(7) => tier2_xbar_0_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => tier2_xbar_0_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => tier2_xbar_0_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => tier2_xbar_0_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => tier2_xbar_0_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => tier2_xbar_0_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => tier2_xbar_0_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => tier2_xbar_0_to_m00_couplers_BREADY(0),
      m_axi_bresp(15 downto 14) => tier2_xbar_0_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => tier2_xbar_0_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => tier2_xbar_0_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => tier2_xbar_0_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => tier2_xbar_0_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => tier2_xbar_0_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => tier2_xbar_0_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => tier2_xbar_0_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(7) => tier2_xbar_0_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => tier2_xbar_0_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => tier2_xbar_0_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => tier2_xbar_0_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => tier2_xbar_0_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => tier2_xbar_0_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => tier2_xbar_0_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => tier2_xbar_0_to_m00_couplers_BVALID,
      m_axi_rdata(255 downto 224) => tier2_xbar_0_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => tier2_xbar_0_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => tier2_xbar_0_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => tier2_xbar_0_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => tier2_xbar_0_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => tier2_xbar_0_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => tier2_xbar_0_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => tier2_xbar_0_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(7) => tier2_xbar_0_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => tier2_xbar_0_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => tier2_xbar_0_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => tier2_xbar_0_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => tier2_xbar_0_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => tier2_xbar_0_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => tier2_xbar_0_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => tier2_xbar_0_to_m00_couplers_RREADY(0),
      m_axi_rresp(15 downto 14) => tier2_xbar_0_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => tier2_xbar_0_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => tier2_xbar_0_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => tier2_xbar_0_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => tier2_xbar_0_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => tier2_xbar_0_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => tier2_xbar_0_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => tier2_xbar_0_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(7) => tier2_xbar_0_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => tier2_xbar_0_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => tier2_xbar_0_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => tier2_xbar_0_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => tier2_xbar_0_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => tier2_xbar_0_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => tier2_xbar_0_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => tier2_xbar_0_to_m00_couplers_RVALID,
      m_axi_wdata(255 downto 224) => tier2_xbar_0_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => tier2_xbar_0_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => tier2_xbar_0_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => tier2_xbar_0_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => tier2_xbar_0_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => tier2_xbar_0_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => tier2_xbar_0_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => tier2_xbar_0_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(7) => tier2_xbar_0_to_m07_couplers_WREADY,
      m_axi_wready(6) => tier2_xbar_0_to_m06_couplers_WREADY,
      m_axi_wready(5) => tier2_xbar_0_to_m05_couplers_WREADY,
      m_axi_wready(4) => tier2_xbar_0_to_m04_couplers_WREADY,
      m_axi_wready(3) => tier2_xbar_0_to_m03_couplers_WREADY,
      m_axi_wready(2) => tier2_xbar_0_to_m02_couplers_WREADY,
      m_axi_wready(1) => tier2_xbar_0_to_m01_couplers_WREADY,
      m_axi_wready(0) => tier2_xbar_0_to_m00_couplers_WREADY,
      m_axi_wstrb(31 downto 28) => tier2_xbar_0_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => tier2_xbar_0_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => tier2_xbar_0_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => tier2_xbar_0_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => tier2_xbar_0_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => tier2_xbar_0_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => tier2_xbar_0_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => tier2_xbar_0_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(7) => tier2_xbar_0_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => tier2_xbar_0_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => tier2_xbar_0_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => tier2_xbar_0_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => tier2_xbar_0_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => tier2_xbar_0_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => tier2_xbar_0_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => tier2_xbar_0_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => i00_couplers_to_tier2_xbar_0_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => i00_couplers_to_tier2_xbar_0_ARPROT(2 downto 0),
      s_axi_arready(0) => i00_couplers_to_tier2_xbar_0_ARREADY(0),
      s_axi_arvalid(0) => i00_couplers_to_tier2_xbar_0_ARVALID(0),
      s_axi_awaddr(31 downto 0) => i00_couplers_to_tier2_xbar_0_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => i00_couplers_to_tier2_xbar_0_AWPROT(2 downto 0),
      s_axi_awready(0) => i00_couplers_to_tier2_xbar_0_AWREADY(0),
      s_axi_awvalid(0) => i00_couplers_to_tier2_xbar_0_AWVALID(0),
      s_axi_bready(0) => i00_couplers_to_tier2_xbar_0_BREADY(0),
      s_axi_bresp(1 downto 0) => i00_couplers_to_tier2_xbar_0_BRESP(1 downto 0),
      s_axi_bvalid(0) => i00_couplers_to_tier2_xbar_0_BVALID(0),
      s_axi_rdata(31 downto 0) => i00_couplers_to_tier2_xbar_0_RDATA(31 downto 0),
      s_axi_rready(0) => i00_couplers_to_tier2_xbar_0_RREADY(0),
      s_axi_rresp(1 downto 0) => i00_couplers_to_tier2_xbar_0_RRESP(1 downto 0),
      s_axi_rvalid(0) => i00_couplers_to_tier2_xbar_0_RVALID(0),
      s_axi_wdata(31 downto 0) => i00_couplers_to_tier2_xbar_0_WDATA(31 downto 0),
      s_axi_wready(0) => i00_couplers_to_tier2_xbar_0_WREADY(0),
      s_axi_wstrb(3 downto 0) => i00_couplers_to_tier2_xbar_0_WSTRB(3 downto 0),
      s_axi_wvalid(0) => i00_couplers_to_tier2_xbar_0_WVALID(0)
    );
tier2_xbar_1: component design_1_microblaze_0_axi_periph_imp_tier2_xbar_1_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(223 downto 192) => tier2_xbar_1_to_m14_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => tier2_xbar_1_to_m13_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => tier2_xbar_1_to_m12_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => tier2_xbar_1_to_m11_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => tier2_xbar_1_to_m10_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => tier2_xbar_1_to_m09_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => tier2_xbar_1_to_m08_couplers_ARADDR(31 downto 0),
      m_axi_arprot(20 downto 9) => NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED(20 downto 9),
      m_axi_arprot(8 downto 6) => tier2_xbar_1_to_m10_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 0) => NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED(5 downto 0),
      m_axi_arready(6) => tier2_xbar_1_to_m14_couplers_ARREADY,
      m_axi_arready(5) => tier2_xbar_1_to_m13_couplers_ARREADY,
      m_axi_arready(4) => tier2_xbar_1_to_m12_couplers_ARREADY,
      m_axi_arready(3) => tier2_xbar_1_to_m11_couplers_ARREADY,
      m_axi_arready(2) => tier2_xbar_1_to_m10_couplers_ARREADY,
      m_axi_arready(1) => tier2_xbar_1_to_m09_couplers_ARREADY,
      m_axi_arready(0) => tier2_xbar_1_to_m08_couplers_ARREADY,
      m_axi_arvalid(6) => tier2_xbar_1_to_m14_couplers_ARVALID(6),
      m_axi_arvalid(5) => tier2_xbar_1_to_m13_couplers_ARVALID(5),
      m_axi_arvalid(4) => tier2_xbar_1_to_m12_couplers_ARVALID(4),
      m_axi_arvalid(3) => tier2_xbar_1_to_m11_couplers_ARVALID(3),
      m_axi_arvalid(2) => tier2_xbar_1_to_m10_couplers_ARVALID(2),
      m_axi_arvalid(1) => tier2_xbar_1_to_m09_couplers_ARVALID(1),
      m_axi_arvalid(0) => tier2_xbar_1_to_m08_couplers_ARVALID(0),
      m_axi_awaddr(223 downto 192) => tier2_xbar_1_to_m14_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => tier2_xbar_1_to_m13_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => tier2_xbar_1_to_m12_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => tier2_xbar_1_to_m11_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => tier2_xbar_1_to_m10_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => tier2_xbar_1_to_m09_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => tier2_xbar_1_to_m08_couplers_AWADDR(31 downto 0),
      m_axi_awprot(20 downto 9) => NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED(20 downto 9),
      m_axi_awprot(8 downto 6) => tier2_xbar_1_to_m10_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 0) => NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED(5 downto 0),
      m_axi_awready(6) => tier2_xbar_1_to_m14_couplers_AWREADY,
      m_axi_awready(5) => tier2_xbar_1_to_m13_couplers_AWREADY,
      m_axi_awready(4) => tier2_xbar_1_to_m12_couplers_AWREADY,
      m_axi_awready(3) => tier2_xbar_1_to_m11_couplers_AWREADY,
      m_axi_awready(2) => tier2_xbar_1_to_m10_couplers_AWREADY,
      m_axi_awready(1) => tier2_xbar_1_to_m09_couplers_AWREADY,
      m_axi_awready(0) => tier2_xbar_1_to_m08_couplers_AWREADY,
      m_axi_awvalid(6) => tier2_xbar_1_to_m14_couplers_AWVALID(6),
      m_axi_awvalid(5) => tier2_xbar_1_to_m13_couplers_AWVALID(5),
      m_axi_awvalid(4) => tier2_xbar_1_to_m12_couplers_AWVALID(4),
      m_axi_awvalid(3) => tier2_xbar_1_to_m11_couplers_AWVALID(3),
      m_axi_awvalid(2) => tier2_xbar_1_to_m10_couplers_AWVALID(2),
      m_axi_awvalid(1) => tier2_xbar_1_to_m09_couplers_AWVALID(1),
      m_axi_awvalid(0) => tier2_xbar_1_to_m08_couplers_AWVALID(0),
      m_axi_bready(6) => tier2_xbar_1_to_m14_couplers_BREADY(6),
      m_axi_bready(5) => tier2_xbar_1_to_m13_couplers_BREADY(5),
      m_axi_bready(4) => tier2_xbar_1_to_m12_couplers_BREADY(4),
      m_axi_bready(3) => tier2_xbar_1_to_m11_couplers_BREADY(3),
      m_axi_bready(2) => tier2_xbar_1_to_m10_couplers_BREADY(2),
      m_axi_bready(1) => tier2_xbar_1_to_m09_couplers_BREADY(1),
      m_axi_bready(0) => tier2_xbar_1_to_m08_couplers_BREADY(0),
      m_axi_bresp(13 downto 12) => tier2_xbar_1_to_m14_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => tier2_xbar_1_to_m13_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => tier2_xbar_1_to_m12_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => tier2_xbar_1_to_m11_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => tier2_xbar_1_to_m10_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => tier2_xbar_1_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => tier2_xbar_1_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bvalid(6) => tier2_xbar_1_to_m14_couplers_BVALID,
      m_axi_bvalid(5) => tier2_xbar_1_to_m13_couplers_BVALID,
      m_axi_bvalid(4) => tier2_xbar_1_to_m12_couplers_BVALID,
      m_axi_bvalid(3) => tier2_xbar_1_to_m11_couplers_BVALID,
      m_axi_bvalid(2) => tier2_xbar_1_to_m10_couplers_BVALID,
      m_axi_bvalid(1) => tier2_xbar_1_to_m09_couplers_BVALID,
      m_axi_bvalid(0) => tier2_xbar_1_to_m08_couplers_BVALID,
      m_axi_rdata(223 downto 192) => tier2_xbar_1_to_m14_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => tier2_xbar_1_to_m13_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => tier2_xbar_1_to_m12_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => tier2_xbar_1_to_m11_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => tier2_xbar_1_to_m10_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => tier2_xbar_1_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => tier2_xbar_1_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rready(6) => tier2_xbar_1_to_m14_couplers_RREADY(6),
      m_axi_rready(5) => tier2_xbar_1_to_m13_couplers_RREADY(5),
      m_axi_rready(4) => tier2_xbar_1_to_m12_couplers_RREADY(4),
      m_axi_rready(3) => tier2_xbar_1_to_m11_couplers_RREADY(3),
      m_axi_rready(2) => tier2_xbar_1_to_m10_couplers_RREADY(2),
      m_axi_rready(1) => tier2_xbar_1_to_m09_couplers_RREADY(1),
      m_axi_rready(0) => tier2_xbar_1_to_m08_couplers_RREADY(0),
      m_axi_rresp(13 downto 12) => tier2_xbar_1_to_m14_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => tier2_xbar_1_to_m13_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => tier2_xbar_1_to_m12_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => tier2_xbar_1_to_m11_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => tier2_xbar_1_to_m10_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => tier2_xbar_1_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => tier2_xbar_1_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rvalid(6) => tier2_xbar_1_to_m14_couplers_RVALID,
      m_axi_rvalid(5) => tier2_xbar_1_to_m13_couplers_RVALID,
      m_axi_rvalid(4) => tier2_xbar_1_to_m12_couplers_RVALID,
      m_axi_rvalid(3) => tier2_xbar_1_to_m11_couplers_RVALID,
      m_axi_rvalid(2) => tier2_xbar_1_to_m10_couplers_RVALID,
      m_axi_rvalid(1) => tier2_xbar_1_to_m09_couplers_RVALID,
      m_axi_rvalid(0) => tier2_xbar_1_to_m08_couplers_RVALID,
      m_axi_wdata(223 downto 192) => tier2_xbar_1_to_m14_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => tier2_xbar_1_to_m13_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => tier2_xbar_1_to_m12_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => tier2_xbar_1_to_m11_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => tier2_xbar_1_to_m10_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => tier2_xbar_1_to_m09_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => tier2_xbar_1_to_m08_couplers_WDATA(31 downto 0),
      m_axi_wready(6) => tier2_xbar_1_to_m14_couplers_WREADY,
      m_axi_wready(5) => tier2_xbar_1_to_m13_couplers_WREADY,
      m_axi_wready(4) => tier2_xbar_1_to_m12_couplers_WREADY,
      m_axi_wready(3) => tier2_xbar_1_to_m11_couplers_WREADY,
      m_axi_wready(2) => tier2_xbar_1_to_m10_couplers_WREADY,
      m_axi_wready(1) => tier2_xbar_1_to_m09_couplers_WREADY,
      m_axi_wready(0) => tier2_xbar_1_to_m08_couplers_WREADY,
      m_axi_wstrb(27 downto 24) => tier2_xbar_1_to_m14_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => tier2_xbar_1_to_m13_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => tier2_xbar_1_to_m12_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => tier2_xbar_1_to_m11_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => tier2_xbar_1_to_m10_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => NLW_tier2_xbar_1_m_axi_wstrb_UNCONNECTED(7 downto 4),
      m_axi_wstrb(3 downto 0) => tier2_xbar_1_to_m08_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(6) => tier2_xbar_1_to_m14_couplers_WVALID(6),
      m_axi_wvalid(5) => tier2_xbar_1_to_m13_couplers_WVALID(5),
      m_axi_wvalid(4) => tier2_xbar_1_to_m12_couplers_WVALID(4),
      m_axi_wvalid(3) => tier2_xbar_1_to_m11_couplers_WVALID(3),
      m_axi_wvalid(2) => tier2_xbar_1_to_m10_couplers_WVALID(2),
      m_axi_wvalid(1) => tier2_xbar_1_to_m09_couplers_WVALID(1),
      m_axi_wvalid(0) => tier2_xbar_1_to_m08_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => i01_couplers_to_tier2_xbar_1_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => i01_couplers_to_tier2_xbar_1_ARPROT(2 downto 0),
      s_axi_arready(0) => i01_couplers_to_tier2_xbar_1_ARREADY(0),
      s_axi_arvalid(0) => i01_couplers_to_tier2_xbar_1_ARVALID(0),
      s_axi_awaddr(31 downto 0) => i01_couplers_to_tier2_xbar_1_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => i01_couplers_to_tier2_xbar_1_AWPROT(2 downto 0),
      s_axi_awready(0) => i01_couplers_to_tier2_xbar_1_AWREADY(0),
      s_axi_awvalid(0) => i01_couplers_to_tier2_xbar_1_AWVALID(0),
      s_axi_bready(0) => i01_couplers_to_tier2_xbar_1_BREADY(0),
      s_axi_bresp(1 downto 0) => i01_couplers_to_tier2_xbar_1_BRESP(1 downto 0),
      s_axi_bvalid(0) => i01_couplers_to_tier2_xbar_1_BVALID(0),
      s_axi_rdata(31 downto 0) => i01_couplers_to_tier2_xbar_1_RDATA(31 downto 0),
      s_axi_rready(0) => i01_couplers_to_tier2_xbar_1_RREADY(0),
      s_axi_rresp(1 downto 0) => i01_couplers_to_tier2_xbar_1_RRESP(1 downto 0),
      s_axi_rvalid(0) => i01_couplers_to_tier2_xbar_1_RVALID(0),
      s_axi_wdata(31 downto 0) => i01_couplers_to_tier2_xbar_1_WDATA(31 downto 0),
      s_axi_wready(0) => i01_couplers_to_tier2_xbar_1_WREADY(0),
      s_axi_wstrb(3 downto 0) => i01_couplers_to_tier2_xbar_1_WSTRB(3 downto 0),
      s_axi_wvalid(0) => i01_couplers_to_tier2_xbar_1_WVALID(0)
    );
tier2_xbar_2: component design_1_microblaze_0_axi_periph_imp_tier2_xbar_2_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(63 downto 32) => tier2_xbar_2_to_m16_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => tier2_xbar_2_to_m15_couplers_ARADDR(31 downto 0),
      m_axi_arprot(5 downto 0) => NLW_tier2_xbar_2_m_axi_arprot_UNCONNECTED(5 downto 0),
      m_axi_arready(1) => tier2_xbar_2_to_m16_couplers_ARREADY,
      m_axi_arready(0) => tier2_xbar_2_to_m15_couplers_ARREADY,
      m_axi_arvalid(1) => tier2_xbar_2_to_m16_couplers_ARVALID(1),
      m_axi_arvalid(0) => tier2_xbar_2_to_m15_couplers_ARVALID(0),
      m_axi_awaddr(63 downto 32) => tier2_xbar_2_to_m16_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => tier2_xbar_2_to_m15_couplers_AWADDR(31 downto 0),
      m_axi_awprot(5 downto 0) => NLW_tier2_xbar_2_m_axi_awprot_UNCONNECTED(5 downto 0),
      m_axi_awready(1) => tier2_xbar_2_to_m16_couplers_AWREADY,
      m_axi_awready(0) => tier2_xbar_2_to_m15_couplers_AWREADY,
      m_axi_awvalid(1) => tier2_xbar_2_to_m16_couplers_AWVALID(1),
      m_axi_awvalid(0) => tier2_xbar_2_to_m15_couplers_AWVALID(0),
      m_axi_bready(1) => tier2_xbar_2_to_m16_couplers_BREADY(1),
      m_axi_bready(0) => tier2_xbar_2_to_m15_couplers_BREADY(0),
      m_axi_bresp(3 downto 2) => tier2_xbar_2_to_m16_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => tier2_xbar_2_to_m15_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => tier2_xbar_2_to_m16_couplers_BVALID,
      m_axi_bvalid(0) => tier2_xbar_2_to_m15_couplers_BVALID,
      m_axi_rdata(63 downto 32) => tier2_xbar_2_to_m16_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => tier2_xbar_2_to_m15_couplers_RDATA(31 downto 0),
      m_axi_rready(1) => tier2_xbar_2_to_m16_couplers_RREADY(1),
      m_axi_rready(0) => tier2_xbar_2_to_m15_couplers_RREADY(0),
      m_axi_rresp(3 downto 2) => tier2_xbar_2_to_m16_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => tier2_xbar_2_to_m15_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => tier2_xbar_2_to_m16_couplers_RVALID,
      m_axi_rvalid(0) => tier2_xbar_2_to_m15_couplers_RVALID,
      m_axi_wdata(63 downto 32) => tier2_xbar_2_to_m16_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => tier2_xbar_2_to_m15_couplers_WDATA(31 downto 0),
      m_axi_wready(1) => tier2_xbar_2_to_m16_couplers_WREADY,
      m_axi_wready(0) => tier2_xbar_2_to_m15_couplers_WREADY,
      m_axi_wstrb(7 downto 4) => tier2_xbar_2_to_m16_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => tier2_xbar_2_to_m15_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(1) => tier2_xbar_2_to_m16_couplers_WVALID(1),
      m_axi_wvalid(0) => tier2_xbar_2_to_m15_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => i02_couplers_to_tier2_xbar_2_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => i02_couplers_to_tier2_xbar_2_ARPROT(2 downto 0),
      s_axi_arready(0) => i02_couplers_to_tier2_xbar_2_ARREADY(0),
      s_axi_arvalid(0) => i02_couplers_to_tier2_xbar_2_ARVALID(0),
      s_axi_awaddr(31 downto 0) => i02_couplers_to_tier2_xbar_2_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => i02_couplers_to_tier2_xbar_2_AWPROT(2 downto 0),
      s_axi_awready(0) => i02_couplers_to_tier2_xbar_2_AWREADY(0),
      s_axi_awvalid(0) => i02_couplers_to_tier2_xbar_2_AWVALID(0),
      s_axi_bready(0) => i02_couplers_to_tier2_xbar_2_BREADY(0),
      s_axi_bresp(1 downto 0) => i02_couplers_to_tier2_xbar_2_BRESP(1 downto 0),
      s_axi_bvalid(0) => i02_couplers_to_tier2_xbar_2_BVALID(0),
      s_axi_rdata(31 downto 0) => i02_couplers_to_tier2_xbar_2_RDATA(31 downto 0),
      s_axi_rready(0) => i02_couplers_to_tier2_xbar_2_RREADY(0),
      s_axi_rresp(1 downto 0) => i02_couplers_to_tier2_xbar_2_RRESP(1 downto 0),
      s_axi_rvalid(0) => i02_couplers_to_tier2_xbar_2_RVALID(0),
      s_axi_wdata(31 downto 0) => i02_couplers_to_tier2_xbar_2_WDATA(31 downto 0),
      s_axi_wready(0) => i02_couplers_to_tier2_xbar_2_WREADY(0),
      s_axi_wstrb(3 downto 0) => i02_couplers_to_tier2_xbar_2_WSTRB(3 downto 0),
      s_axi_wvalid(0) => i02_couplers_to_tier2_xbar_2_WVALID(0)
    );
xbar: component design_1_microblaze_0_axi_periph_imp_xbar_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(95 downto 64) => xbar_to_i02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_i01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_i00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(8 downto 6) => xbar_to_i02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_i01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_i00_couplers_ARPROT(2 downto 0),
      m_axi_arready(2) => xbar_to_i02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_i01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_i00_couplers_ARREADY(0),
      m_axi_arvalid(2) => xbar_to_i02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_i01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_i00_couplers_ARVALID(0),
      m_axi_awaddr(95 downto 64) => xbar_to_i02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_i01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_i00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(8 downto 6) => xbar_to_i02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_i01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_i00_couplers_AWPROT(2 downto 0),
      m_axi_awready(2) => xbar_to_i02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_i01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_i00_couplers_AWREADY(0),
      m_axi_awvalid(2) => xbar_to_i02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_i01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_i00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_i02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_i01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_i00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_i02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_i01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_i00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_i02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_i01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_i00_couplers_BVALID(0),
      m_axi_rdata(95 downto 64) => xbar_to_i02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_i01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_i00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_i02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_i01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_i00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_i02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_i01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_i00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_i02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_i01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_i00_couplers_RVALID(0),
      m_axi_wdata(95 downto 64) => xbar_to_i02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_i01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_i00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_i02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_i01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_i00_couplers_WREADY(0),
      m_axi_wstrb(11 downto 8) => xbar_to_i02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_i01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_i00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => xbar_to_i02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_i01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_i00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    Clk : in STD_LOGIC;
    Cswitch_Rx : out STD_LOGIC;
    DSA_P : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LNA : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Tx_Rx_switch : out STD_LOGIC;
    V1_V2_RX : out STD_LOGIC_VECTOR ( 1 downto 0 );
    V1_V2_TX : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Vcomp1 : in STD_LOGIC;
    Vcomp2 : in STD_LOGIC;
    Vcomp3 : in STD_LOGIC;
    Vcomp4 : in STD_LOGIC;
    Vcomp5 : in STD_LOGIC;
    Vcomp6 : in STD_LOGIC;
    btn : in STD_LOGIC;
    em_rec_real_in : in STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    rst : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_sclk : in STD_LOGIC;
    spi_ss_n : in STD_LOGIC;
    sw : out STD_LOGIC_VECTOR ( 2 downto 0 );
    uart_rxd_out : out STD_LOGIC;
    uart_txd_in : in STD_LOGIC;
    vauxn4 : in STD_LOGIC;
    vauxp4 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=66,numReposBlks=43,numNonXlnxBlks=0,numHierBlks=23,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=6,da_clkrst_cnt=4,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_microblaze_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );
  end component design_1_microblaze_0_0;
  component design_1_microblaze_0_axi_intc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_microblaze_0_axi_intc_0;
  component design_1_mdm_1_0 is
  port (
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );
  end component design_1_mdm_1_0;
  component design_1_rst_Clk_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_Clk_100M_0;
  component design_1_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component design_1_axi_uartlite_0_0;
  component design_1_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_axi_gpio_0_0;
  component design_1_axi_gpio_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_axi_gpio_1_0;
  component design_1_SPI_slave_0_0 is
  port (
    Clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    cpol : in STD_LOGIC;
    cpha : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss_n : in STD_LOGIC;
    mosi : in STD_LOGIC;
    miso : out STD_LOGIC;
    rx_enable : in STD_LOGIC;
    tx : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx : out STD_LOGIC_VECTOR ( 15 downto 0 );
    busy : out STD_LOGIC;
    rx_done : out STD_LOGIC
  );
  end component design_1_SPI_slave_0_0;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_1_0;
  component design_1_axi_gpio_2_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_axi_gpio_2_0;
  component design_1_axi_gpio_irq_spi_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_axi_gpio_irq_spi_0;
  component design_1_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_ClkTest_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  end component design_1_ClkTest_0_0;
  component design_1_receive_signal_0_0 is
  port (
    Clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Signal_in : in STD_LOGIC;
    Signal_sync : out STD_LOGIC;
    Signal_present : out STD_LOGIC
  );
  end component design_1_receive_signal_0_0;
  component design_1_axi_gpio_3_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_axi_gpio_3_0;
  component design_1_axi_gpio_4_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_axi_gpio_4_0;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  component design_1_xadc_wiz_0_0 is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    vauxp4 : in STD_LOGIC;
    vauxn4 : in STD_LOGIC;
    user_temp_alarm_out : out STD_LOGIC;
    vccint_alarm_out : out STD_LOGIC;
    vccaux_alarm_out : out STD_LOGIC;
    ot_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component design_1_xadc_wiz_0_0;
  component design_1_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component design_1_axi_dma_0_0;
  component design_1_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component design_1_blk_mem_gen_0_0;
  component design_1_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_axi_bram_ctrl_0_0;
  component design_1_axis_subset_converter_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component design_1_axis_subset_converter_0_0;
  component design_1_axi_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component design_1_axi_smc_0;
  component design_1_axi_gpio_5_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_axi_gpio_5_0;
  component design_1_axi_gpio_6_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_axi_gpio_6_0;
  component design_1_Btn_led_0_0 is
  port (
    Clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    btn : in STD_LOGIC;
    sig : out STD_LOGIC
  );
  end component design_1_Btn_led_0_0;
  component design_1_axi_gpio_7_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1_axi_gpio_7_0;
  component design_1_EM_REC_Delay_Duty_Mo_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    EM_REC : in STD_LOGIC;
    delay_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pulse_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mode_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    EM_REC_sync : out STD_LOGIC;
    out_sig : out STD_LOGIC
  );
  end component design_1_EM_REC_Delay_Duty_Mo_0_0;
  component design_1_EM_REC_Delay_Duty_Mo_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    EM_REC : in STD_LOGIC;
    delay_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pulse_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mode_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    EM_REC_sync : out STD_LOGIC;
    out_sig : out STD_LOGIC
  );
  end component design_1_EM_REC_Delay_Duty_Mo_1_0;
  component design_1_axi_gpio_8_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_axi_gpio_8_0;
  component design_1_axi_gpio_9_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_axi_gpio_9_0;
  component design_1_axi_gpio_10_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_axi_gpio_10_0;
  component design_1_EM_REC_Delay_Duty_Mo_2_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    EM_REC : in STD_LOGIC;
    delay_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pulse_cycles : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mode_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    EM_REC_sync : out STD_LOGIC;
    out_sig : out STD_LOGIC
  );
  end component design_1_EM_REC_Delay_Duty_Mo_2_0;
  signal SPI_slave_0_rx : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SPI_slave_0_rx_done : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_dma_0_s_axis_s2mm_tready : STD_LOGIC;
  signal axi_gpio_0_gpio2_io_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_gpio_10_ip2intc_irpt : STD_LOGIC;
  signal axi_gpio_2_gpio2_io_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_gpio_3_gpio2_io_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_gpio_3_gpio_io_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_gpio_4_ip2intc_irpt : STD_LOGIC;
  signal axi_gpio_5_ip2intc_irpt : STD_LOGIC;
  signal axi_gpio_6_ip2intc_irpt : STD_LOGIC;
  signal axi_gpio_8_gpio2_io_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_gpio_8_gpio_io_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_gpio_irq_spi_ip2intc_irpt : STD_LOGIC;
  signal axi_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_smc_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_RLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  signal axi_uartlite_0_interrupt : STD_LOGIC;
  signal axis_subset_converter_0_m_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_subset_converter_0_m_axis_tkeep : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_subset_converter_0_m_axis_tlast : STD_LOGIC;
  signal axis_subset_converter_0_m_axis_tvalid : STD_LOGIC;
  signal axis_subset_converter_0_s_axis_tready : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal \^led2\ : STD_LOGIC;
  signal mdm_1_debug_sys_rst : STD_LOGIC;
  signal microblaze_0_axi_dp_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_BREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_RREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_dp_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M12_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M12_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M12_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M12_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M12_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M12_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M12_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M12_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M12_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M12_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_debug_CAPTURE : STD_LOGIC;
  signal microblaze_0_debug_CLK : STD_LOGIC;
  signal microblaze_0_debug_DISABLE : STD_LOGIC;
  signal microblaze_0_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_debug_RST : STD_LOGIC;
  signal microblaze_0_debug_SHIFT : STD_LOGIC;
  signal microblaze_0_debug_TDI : STD_LOGIC;
  signal microblaze_0_debug_TDO : STD_LOGIC;
  signal microblaze_0_debug_UPDATE : STD_LOGIC;
  signal microblaze_0_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_1_CE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READY : STD_LOGIC;
  signal microblaze_0_dlmb_1_UE : STD_LOGIC;
  signal microblaze_0_dlmb_1_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_CE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READY : STD_LOGIC;
  signal microblaze_0_ilmb_1_UE : STD_LOGIC;
  signal microblaze_0_ilmb_1_WAIT : STD_LOGIC;
  signal microblaze_0_intc_axi_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_ARREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_ARVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_AWREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_AWVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_BREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_BVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_RREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_RVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_WREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_intc_axi_WVALID : STD_LOGIC;
  signal microblaze_0_interrupt_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal microblaze_0_interrupt_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_interrupt_INTERRUPT : STD_LOGIC;
  signal receive_signal_0_Signal_out : STD_LOGIC;
  signal rst_Clk_100M_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_Clk_100M_mb_reset : STD_LOGIC;
  signal rst_Clk_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_Clk_100M_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xadc_wiz_0_m_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xadc_wiz_0_m_axis_tvalid : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ClkTest_0_clk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_EM_REC_Delay_Duty_Mo_0_EM_REC_sync_UNCONNECTED : STD_LOGIC;
  signal NLW_EM_REC_Delay_Duty_Mo_1_EM_REC_sync_UNCONNECTED : STD_LOGIC;
  signal NLW_EM_REC_Delay_Duty_Mo_2_EM_REC_sync_UNCONNECTED : STD_LOGIC;
  signal NLW_EM_REC_Delay_Duty_Mo_2_out_sig_UNCONNECTED : STD_LOGIC;
  signal NLW_SPI_slave_0_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_smc_M00_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_smc_M00_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_blk_mem_gen_0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_Clk_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_ot_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_user_temp_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccaux_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccint_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_xadc_wiz_0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of axi_bram_ctrl_0 : label is "byte  0xC0000000 32 > design_1 blk_mem_gen_0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of axi_bram_ctrl_0 : label is "yes";
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of microblaze_0 : label is "microblaze-le > design_1 microblaze_0_local_memory/dlmb_bram_if_cntlr design_1 axi_bram_ctrl_0";
  attribute KEEP_HIERARCHY of microblaze_0 : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_Clk, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  led2 <= \^led2\;
Btn_led_0: component design_1_Btn_led_0_0
     port map (
      Clk => clk_wiz_0_clk_out1,
      btn => btn,
      rst => rst_Clk_100M_peripheral_reset(0),
      sig => led1
    );
ClkTest_0: component design_1_ClkTest_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      clk_out => NLW_ClkTest_0_clk_out_UNCONNECTED,
      rst => rst_Clk_100M_peripheral_reset(0)
    );
EM_REC_Delay_Duty_Mo_0: component design_1_EM_REC_Delay_Duty_Mo_0_0
     port map (
      EM_REC => receive_signal_0_Signal_out,
      EM_REC_sync => NLW_EM_REC_Delay_Duty_Mo_0_EM_REC_sync_UNCONNECTED,
      clk => clk_wiz_0_clk_out1,
      delay_cycles(15 downto 0) => axi_gpio_0_gpio2_io_o(15 downto 0),
      mode_sel(1 downto 0) => axi_gpio_8_gpio_io_o(1 downto 0),
      out_sig => Tx_Rx_switch,
      pulse_cycles(15 downto 0) => axi_gpio_0_gpio_io_o(15 downto 0),
      rst => rst_Clk_100M_peripheral_reset(0)
    );
EM_REC_Delay_Duty_Mo_1: component design_1_EM_REC_Delay_Duty_Mo_1_0
     port map (
      EM_REC => receive_signal_0_Signal_out,
      EM_REC_sync => NLW_EM_REC_Delay_Duty_Mo_1_EM_REC_sync_UNCONNECTED,
      clk => clk_wiz_0_clk_out1,
      delay_cycles(15 downto 0) => axi_gpio_3_gpio2_io_o(15 downto 0),
      mode_sel(1 downto 0) => axi_gpio_8_gpio2_io_o(1 downto 0),
      out_sig => Cswitch_Rx,
      pulse_cycles(15 downto 0) => axi_gpio_3_gpio_io_o(15 downto 0),
      rst => rst_Clk_100M_peripheral_reset(0)
    );
EM_REC_Delay_Duty_Mo_2: component design_1_EM_REC_Delay_Duty_Mo_2_0
     port map (
      EM_REC => receive_signal_0_Signal_out,
      EM_REC_sync => NLW_EM_REC_Delay_Duty_Mo_2_EM_REC_sync_UNCONNECTED,
      clk => clk_wiz_0_clk_out1,
      delay_cycles(15 downto 0) => axi_gpio_0_gpio2_io_o(15 downto 0),
      mode_sel(1 downto 0) => axi_gpio_8_gpio_io_o(1 downto 0),
      out_sig => NLW_EM_REC_Delay_Duty_Mo_2_out_sig_UNCONNECTED,
      pulse_cycles(15 downto 0) => axi_gpio_0_gpio_io_o(15 downto 0),
      rst => rst_Clk_100M_peripheral_reset(0)
    );
SPI_slave_0: component design_1_SPI_slave_0_0
     port map (
      Clk => clk_wiz_0_clk_out1,
      busy => NLW_SPI_slave_0_busy_UNCONNECTED,
      cpha => xlconstant_0_dout(0),
      cpol => xlconstant_0_dout(0),
      miso => spi_miso,
      mosi => spi_mosi,
      rst => rst_Clk_100M_peripheral_reset(0),
      rx(15 downto 0) => SPI_slave_0_rx(15 downto 0),
      rx_done => SPI_slave_0_rx_done,
      rx_enable => xlconstant_1_dout(0),
      sclk => spi_sclk,
      ss_n => spi_ss_n,
      tx(15 downto 0) => axi_gpio_2_gpio2_io_o(15 downto 0)
    );
axi_bram_ctrl_0: component design_1_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      bram_addr_b(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_clk_b => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_en_b => axi_bram_ctrl_0_BRAM_PORTB_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rddata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_rst_b => axi_bram_ctrl_0_BRAM_PORTB_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_we_b(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      bram_wrdata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(12 downto 0) => axi_smc_M00_AXI_ARADDR(12 downto 0),
      s_axi_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_smc_M00_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_smc_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_smc_M00_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => axi_smc_M00_AXI_AWADDR(12 downto 0),
      s_axi_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_smc_M00_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_smc_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_smc_M00_AXI_AWVALID,
      s_axi_bready => axi_smc_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smc_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      s_axi_rlast => axi_smc_M00_AXI_RLAST,
      s_axi_rready => axi_smc_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smc_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_smc_M00_AXI_WLAST,
      s_axi_wready => axi_smc_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smc_M00_AXI_WVALID
    );
axi_dma_0: component design_1_axi_dma_0_0
     port map (
      axi_resetn => rst_Clk_100M_peripheral_aresetn(0),
      m_axi_s2mm_aclk => clk_wiz_0_clk_out1,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      s2mm_introut => NLW_axi_dma_0_s2mm_introut_UNCONNECTED,
      s2mm_prmry_reset_out_n => NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => clk_wiz_0_clk_out1,
      s_axi_lite_araddr(9 downto 0) => microblaze_0_axi_periph_M09_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => microblaze_0_axi_periph_M09_AXI_ARREADY,
      s_axi_lite_arvalid => microblaze_0_axi_periph_M09_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => microblaze_0_axi_periph_M09_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => microblaze_0_axi_periph_M09_AXI_AWREADY,
      s_axi_lite_awvalid => microblaze_0_axi_periph_M09_AXI_AWVALID,
      s_axi_lite_bready => microblaze_0_axi_periph_M09_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => microblaze_0_axi_periph_M09_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => microblaze_0_axi_periph_M09_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => microblaze_0_axi_periph_M09_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => microblaze_0_axi_periph_M09_AXI_WREADY,
      s_axi_lite_wvalid => microblaze_0_axi_periph_M09_AXI_WVALID,
      s_axis_s2mm_tdata(31 downto 0) => axis_subset_converter_0_m_axis_tdata(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => axis_subset_converter_0_m_axis_tkeep(3 downto 0),
      s_axis_s2mm_tlast => axis_subset_converter_0_m_axis_tlast,
      s_axis_s2mm_tready => axi_dma_0_s_axis_s2mm_tready,
      s_axis_s2mm_tvalid => axis_subset_converter_0_m_axis_tvalid
    );
axi_gpio_0: component design_1_axi_gpio_0_0
     port map (
      gpio2_io_o(15 downto 0) => axi_gpio_0_gpio2_io_o(15 downto 0),
      gpio_io_o(15 downto 0) => axi_gpio_0_gpio_io_o(15 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M02_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M02_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M02_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M02_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M02_AXI_WVALID
    );
axi_gpio_1: component design_1_axi_gpio_1_0
     port map (
      gpio2_io_o(1 downto 0) => V1_V2_RX(1 downto 0),
      gpio_io_o(1 downto 0) => V1_V2_TX(1 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M03_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M03_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M03_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M03_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M03_AXI_WVALID
    );
axi_gpio_10: component design_1_axi_gpio_10_0
     port map (
      gpio_io_i(0) => \^led2\,
      ip2intc_irpt => axi_gpio_10_ip2intc_irpt,
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M16_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M16_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M16_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M16_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M16_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M16_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M16_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M16_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M16_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M16_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M16_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M16_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M16_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M16_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M16_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M16_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M16_AXI_WVALID
    );
axi_gpio_2: component design_1_axi_gpio_2_0
     port map (
      gpio2_io_o(15 downto 0) => axi_gpio_2_gpio2_io_o(15 downto 0),
      gpio_io_i(15 downto 0) => SPI_slave_0_rx(15 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M04_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M04_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M04_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M04_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M04_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M04_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M04_AXI_WVALID
    );
axi_gpio_3: component design_1_axi_gpio_3_0
     port map (
      gpio2_io_o(15 downto 0) => axi_gpio_3_gpio2_io_o(15 downto 0),
      gpio_io_o(15 downto 0) => axi_gpio_3_gpio_io_o(15 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M06_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M06_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M06_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M06_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M06_AXI_WVALID
    );
axi_gpio_4: component design_1_axi_gpio_4_0
     port map (
      gpio2_io_i(0) => Vcomp2,
      gpio_io_i(0) => Vcomp1,
      ip2intc_irpt => axi_gpio_4_ip2intc_irpt,
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M07_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M07_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M07_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M07_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M07_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M07_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M07_AXI_WVALID
    );
axi_gpio_5: component design_1_axi_gpio_5_0
     port map (
      gpio2_io_i(0) => Vcomp4,
      gpio_io_i(0) => Vcomp3,
      ip2intc_irpt => axi_gpio_5_ip2intc_irpt,
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M11_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M11_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M11_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M11_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M11_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M11_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M11_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M11_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M11_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M11_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M11_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M11_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M11_AXI_WVALID
    );
axi_gpio_6: component design_1_axi_gpio_6_0
     port map (
      gpio2_io_i(0) => Vcomp6,
      gpio_io_i(0) => Vcomp5,
      ip2intc_irpt => axi_gpio_6_ip2intc_irpt,
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M12_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M12_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M12_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M12_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M12_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M12_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M12_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M12_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M12_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M12_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M12_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M12_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M12_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M12_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M12_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M12_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M12_AXI_WVALID
    );
axi_gpio_7: component design_1_axi_gpio_7_0
     port map (
      gpio2_io_o(2 downto 0) => LNA(2 downto 0),
      gpio_io_o(2 downto 0) => sw(2 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M13_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M13_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M13_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M13_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M13_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M13_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M13_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M13_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M13_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M13_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M13_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M13_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M13_AXI_WVALID
    );
axi_gpio_8: component design_1_axi_gpio_8_0
     port map (
      gpio2_io_o(1 downto 0) => axi_gpio_8_gpio2_io_o(1 downto 0),
      gpio_io_o(1 downto 0) => axi_gpio_8_gpio_io_o(1 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M14_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M14_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M14_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M14_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M14_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M14_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M14_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M14_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M14_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M14_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M14_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M14_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M14_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M14_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M14_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M14_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M14_AXI_WVALID
    );
axi_gpio_9: component design_1_axi_gpio_9_0
     port map (
      gpio_io_o(3 downto 0) => DSA_P(3 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M15_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M15_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M15_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M15_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M15_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M15_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M15_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M15_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M15_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M15_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M15_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M15_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M15_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M15_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M15_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M15_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M15_AXI_WVALID
    );
axi_gpio_irq_spi: component design_1_axi_gpio_irq_spi_0
     port map (
      gpio_io_i(0) => SPI_slave_0_rx_done,
      ip2intc_irpt => axi_gpio_irq_spi_ip2intc_irpt,
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M05_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M05_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M05_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M05_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M05_AXI_WVALID
    );
axi_smc: component design_1_axi_smc_0
     port map (
      M00_AXI_araddr(12 downto 0) => axi_smc_M00_AXI_ARADDR(12 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_smc_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => NLW_axi_smc_M00_AXI_arqos_UNCONNECTED(3 downto 0),
      M00_AXI_arready => axi_smc_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(12 downto 0) => axi_smc_M00_AXI_AWADDR(12 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_smc_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => NLW_axi_smc_M00_AXI_awqos_UNCONNECTED(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rlast => axi_smc_M00_AXI_RLAST,
      M00_AXI_rready => axi_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      S00_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => '0',
      S00_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => B"0000",
      S00_AXI_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      S00_AXI_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      S00_AXI_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      S00_AXI_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      S00_AXI_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      S01_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M10_AXI_ARADDR(31 downto 0),
      S01_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M10_AXI_ARPROT(2 downto 0),
      S01_AXI_arready => microblaze_0_axi_periph_M10_AXI_ARREADY,
      S01_AXI_arvalid => microblaze_0_axi_periph_M10_AXI_ARVALID,
      S01_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M10_AXI_AWADDR(31 downto 0),
      S01_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M10_AXI_AWPROT(2 downto 0),
      S01_AXI_awready => microblaze_0_axi_periph_M10_AXI_AWREADY,
      S01_AXI_awvalid => microblaze_0_axi_periph_M10_AXI_AWVALID,
      S01_AXI_bready => microblaze_0_axi_periph_M10_AXI_BREADY,
      S01_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_BRESP(1 downto 0),
      S01_AXI_bvalid => microblaze_0_axi_periph_M10_AXI_BVALID,
      S01_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_RDATA(31 downto 0),
      S01_AXI_rready => microblaze_0_axi_periph_M10_AXI_RREADY,
      S01_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_RRESP(1 downto 0),
      S01_AXI_rvalid => microblaze_0_axi_periph_M10_AXI_RVALID,
      S01_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_WDATA(31 downto 0),
      S01_AXI_wready => microblaze_0_axi_periph_M10_AXI_WREADY,
      S01_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M10_AXI_WSTRB(3 downto 0),
      S01_AXI_wvalid => microblaze_0_axi_periph_M10_AXI_WVALID,
      aclk => clk_wiz_0_clk_out1,
      aresetn => rst_Clk_100M_peripheral_aresetn(0)
    );
axi_uartlite_0: component design_1_axi_uartlite_0_0
     port map (
      interrupt => axi_uartlite_0_interrupt,
      rx => uart_txd_in,
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(3 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M01_AXI_ARVALID,
      s_axi_awaddr(3 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(3 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M01_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M01_AXI_WVALID,
      tx => uart_rxd_out
    );
axis_subset_converter_0: component design_1_axis_subset_converter_0_0
     port map (
      aclk => clk_wiz_0_clk_out1,
      aresetn => rst_Clk_100M_peripheral_aresetn(0),
      m_axis_tdata(31 downto 0) => axis_subset_converter_0_m_axis_tdata(31 downto 0),
      m_axis_tkeep(3 downto 0) => axis_subset_converter_0_m_axis_tkeep(3 downto 0),
      m_axis_tlast => axis_subset_converter_0_m_axis_tlast,
      m_axis_tready => axi_dma_0_s_axis_s2mm_tready,
      m_axis_tvalid => axis_subset_converter_0_m_axis_tvalid,
      s_axis_tdata(15 downto 0) => xadc_wiz_0_m_axis_tdata(15 downto 0),
      s_axis_tready => axis_subset_converter_0_s_axis_tready,
      s_axis_tvalid => xadc_wiz_0_m_axis_tvalid
    );
blk_mem_gen_0: component design_1_blk_mem_gen_0_0
     port map (
      addra(31 downto 13) => B"0000000000000000000",
      addra(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      addrb(31 downto 13) => B"0000000000000000000",
      addrb(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(12 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => axi_bram_ctrl_0_BRAM_PORTB_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rsta_busy => NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED,
      rstb => axi_bram_ctrl_0_BRAM_PORTB_RST,
      rstb_busy => NLW_blk_mem_gen_0_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0)
    );
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1 => Clk,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => clk_wiz_0_locked,
      reset => rst
    );
mdm_1: component design_1_mdm_1_0
     port map (
      Dbg_Capture_0 => microblaze_0_debug_CAPTURE,
      Dbg_Clk_0 => microblaze_0_debug_CLK,
      Dbg_Disable_0 => microblaze_0_debug_DISABLE,
      Dbg_Reg_En_0(0 to 7) => microblaze_0_debug_REG_EN(0 to 7),
      Dbg_Rst_0 => microblaze_0_debug_RST,
      Dbg_Shift_0 => microblaze_0_debug_SHIFT,
      Dbg_TDI_0 => microblaze_0_debug_TDI,
      Dbg_TDO_0 => microblaze_0_debug_TDO,
      Dbg_Update_0 => microblaze_0_debug_UPDATE,
      Debug_SYS_Rst => mdm_1_debug_sys_rst
    );
microblaze_0: component design_1_microblaze_0_0
     port map (
      Byte_Enable(0 to 3) => microblaze_0_dlmb_1_BE(0 to 3),
      Clk => clk_wiz_0_clk_out1,
      DCE => microblaze_0_dlmb_1_CE,
      DReady => microblaze_0_dlmb_1_READY,
      DUE => microblaze_0_dlmb_1_UE,
      DWait => microblaze_0_dlmb_1_WAIT,
      D_AS => microblaze_0_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_0_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_0_dlmb_1_WRITEDBUS(0 to 31),
      Dbg_Capture => microblaze_0_debug_CAPTURE,
      Dbg_Clk => microblaze_0_debug_CLK,
      Dbg_Disable => microblaze_0_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => microblaze_0_debug_REG_EN(0 to 7),
      Dbg_Shift => microblaze_0_debug_SHIFT,
      Dbg_TDI => microblaze_0_debug_TDI,
      Dbg_TDO => microblaze_0_debug_TDO,
      Dbg_Update => microblaze_0_debug_UPDATE,
      Debug_Rst => microblaze_0_debug_RST,
      ICE => microblaze_0_ilmb_1_CE,
      IFetch => microblaze_0_ilmb_1_READSTROBE,
      IReady => microblaze_0_ilmb_1_READY,
      IUE => microblaze_0_ilmb_1_UE,
      IWAIT => microblaze_0_ilmb_1_WAIT,
      I_AS => microblaze_0_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => microblaze_0_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      Interrupt => microblaze_0_interrupt_INTERRUPT,
      Interrupt_Ack(0 to 1) => microblaze_0_interrupt_ACK(0 to 1),
      Interrupt_Address(0) => microblaze_0_interrupt_ADDRESS(31),
      Interrupt_Address(1) => microblaze_0_interrupt_ADDRESS(30),
      Interrupt_Address(2) => microblaze_0_interrupt_ADDRESS(29),
      Interrupt_Address(3) => microblaze_0_interrupt_ADDRESS(28),
      Interrupt_Address(4) => microblaze_0_interrupt_ADDRESS(27),
      Interrupt_Address(5) => microblaze_0_interrupt_ADDRESS(26),
      Interrupt_Address(6) => microblaze_0_interrupt_ADDRESS(25),
      Interrupt_Address(7) => microblaze_0_interrupt_ADDRESS(24),
      Interrupt_Address(8) => microblaze_0_interrupt_ADDRESS(23),
      Interrupt_Address(9) => microblaze_0_interrupt_ADDRESS(22),
      Interrupt_Address(10) => microblaze_0_interrupt_ADDRESS(21),
      Interrupt_Address(11) => microblaze_0_interrupt_ADDRESS(20),
      Interrupt_Address(12) => microblaze_0_interrupt_ADDRESS(19),
      Interrupt_Address(13) => microblaze_0_interrupt_ADDRESS(18),
      Interrupt_Address(14) => microblaze_0_interrupt_ADDRESS(17),
      Interrupt_Address(15) => microblaze_0_interrupt_ADDRESS(16),
      Interrupt_Address(16) => microblaze_0_interrupt_ADDRESS(15),
      Interrupt_Address(17) => microblaze_0_interrupt_ADDRESS(14),
      Interrupt_Address(18) => microblaze_0_interrupt_ADDRESS(13),
      Interrupt_Address(19) => microblaze_0_interrupt_ADDRESS(12),
      Interrupt_Address(20) => microblaze_0_interrupt_ADDRESS(11),
      Interrupt_Address(21) => microblaze_0_interrupt_ADDRESS(10),
      Interrupt_Address(22) => microblaze_0_interrupt_ADDRESS(9),
      Interrupt_Address(23) => microblaze_0_interrupt_ADDRESS(8),
      Interrupt_Address(24) => microblaze_0_interrupt_ADDRESS(7),
      Interrupt_Address(25) => microblaze_0_interrupt_ADDRESS(6),
      Interrupt_Address(26) => microblaze_0_interrupt_ADDRESS(5),
      Interrupt_Address(27) => microblaze_0_interrupt_ADDRESS(4),
      Interrupt_Address(28) => microblaze_0_interrupt_ADDRESS(3),
      Interrupt_Address(29) => microblaze_0_interrupt_ADDRESS(2),
      Interrupt_Address(30) => microblaze_0_interrupt_ADDRESS(1),
      Interrupt_Address(31) => microblaze_0_interrupt_ADDRESS(0),
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_0_axi_dp_ARREADY(0),
      M_AXI_DP_ARVALID => microblaze_0_axi_dp_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_0_axi_dp_AWREADY(0),
      M_AXI_DP_AWVALID => microblaze_0_axi_dp_AWVALID,
      M_AXI_DP_BREADY => microblaze_0_axi_dp_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_0_axi_dp_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_0_axi_dp_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_0_axi_dp_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_0_axi_dp_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_0_axi_dp_WVALID,
      Read_Strobe => microblaze_0_dlmb_1_READSTROBE,
      Reset => rst_Clk_100M_mb_reset,
      Write_Strobe => microblaze_0_dlmb_1_WRITESTROBE
    );
microblaze_0_axi_intc: component design_1_microblaze_0_axi_intc_0
     port map (
      interrupt_address(31 downto 0) => microblaze_0_interrupt_ADDRESS(31 downto 0),
      intr(5 downto 0) => xlconcat_0_dout(5 downto 0),
      irq => microblaze_0_interrupt_INTERRUPT,
      processor_ack(1) => microblaze_0_interrupt_ACK(0),
      processor_ack(0) => microblaze_0_interrupt_ACK(1),
      processor_clk => clk_wiz_0_clk_out1,
      processor_rst => rst_Clk_100M_mb_reset,
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(8 downto 0) => microblaze_0_intc_axi_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_intc_axi_ARREADY,
      s_axi_arvalid => microblaze_0_intc_axi_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_intc_axi_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_intc_axi_AWREADY,
      s_axi_awvalid => microblaze_0_intc_axi_AWVALID,
      s_axi_bready => microblaze_0_intc_axi_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_intc_axi_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_intc_axi_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_intc_axi_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_intc_axi_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_intc_axi_WVALID
    );
microblaze_0_axi_periph: entity work.design_1_microblaze_0_axi_periph_0
     port map (
      ACLK => clk_wiz_0_clk_out1,
      ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_out1,
      M00_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => microblaze_0_intc_axi_ARADDR(31 downto 0),
      M00_AXI_arready => microblaze_0_intc_axi_ARREADY,
      M00_AXI_arvalid => microblaze_0_intc_axi_ARVALID,
      M00_AXI_awaddr(31 downto 0) => microblaze_0_intc_axi_AWADDR(31 downto 0),
      M00_AXI_awready => microblaze_0_intc_axi_AWREADY,
      M00_AXI_awvalid => microblaze_0_intc_axi_AWVALID,
      M00_AXI_bready => microblaze_0_intc_axi_BREADY,
      M00_AXI_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      M00_AXI_bvalid => microblaze_0_intc_axi_BVALID,
      M00_AXI_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      M00_AXI_rready => microblaze_0_intc_axi_RREADY,
      M00_AXI_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      M00_AXI_rvalid => microblaze_0_intc_axi_RVALID,
      M00_AXI_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      M00_AXI_wready => microblaze_0_intc_axi_WREADY,
      M00_AXI_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      M00_AXI_wvalid => microblaze_0_intc_axi_WVALID,
      M01_ACLK => clk_wiz_0_clk_out1,
      M01_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => microblaze_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => microblaze_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => microblaze_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => microblaze_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => microblaze_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => microblaze_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => microblaze_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => microblaze_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => microblaze_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => microblaze_0_axi_periph_M01_AXI_WVALID,
      M02_ACLK => clk_wiz_0_clk_out1,
      M02_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready => microblaze_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => microblaze_0_axi_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready => microblaze_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => microblaze_0_axi_periph_M02_AXI_AWVALID,
      M02_AXI_bready => microblaze_0_axi_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => microblaze_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => microblaze_0_axi_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => microblaze_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => microblaze_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => microblaze_0_axi_periph_M02_AXI_WVALID,
      M03_ACLK => clk_wiz_0_clk_out1,
      M03_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready => microblaze_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => microblaze_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready => microblaze_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => microblaze_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => microblaze_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => microblaze_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => microblaze_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => microblaze_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => microblaze_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => microblaze_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => clk_wiz_0_clk_out1,
      M04_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready => microblaze_0_axi_periph_M04_AXI_ARREADY,
      M04_AXI_arvalid => microblaze_0_axi_periph_M04_AXI_ARVALID,
      M04_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready => microblaze_0_axi_periph_M04_AXI_AWREADY,
      M04_AXI_awvalid => microblaze_0_axi_periph_M04_AXI_AWVALID,
      M04_AXI_bready => microblaze_0_axi_periph_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => microblaze_0_axi_periph_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => microblaze_0_axi_periph_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => microblaze_0_axi_periph_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => microblaze_0_axi_periph_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => microblaze_0_axi_periph_M04_AXI_WVALID,
      M05_ACLK => clk_wiz_0_clk_out1,
      M05_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready => microblaze_0_axi_periph_M05_AXI_ARREADY,
      M05_AXI_arvalid => microblaze_0_axi_periph_M05_AXI_ARVALID,
      M05_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready => microblaze_0_axi_periph_M05_AXI_AWREADY,
      M05_AXI_awvalid => microblaze_0_axi_periph_M05_AXI_AWVALID,
      M05_AXI_bready => microblaze_0_axi_periph_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => microblaze_0_axi_periph_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => microblaze_0_axi_periph_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => microblaze_0_axi_periph_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => microblaze_0_axi_periph_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => microblaze_0_axi_periph_M05_AXI_WVALID,
      M06_ACLK => clk_wiz_0_clk_out1,
      M06_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M06_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arready => microblaze_0_axi_periph_M06_AXI_ARREADY,
      M06_AXI_arvalid => microblaze_0_axi_periph_M06_AXI_ARVALID,
      M06_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awready => microblaze_0_axi_periph_M06_AXI_AWREADY,
      M06_AXI_awvalid => microblaze_0_axi_periph_M06_AXI_AWVALID,
      M06_AXI_bready => microblaze_0_axi_periph_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => microblaze_0_axi_periph_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => microblaze_0_axi_periph_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => microblaze_0_axi_periph_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => microblaze_0_axi_periph_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => microblaze_0_axi_periph_M06_AXI_WVALID,
      M07_ACLK => clk_wiz_0_clk_out1,
      M07_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M07_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(31 downto 0),
      M07_AXI_arready => microblaze_0_axi_periph_M07_AXI_ARREADY,
      M07_AXI_arvalid => microblaze_0_axi_periph_M07_AXI_ARVALID,
      M07_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(31 downto 0),
      M07_AXI_awready => microblaze_0_axi_periph_M07_AXI_AWREADY,
      M07_AXI_awvalid => microblaze_0_axi_periph_M07_AXI_AWVALID,
      M07_AXI_bready => microblaze_0_axi_periph_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid => microblaze_0_axi_periph_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready => microblaze_0_axi_periph_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid => microblaze_0_axi_periph_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready => microblaze_0_axi_periph_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid => microblaze_0_axi_periph_M07_AXI_WVALID,
      M08_ACLK => clk_wiz_0_clk_out1,
      M08_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M08_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M08_AXI_ARADDR(31 downto 0),
      M08_AXI_arready => microblaze_0_axi_periph_M08_AXI_ARREADY,
      M08_AXI_arvalid => microblaze_0_axi_periph_M08_AXI_ARVALID,
      M08_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M08_AXI_AWADDR(31 downto 0),
      M08_AXI_awready => microblaze_0_axi_periph_M08_AXI_AWREADY,
      M08_AXI_awvalid => microblaze_0_axi_periph_M08_AXI_AWVALID,
      M08_AXI_bready => microblaze_0_axi_periph_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => microblaze_0_axi_periph_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready => microblaze_0_axi_periph_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => microblaze_0_axi_periph_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready => microblaze_0_axi_periph_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => microblaze_0_axi_periph_M08_AXI_WVALID,
      M09_ACLK => clk_wiz_0_clk_out1,
      M09_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M09_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M09_AXI_ARADDR(31 downto 0),
      M09_AXI_arready => microblaze_0_axi_periph_M09_AXI_ARREADY,
      M09_AXI_arvalid => microblaze_0_axi_periph_M09_AXI_ARVALID,
      M09_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M09_AXI_AWADDR(31 downto 0),
      M09_AXI_awready => microblaze_0_axi_periph_M09_AXI_AWREADY,
      M09_AXI_awvalid => microblaze_0_axi_periph_M09_AXI_AWVALID,
      M09_AXI_bready => microblaze_0_axi_periph_M09_AXI_BREADY,
      M09_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid => microblaze_0_axi_periph_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rready => microblaze_0_axi_periph_M09_AXI_RREADY,
      M09_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid => microblaze_0_axi_periph_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wready => microblaze_0_axi_periph_M09_AXI_WREADY,
      M09_AXI_wvalid => microblaze_0_axi_periph_M09_AXI_WVALID,
      M10_ACLK => clk_wiz_0_clk_out1,
      M10_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M10_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M10_AXI_ARADDR(31 downto 0),
      M10_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M10_AXI_ARPROT(2 downto 0),
      M10_AXI_arready => microblaze_0_axi_periph_M10_AXI_ARREADY,
      M10_AXI_arvalid => microblaze_0_axi_periph_M10_AXI_ARVALID,
      M10_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M10_AXI_AWADDR(31 downto 0),
      M10_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M10_AXI_AWPROT(2 downto 0),
      M10_AXI_awready => microblaze_0_axi_periph_M10_AXI_AWREADY,
      M10_AXI_awvalid => microblaze_0_axi_periph_M10_AXI_AWVALID,
      M10_AXI_bready => microblaze_0_axi_periph_M10_AXI_BREADY,
      M10_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_BRESP(1 downto 0),
      M10_AXI_bvalid => microblaze_0_axi_periph_M10_AXI_BVALID,
      M10_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_RDATA(31 downto 0),
      M10_AXI_rready => microblaze_0_axi_periph_M10_AXI_RREADY,
      M10_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_RRESP(1 downto 0),
      M10_AXI_rvalid => microblaze_0_axi_periph_M10_AXI_RVALID,
      M10_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_WDATA(31 downto 0),
      M10_AXI_wready => microblaze_0_axi_periph_M10_AXI_WREADY,
      M10_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M10_AXI_WSTRB(3 downto 0),
      M10_AXI_wvalid => microblaze_0_axi_periph_M10_AXI_WVALID,
      M11_ACLK => clk_wiz_0_clk_out1,
      M11_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M11_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M11_AXI_ARADDR(31 downto 0),
      M11_AXI_arready => microblaze_0_axi_periph_M11_AXI_ARREADY,
      M11_AXI_arvalid => microblaze_0_axi_periph_M11_AXI_ARVALID,
      M11_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M11_AXI_AWADDR(31 downto 0),
      M11_AXI_awready => microblaze_0_axi_periph_M11_AXI_AWREADY,
      M11_AXI_awvalid => microblaze_0_axi_periph_M11_AXI_AWVALID,
      M11_AXI_bready => microblaze_0_axi_periph_M11_AXI_BREADY,
      M11_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_BRESP(1 downto 0),
      M11_AXI_bvalid => microblaze_0_axi_periph_M11_AXI_BVALID,
      M11_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_RDATA(31 downto 0),
      M11_AXI_rready => microblaze_0_axi_periph_M11_AXI_RREADY,
      M11_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_RRESP(1 downto 0),
      M11_AXI_rvalid => microblaze_0_axi_periph_M11_AXI_RVALID,
      M11_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_WDATA(31 downto 0),
      M11_AXI_wready => microblaze_0_axi_periph_M11_AXI_WREADY,
      M11_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M11_AXI_WSTRB(3 downto 0),
      M11_AXI_wvalid => microblaze_0_axi_periph_M11_AXI_WVALID,
      M12_ACLK => clk_wiz_0_clk_out1,
      M12_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M12_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M12_AXI_ARADDR(31 downto 0),
      M12_AXI_arready => microblaze_0_axi_periph_M12_AXI_ARREADY,
      M12_AXI_arvalid => microblaze_0_axi_periph_M12_AXI_ARVALID,
      M12_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M12_AXI_AWADDR(31 downto 0),
      M12_AXI_awready => microblaze_0_axi_periph_M12_AXI_AWREADY,
      M12_AXI_awvalid => microblaze_0_axi_periph_M12_AXI_AWVALID,
      M12_AXI_bready => microblaze_0_axi_periph_M12_AXI_BREADY,
      M12_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M12_AXI_BRESP(1 downto 0),
      M12_AXI_bvalid => microblaze_0_axi_periph_M12_AXI_BVALID,
      M12_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M12_AXI_RDATA(31 downto 0),
      M12_AXI_rready => microblaze_0_axi_periph_M12_AXI_RREADY,
      M12_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M12_AXI_RRESP(1 downto 0),
      M12_AXI_rvalid => microblaze_0_axi_periph_M12_AXI_RVALID,
      M12_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M12_AXI_WDATA(31 downto 0),
      M12_AXI_wready => microblaze_0_axi_periph_M12_AXI_WREADY,
      M12_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M12_AXI_WSTRB(3 downto 0),
      M12_AXI_wvalid => microblaze_0_axi_periph_M12_AXI_WVALID,
      M13_ACLK => clk_wiz_0_clk_out1,
      M13_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M13_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M13_AXI_ARADDR(31 downto 0),
      M13_AXI_arready => microblaze_0_axi_periph_M13_AXI_ARREADY,
      M13_AXI_arvalid => microblaze_0_axi_periph_M13_AXI_ARVALID,
      M13_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M13_AXI_AWADDR(31 downto 0),
      M13_AXI_awready => microblaze_0_axi_periph_M13_AXI_AWREADY,
      M13_AXI_awvalid => microblaze_0_axi_periph_M13_AXI_AWVALID,
      M13_AXI_bready => microblaze_0_axi_periph_M13_AXI_BREADY,
      M13_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_BRESP(1 downto 0),
      M13_AXI_bvalid => microblaze_0_axi_periph_M13_AXI_BVALID,
      M13_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_RDATA(31 downto 0),
      M13_AXI_rready => microblaze_0_axi_periph_M13_AXI_RREADY,
      M13_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_RRESP(1 downto 0),
      M13_AXI_rvalid => microblaze_0_axi_periph_M13_AXI_RVALID,
      M13_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_WDATA(31 downto 0),
      M13_AXI_wready => microblaze_0_axi_periph_M13_AXI_WREADY,
      M13_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M13_AXI_WSTRB(3 downto 0),
      M13_AXI_wvalid => microblaze_0_axi_periph_M13_AXI_WVALID,
      M14_ACLK => clk_wiz_0_clk_out1,
      M14_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M14_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M14_AXI_ARADDR(31 downto 0),
      M14_AXI_arready => microblaze_0_axi_periph_M14_AXI_ARREADY,
      M14_AXI_arvalid => microblaze_0_axi_periph_M14_AXI_ARVALID,
      M14_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M14_AXI_AWADDR(31 downto 0),
      M14_AXI_awready => microblaze_0_axi_periph_M14_AXI_AWREADY,
      M14_AXI_awvalid => microblaze_0_axi_periph_M14_AXI_AWVALID,
      M14_AXI_bready => microblaze_0_axi_periph_M14_AXI_BREADY,
      M14_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M14_AXI_BRESP(1 downto 0),
      M14_AXI_bvalid => microblaze_0_axi_periph_M14_AXI_BVALID,
      M14_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M14_AXI_RDATA(31 downto 0),
      M14_AXI_rready => microblaze_0_axi_periph_M14_AXI_RREADY,
      M14_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M14_AXI_RRESP(1 downto 0),
      M14_AXI_rvalid => microblaze_0_axi_periph_M14_AXI_RVALID,
      M14_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M14_AXI_WDATA(31 downto 0),
      M14_AXI_wready => microblaze_0_axi_periph_M14_AXI_WREADY,
      M14_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M14_AXI_WSTRB(3 downto 0),
      M14_AXI_wvalid => microblaze_0_axi_periph_M14_AXI_WVALID,
      M15_ACLK => clk_wiz_0_clk_out1,
      M15_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M15_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M15_AXI_ARADDR(31 downto 0),
      M15_AXI_arready => microblaze_0_axi_periph_M15_AXI_ARREADY,
      M15_AXI_arvalid => microblaze_0_axi_periph_M15_AXI_ARVALID,
      M15_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M15_AXI_AWADDR(31 downto 0),
      M15_AXI_awready => microblaze_0_axi_periph_M15_AXI_AWREADY,
      M15_AXI_awvalid => microblaze_0_axi_periph_M15_AXI_AWVALID,
      M15_AXI_bready => microblaze_0_axi_periph_M15_AXI_BREADY,
      M15_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M15_AXI_BRESP(1 downto 0),
      M15_AXI_bvalid => microblaze_0_axi_periph_M15_AXI_BVALID,
      M15_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M15_AXI_RDATA(31 downto 0),
      M15_AXI_rready => microblaze_0_axi_periph_M15_AXI_RREADY,
      M15_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M15_AXI_RRESP(1 downto 0),
      M15_AXI_rvalid => microblaze_0_axi_periph_M15_AXI_RVALID,
      M15_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M15_AXI_WDATA(31 downto 0),
      M15_AXI_wready => microblaze_0_axi_periph_M15_AXI_WREADY,
      M15_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M15_AXI_WSTRB(3 downto 0),
      M15_AXI_wvalid => microblaze_0_axi_periph_M15_AXI_WVALID,
      M16_ACLK => clk_wiz_0_clk_out1,
      M16_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M16_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M16_AXI_ARADDR(31 downto 0),
      M16_AXI_arready => microblaze_0_axi_periph_M16_AXI_ARREADY,
      M16_AXI_arvalid => microblaze_0_axi_periph_M16_AXI_ARVALID,
      M16_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M16_AXI_AWADDR(31 downto 0),
      M16_AXI_awready => microblaze_0_axi_periph_M16_AXI_AWREADY,
      M16_AXI_awvalid => microblaze_0_axi_periph_M16_AXI_AWVALID,
      M16_AXI_bready => microblaze_0_axi_periph_M16_AXI_BREADY,
      M16_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M16_AXI_BRESP(1 downto 0),
      M16_AXI_bvalid => microblaze_0_axi_periph_M16_AXI_BVALID,
      M16_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M16_AXI_RDATA(31 downto 0),
      M16_AXI_rready => microblaze_0_axi_periph_M16_AXI_RREADY,
      M16_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M16_AXI_RRESP(1 downto 0),
      M16_AXI_rvalid => microblaze_0_axi_periph_M16_AXI_RVALID,
      M16_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M16_AXI_WDATA(31 downto 0),
      M16_AXI_wready => microblaze_0_axi_periph_M16_AXI_WREADY,
      M16_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M16_AXI_WSTRB(3 downto 0),
      M16_AXI_wvalid => microblaze_0_axi_periph_M16_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_out1,
      S00_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      S00_AXI_arready(0) => microblaze_0_axi_dp_ARREADY(0),
      S00_AXI_arvalid(0) => microblaze_0_axi_dp_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      S00_AXI_awready(0) => microblaze_0_axi_dp_AWREADY(0),
      S00_AXI_awvalid(0) => microblaze_0_axi_dp_AWVALID,
      S00_AXI_bready(0) => microblaze_0_axi_dp_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => microblaze_0_axi_dp_BVALID(0),
      S00_AXI_rdata(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      S00_AXI_rready(0) => microblaze_0_axi_dp_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => microblaze_0_axi_dp_RVALID(0),
      S00_AXI_wdata(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      S00_AXI_wready(0) => microblaze_0_axi_dp_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => microblaze_0_axi_dp_WVALID
    );
microblaze_0_local_memory: entity work.microblaze_0_local_memory_imp_1K0VQXK
     port map (
      Clk => clk_wiz_0_clk_out1,
      DLMB_abus(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_0_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => microblaze_0_dlmb_1_BE(0 to 3),
      DLMB_ce => microblaze_0_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => microblaze_0_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => microblaze_0_dlmb_1_READSTROBE,
      DLMB_ready => microblaze_0_dlmb_1_READY,
      DLMB_ue => microblaze_0_dlmb_1_UE,
      DLMB_wait => microblaze_0_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => microblaze_0_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => microblaze_0_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_0_ilmb_1_ADDRSTROBE,
      ILMB_ce => microblaze_0_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => microblaze_0_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => microblaze_0_ilmb_1_READSTROBE,
      ILMB_ready => microblaze_0_ilmb_1_READY,
      ILMB_ue => microblaze_0_ilmb_1_UE,
      ILMB_wait => microblaze_0_ilmb_1_WAIT,
      SYS_Rst => rst_Clk_100M_bus_struct_reset(0)
    );
receive_signal_0: component design_1_receive_signal_0_0
     port map (
      Clk => clk_wiz_0_clk_out1,
      Signal_in => em_rec_real_in,
      Signal_present => \^led2\,
      Signal_sync => receive_signal_0_Signal_out,
      rst => rst_Clk_100M_peripheral_reset(0)
    );
rst_Clk_100M: component design_1_rst_Clk_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => rst_Clk_100M_bus_struct_reset(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => rst,
      interconnect_aresetn(0) => NLW_rst_Clk_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => mdm_1_debug_sys_rst,
      mb_reset => rst_Clk_100M_mb_reset,
      peripheral_aresetn(0) => rst_Clk_100M_peripheral_aresetn(0),
      peripheral_reset(0) => rst_Clk_100M_peripheral_reset(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
xadc_wiz_0: component design_1_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      eoc_out => NLW_xadc_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      ip2intc_irpt => NLW_xadc_wiz_0_ip2intc_irpt_UNCONNECTED,
      m_axis_tdata(15 downto 0) => xadc_wiz_0_m_axis_tdata(15 downto 0),
      m_axis_tid(4 downto 0) => NLW_xadc_wiz_0_m_axis_tid_UNCONNECTED(4 downto 0),
      m_axis_tready => axis_subset_converter_0_s_axis_tready,
      m_axis_tvalid => xadc_wiz_0_m_axis_tvalid,
      ot_out => NLW_xadc_wiz_0_ot_out_UNCONNECTED,
      s_axi_aclk => clk_wiz_0_clk_out1,
      s_axi_araddr(10 downto 0) => microblaze_0_axi_periph_M08_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M08_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M08_AXI_ARVALID,
      s_axi_awaddr(10 downto 0) => microblaze_0_axi_periph_M08_AXI_AWADDR(10 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M08_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M08_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M08_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M08_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M08_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M08_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M08_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M08_AXI_WVALID,
      s_axis_aclk => clk_wiz_0_clk_out1,
      user_temp_alarm_out => NLW_xadc_wiz_0_user_temp_alarm_out_UNCONNECTED,
      vauxn4 => vauxn4,
      vauxp4 => vauxp4,
      vccaux_alarm_out => NLW_xadc_wiz_0_vccaux_alarm_out_UNCONNECTED,
      vccint_alarm_out => NLW_xadc_wiz_0_vccint_alarm_out_UNCONNECTED,
      vn_in => '0',
      vp_in => '0'
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(0) => axi_uartlite_0_interrupt,
      In1(0) => axi_gpio_irq_spi_ip2intc_irpt,
      In2(0) => axi_gpio_4_ip2intc_irpt,
      In3(0) => axi_gpio_5_ip2intc_irpt,
      In4(0) => axi_gpio_6_ip2intc_irpt,
      In5(0) => axi_gpio_10_ip2intc_irpt,
      dout(5 downto 0) => xlconcat_0_dout(5 downto 0)
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component design_1_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
