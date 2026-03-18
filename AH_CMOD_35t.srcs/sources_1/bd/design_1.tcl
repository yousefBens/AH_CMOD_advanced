
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2025.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   if { [string compare $scripts_vivado_version $current_vivado_version] > 0 } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2042 -severity "ERROR" " This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Sourcing the script failed since it was created with a future version of Vivado."}

   } else {
     catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   }

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# debug_signal, SPI_slave, EM_REC_Delay_Duty, ClkTest, receive_signal, EM_REC_Delay_Duty

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a15tcpg236-1
   set_property BOARD_PART digilentinc.com:cmod_a7-15t:part0:1.2 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:microblaze:11.0\
xilinx.com:ip:axi_intc:4.1\
xilinx.com:ip:mdm:3.2\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:axi_uartlite:2.0\
xilinx.com:ip:axi_gpio:2.0\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:ip:xlconcat:2.1\
xilinx.com:ip:xadc_wiz:3.3\
xilinx.com:ip:axi_dma:7.1\
xilinx.com:ip:blk_mem_gen:8.4\
xilinx.com:ip:axi_bram_ctrl:4.1\
xilinx.com:ip:axis_subset_converter:1.1\
xilinx.com:ip:smartconnect:1.0\
xilinx.com:ip:lmb_v10:3.0\
xilinx.com:ip:lmb_bram_if_cntlr:4.0\
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
debug_signal\
SPI_slave\
EM_REC_Delay_Duty\
ClkTest\
receive_signal\
EM_REC_Delay_Duty\
"

   set list_mods_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2020 -severity "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2021 -severity "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_gid_msg -ssname BD::TCL -id 2022 -severity "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB


  # Create pins
  create_bd_pin -dir I -type clk Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property CONFIG.C_ECC {0} $dlmb_bram_if_cntlr


  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property CONFIG.C_ECC {0} $ilmb_bram_if_cntlr


  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [list \
    CONFIG.Memory_Type {True_Dual_Port_RAM} \
    CONFIG.use_bram_block {BRAM_Controller} \
  ] $lmb_bram


  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins dlmb_v10/LMB_M] [get_bd_intf_pins DLMB]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_v10/LMB_Sl_0] [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ilmb_v10/LMB_M] [get_bd_intf_pins ILMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_v10/LMB_Sl_0] [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1  [get_bd_pins SYS_Rst] \
  [get_bd_pins dlmb_v10/SYS_Rst] \
  [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] \
  [get_bd_pins ilmb_v10/SYS_Rst] \
  [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst]
  connect_bd_net -net microblaze_0_Clk  [get_bd_pins Clk] \
  [get_bd_pins dlmb_v10/LMB_Clk] \
  [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] \
  [get_bd_pins ilmb_v10/LMB_Clk] \
  [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]


  # Create ports
  set Clk [ create_bd_port -dir I -type clk -freq_hz 12000000 Clk ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rst
  set uart_txd_in [ create_bd_port -dir I uart_txd_in ]
  set uart_rxd_out [ create_bd_port -dir O uart_rxd_out ]
  set led1 [ create_bd_port -dir O led1 ]
  set led2 [ create_bd_port -dir O led2 ]
  set spi_sclk [ create_bd_port -dir I spi_sclk ]
  set spi_mosi [ create_bd_port -dir I spi_mosi ]
  set spi_miso [ create_bd_port -dir O spi_miso ]
  set spi_ss_n [ create_bd_port -dir I spi_ss_n ]
  set Tx_Rx_switch [ create_bd_port -dir O Tx_Rx_switch ]
  set Cswitch_Rx [ create_bd_port -dir O Cswitch_Rx ]
  set em_rec_real_in [ create_bd_port -dir I em_rec_real_in ]
  set V1_V2 [ create_bd_port -dir O -from 1 -to 0 V1_V2 ]
  set Vcomp1 [ create_bd_port -dir I Vcomp1 ]
  set Vcomp2 [ create_bd_port -dir I Vcomp2 ]
  set vauxn4 [ create_bd_port -dir I vauxn4 ]
  set vauxp4 [ create_bd_port -dir I vauxp4 ]
  set Vcomp3 [ create_bd_port -dir I Vcomp3 ]
  set Vcomp4 [ create_bd_port -dir I Vcomp4 ]
  set Vcomp5 [ create_bd_port -dir I Vcomp5 ]
  set Vcomp6 [ create_bd_port -dir I Vcomp6 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_0 ]
  set_property -dict [list \
    CONFIG.C_DEBUG_ENABLED {1} \
    CONFIG.C_D_AXI {1} \
    CONFIG.C_D_LMB {1} \
    CONFIG.C_ENABLE_CONVERSION {0} \
    CONFIG.C_I_LMB {1} \
  ] $microblaze_0


  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property CONFIG.NUM_MI {13} $microblaze_0_axi_periph


  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property CONFIG.C_HAS_FAST {1} $microblaze_0_axi_intc


  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: rst_Clk_100M, and set properties
  set rst_Clk_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_Clk_100M ]
  set_property -dict [list \
    CONFIG.RESET_BOARD_INTERFACE {reset} \
    CONFIG.USE_BOARD_FLOW {true} \
  ] $rst_Clk_100M


  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [list \
    CONFIG.C_BAUDRATE {115200} \
    CONFIG.UARTLITE_BOARD_INTERFACE {usb_uart} \
    CONFIG.USE_BOARD_FLOW {true} \
  ] $axi_uartlite_0


  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [list \
    CONFIG.C_ALL_OUTPUTS {1} \
    CONFIG.C_ALL_OUTPUTS_2 {1} \
    CONFIG.C_GPIO2_WIDTH {16} \
    CONFIG.C_GPIO_WIDTH {16} \
    CONFIG.C_IS_DUAL {1} \
  ] $axi_gpio_0


  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [list \
    CONFIG.C_ALL_OUTPUTS {1} \
    CONFIG.C_GPIO_WIDTH {2} \
    CONFIG.C_IS_DUAL {0} \
  ] $axi_gpio_1


  # Create instance: debug_signal_0, and set properties
  set block_name debug_signal
  set block_cell_name debug_signal_0
  if { [catch {set debug_signal_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $debug_signal_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: SPI_slave_0, and set properties
  set block_name SPI_slave
  set block_cell_name SPI_slave_0
  if { [catch {set SPI_slave_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SPI_slave_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property CONFIG.CONST_VAL {0} $xlconstant_0


  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create instance: axi_gpio_2, and set properties
  set axi_gpio_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2 ]
  set_property -dict [list \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_ALL_OUTPUTS_2 {1} \
    CONFIG.C_GPIO2_WIDTH {16} \
    CONFIG.C_GPIO_WIDTH {16} \
    CONFIG.C_IS_DUAL {1} \
  ] $axi_gpio_2


  # Create instance: axi_gpio_irq_spi, and set properties
  set axi_gpio_irq_spi [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_irq_spi ]
  set_property -dict [list \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_GPIO_WIDTH {1} \
    CONFIG.C_INTERRUPT_PRESENT {1} \
  ] $axi_gpio_irq_spi


  # Create instance: EM_REC_Delay_Duty_0, and set properties
  set block_name EM_REC_Delay_Duty
  set block_cell_name EM_REC_Delay_Duty_0
  if { [catch {set EM_REC_Delay_Duty_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $EM_REC_Delay_Duty_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]

  # Create instance: ClkTest_0, and set properties
  set block_name ClkTest
  set block_cell_name ClkTest_0
  if { [catch {set ClkTest_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ClkTest_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: receive_signal_0, and set properties
  set block_name receive_signal
  set block_cell_name receive_signal_0
  if { [catch {set receive_signal_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $receive_signal_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: EM_REC_Delay_Duty_1, and set properties
  set block_name EM_REC_Delay_Duty
  set block_cell_name EM_REC_Delay_Duty_1
  if { [catch {set EM_REC_Delay_Duty_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $EM_REC_Delay_Duty_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_gpio_3, and set properties
  set axi_gpio_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_3 ]
  set_property -dict [list \
    CONFIG.C_ALL_OUTPUTS {1} \
    CONFIG.C_ALL_OUTPUTS_2 {1} \
    CONFIG.C_GPIO2_WIDTH {16} \
    CONFIG.C_GPIO_WIDTH {16} \
    CONFIG.C_IS_DUAL {1} \
  ] $axi_gpio_3


  # Create instance: axi_gpio_4, and set properties
  set axi_gpio_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_4 ]
  set_property -dict [list \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_ALL_INPUTS_2 {1} \
    CONFIG.C_GPIO2_WIDTH {1} \
    CONFIG.C_GPIO_WIDTH {1} \
    CONFIG.C_INTERRUPT_PRESENT {1} \
    CONFIG.C_IS_DUAL {1} \
  ] $axi_gpio_4


  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property CONFIG.NUM_PORTS {5} $xlconcat_0


  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.3 xadc_wiz_0 ]
  set_property -dict [list \
    CONFIG.ACQUISITION_TIME {10} \
    CONFIG.CHANNEL_ENABLE_VAUXP4_VAUXN4 {false} \
    CONFIG.CHANNEL_ENABLE_VP_VN {false} \
    CONFIG.ENABLE_AXI4STREAM {true} \
    CONFIG.EXTERNAL_MUX_CHANNEL {VP_VN} \
    CONFIG.SEQUENCER_MODE {Off} \
    CONFIG.SINGLE_CHANNEL_ACQUISITION_TIME {true} \
    CONFIG.SINGLE_CHANNEL_SELECTION {VAUXP4_VAUXN4} \
    CONFIG.XADC_STARUP_SELECTION {single_channel} \
  ] $xadc_wiz_0


  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [list \
    CONFIG.c_include_mm2s {0} \
    CONFIG.c_include_sg {0} \
    CONFIG.c_s_axis_s2mm_tdata_width {32} \
    CONFIG.c_sg_length_width {16} \
  ] $axi_dma_0


  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property CONFIG.Memory_Type {True_Dual_Port_RAM} $blk_mem_gen_0


  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]

  # Create instance: axis_subset_converter_0, and set properties
  set axis_subset_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_0 ]
  set_property -dict [list \
    CONFIG.DEFAULT_TLAST {256} \
    CONFIG.M_HAS_TKEEP {1} \
    CONFIG.M_HAS_TLAST {1} \
    CONFIG.M_HAS_TREADY {1} \
    CONFIG.M_HAS_TSTRB {0} \
    CONFIG.M_TDATA_NUM_BYTES {4} \
    CONFIG.M_TDEST_WIDTH {0} \
    CONFIG.M_TID_WIDTH {0} \
    CONFIG.M_TUSER_WIDTH {0} \
    CONFIG.S_HAS_TKEEP {0} \
    CONFIG.S_HAS_TLAST {0} \
    CONFIG.S_HAS_TREADY {1} \
    CONFIG.S_HAS_TSTRB {0} \
    CONFIG.S_TDATA_NUM_BYTES {2} \
    CONFIG.S_TDEST_WIDTH {0} \
    CONFIG.S_TID_WIDTH {0} \
    CONFIG.S_TUSER_WIDTH {0} \
  ] $axis_subset_converter_0

  # Need to retain value_src of defaults
  # Enable this script to override value_src settings
  set_param bd.wbt.allow_value_src true
  set_property -dict [list \
    CONFIG.M_HAS_TREADY.VALUE_SRC {default} \
    CONFIG.M_HAS_TSTRB.VALUE_SRC {default} \
    CONFIG.M_TDEST_WIDTH.VALUE_SRC {default} \
    CONFIG.M_TID_WIDTH.VALUE_SRC {default} \
    CONFIG.M_TUSER_WIDTH.VALUE_SRC {default} \
    CONFIG.S_HAS_TLAST.VALUE_SRC {default} \
    CONFIG.S_HAS_TREADY.VALUE_SRC {default} \
    CONFIG.S_HAS_TSTRB.VALUE_SRC {default} \
    CONFIG.S_TDEST_WIDTH.VALUE_SRC {default} \
    CONFIG.S_TID_WIDTH.VALUE_SRC {default} \
    CONFIG.S_TUSER_WIDTH.VALUE_SRC {default} \
  ] $axis_subset_converter_0

  set_property -dict [list \
    CONFIG.M_HAS_TREADY.VALUE_MODE {manual} \
    CONFIG.M_HAS_TSTRB.VALUE_MODE {manual} \
    CONFIG.M_TDEST_WIDTH.VALUE_MODE {manual} \
    CONFIG.M_TID_WIDTH.VALUE_MODE {manual} \
    CONFIG.M_TUSER_WIDTH.VALUE_MODE {manual} \
    CONFIG.S_HAS_TLAST.VALUE_MODE {manual} \
    CONFIG.S_HAS_TREADY.VALUE_MODE {manual} \
    CONFIG.S_HAS_TSTRB.VALUE_MODE {manual} \
    CONFIG.S_TDEST_WIDTH.VALUE_MODE {manual} \
    CONFIG.S_TID_WIDTH.VALUE_MODE {manual} \
    CONFIG.S_TUSER_WIDTH.VALUE_MODE {manual} \
  ] $axis_subset_converter_0


  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property CONFIG.NUM_SI {2} $axi_smc


  # Create instance: axi_gpio_5, and set properties
  set axi_gpio_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_5 ]
  set_property -dict [list \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_ALL_INPUTS_2 {1} \
    CONFIG.C_GPIO2_WIDTH {1} \
    CONFIG.C_GPIO_WIDTH {1} \
    CONFIG.C_INTERRUPT_PRESENT {1} \
    CONFIG.C_IS_DUAL {1} \
  ] $axi_gpio_5


  # Create instance: axi_gpio_6, and set properties
  set axi_gpio_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_6 ]
  set_property -dict [list \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_ALL_INPUTS_2 {1} \
    CONFIG.C_GPIO2_WIDTH {1} \
    CONFIG.C_GPIO_WIDTH {1} \
    CONFIG.C_INTERRUPT_PRESENT {1} \
    CONFIG.C_IS_DUAL {1} \
  ] $axi_gpio_6


  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_smc/S00_AXI]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net axis_subset_converter_0_M_AXIS [get_bd_intf_pins axis_subset_converter_0/M_AXIS] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI] [get_bd_intf_pins microblaze_0/M_AXI_DP]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI] [get_bd_intf_pins axi_uartlite_0/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI] [get_bd_intf_pins axi_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI] [get_bd_intf_pins axi_gpio_1/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI] [get_bd_intf_pins axi_gpio_2/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI] [get_bd_intf_pins axi_gpio_irq_spi/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M06_AXI [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI] [get_bd_intf_pins axi_gpio_3/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI] [get_bd_intf_pins axi_gpio_4/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M08_AXI [get_bd_intf_pins microblaze_0_axi_periph/M08_AXI] [get_bd_intf_pins xadc_wiz_0/s_axi_lite]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M09_AXI [get_bd_intf_pins microblaze_0_axi_periph/M09_AXI] [get_bd_intf_pins axi_dma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M10_AXI [get_bd_intf_pins microblaze_0_axi_periph/M10_AXI] [get_bd_intf_pins axi_smc/S01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M11_AXI [get_bd_intf_pins microblaze_0_axi_periph/M11_AXI] [get_bd_intf_pins axi_gpio_5/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M12_AXI [get_bd_intf_pins microblaze_0_axi_periph/M12_AXI] [get_bd_intf_pins axi_gpio_6/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI] [get_bd_intf_pins microblaze_0_axi_intc/s_axi]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_0_axi_intc/interrupt] [get_bd_intf_pins microblaze_0/INTERRUPT]

  # Create port connections
  connect_bd_net -net Clk_1  [get_bd_ports Clk] \
  [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net EM_REC_Delay_Duty_0_out_sig  [get_bd_pins EM_REC_Delay_Duty_0/out_sig] \
  [get_bd_ports led1] \
  [get_bd_ports Tx_Rx_switch]
  connect_bd_net -net EM_REC_Delay_Duty_1_out_sig  [get_bd_pins EM_REC_Delay_Duty_1/out_sig] \
  [get_bd_ports Cswitch_Rx]
  connect_bd_net -net SPI_slave_0_miso  [get_bd_pins SPI_slave_0/miso] \
  [get_bd_ports spi_miso]
  connect_bd_net -net SPI_slave_0_rx  [get_bd_pins SPI_slave_0/rx] \
  [get_bd_pins axi_gpio_2/gpio_io_i]
  connect_bd_net -net SPI_slave_0_rx_done  [get_bd_pins SPI_slave_0/rx_done] \
  [get_bd_pins axi_gpio_irq_spi/gpio_io_i]
  connect_bd_net -net Vcomp1_1  [get_bd_ports Vcomp1] \
  [get_bd_pins axi_gpio_4/gpio_io_i]
  connect_bd_net -net Vcomp2_1  [get_bd_ports Vcomp2] \
  [get_bd_pins axi_gpio_4/gpio2_io_i]
  connect_bd_net -net Vcomp3_1  [get_bd_ports Vcomp3] \
  [get_bd_pins axi_gpio_5/gpio_io_i]
  connect_bd_net -net Vcomp4_1  [get_bd_ports Vcomp4] \
  [get_bd_pins axi_gpio_5/gpio2_io_i]
  connect_bd_net -net Vcomp5_1  [get_bd_ports Vcomp5] \
  [get_bd_pins axi_gpio_6/gpio_io_i]
  connect_bd_net -net Vcomp6_1  [get_bd_ports Vcomp6] \
  [get_bd_pins axi_gpio_6/gpio2_io_i]
  connect_bd_net -net axi_dma_0_s_axis_s2mm_tready  [get_bd_pins axi_dma_0/s_axis_s2mm_tready] \
  [get_bd_pins axis_subset_converter_0/m_axis_tready]
  connect_bd_net -net axi_gpio_0_gpio2_io_o  [get_bd_pins axi_gpio_0/gpio2_io_o] \
  [get_bd_pins EM_REC_Delay_Duty_0/delay_cycles]
  connect_bd_net -net axi_gpio_0_gpio_io_o  [get_bd_pins axi_gpio_0/gpio_io_o] \
  [get_bd_pins EM_REC_Delay_Duty_0/pulse_cycles]
  connect_bd_net -net axi_gpio_1_gpio_io_o  [get_bd_pins axi_gpio_1/gpio_io_o] \
  [get_bd_ports V1_V2]
  connect_bd_net -net axi_gpio_2_gpio2_io_o  [get_bd_pins axi_gpio_2/gpio2_io_o] \
  [get_bd_pins SPI_slave_0/tx]
  connect_bd_net -net axi_gpio_3_gpio2_io_o  [get_bd_pins axi_gpio_3/gpio2_io_o] \
  [get_bd_pins EM_REC_Delay_Duty_1/delay_cycles]
  connect_bd_net -net axi_gpio_3_gpio_io_o  [get_bd_pins axi_gpio_3/gpio_io_o] \
  [get_bd_pins EM_REC_Delay_Duty_1/pulse_cycles]
  connect_bd_net -net axi_gpio_4_ip2intc_irpt  [get_bd_pins axi_gpio_4/ip2intc_irpt] \
  [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net axi_gpio_5_ip2intc_irpt  [get_bd_pins axi_gpio_5/ip2intc_irpt] \
  [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net axi_gpio_6_ip2intc_irpt  [get_bd_pins axi_gpio_6/ip2intc_irpt] \
  [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net axi_gpio_irq_spi_ip2intc_irpt  [get_bd_pins axi_gpio_irq_spi/ip2intc_irpt] \
  [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_uartlite_0_interrupt  [get_bd_pins axi_uartlite_0/interrupt] \
  [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net axi_uartlite_0_tx  [get_bd_pins axi_uartlite_0/tx] \
  [get_bd_ports uart_rxd_out]
  connect_bd_net -net axis_subset_converter_0_m_axis_tdata  [get_bd_pins axis_subset_converter_0/m_axis_tdata] \
  [get_bd_pins axi_dma_0/s_axis_s2mm_tdata]
  connect_bd_net -net axis_subset_converter_0_m_axis_tkeep  [get_bd_pins axis_subset_converter_0/m_axis_tkeep] \
  [get_bd_pins axi_dma_0/s_axis_s2mm_tkeep]
  connect_bd_net -net axis_subset_converter_0_m_axis_tlast  [get_bd_pins axis_subset_converter_0/m_axis_tlast] \
  [get_bd_pins axi_dma_0/s_axis_s2mm_tlast]
  connect_bd_net -net axis_subset_converter_0_m_axis_tvalid  [get_bd_pins axis_subset_converter_0/m_axis_tvalid] \
  [get_bd_pins axi_dma_0/s_axis_s2mm_tvalid]
  connect_bd_net -net axis_subset_converter_0_s_axis_tready  [get_bd_pins axis_subset_converter_0/s_axis_tready] \
  [get_bd_pins xadc_wiz_0/m_axis_tready]
  connect_bd_net -net clk_wiz_0_clk_out1  [get_bd_pins clk_wiz_0/clk_out1] \
  [get_bd_pins axi_gpio_0/s_axi_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M02_ACLK] \
  [get_bd_pins axi_gpio_1/s_axi_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M03_ACLK] \
  [get_bd_pins axi_gpio_2/s_axi_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M04_ACLK] \
  [get_bd_pins axi_gpio_irq_spi/s_axi_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M05_ACLK] \
  [get_bd_pins axi_uartlite_0/s_axi_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M01_ACLK] \
  [get_bd_pins microblaze_0/Clk] \
  [get_bd_pins microblaze_0_local_memory/Clk] \
  [get_bd_pins microblaze_0_axi_periph/S00_ACLK] \
  [get_bd_pins microblaze_0_axi_intc/processor_clk] \
  [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M00_ACLK] \
  [get_bd_pins microblaze_0_axi_periph/ACLK] \
  [get_bd_pins rst_Clk_100M/slowest_sync_clk] \
  [get_bd_pins ClkTest_0/clk] \
  [get_bd_pins debug_signal_0/Clk] \
  [get_bd_pins EM_REC_Delay_Duty_0/clk] \
  [get_bd_pins SPI_slave_0/Clk] \
  [get_bd_pins EM_REC_Delay_Duty_1/clk] \
  [get_bd_pins axi_gpio_3/s_axi_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M06_ACLK] \
  [get_bd_pins axi_gpio_4/s_axi_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M07_ACLK] \
  [get_bd_pins receive_signal_0/Clk] \
  [get_bd_pins xadc_wiz_0/s_axi_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M08_ACLK] \
  [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] \
  [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] \
  [get_bd_pins axi_dma_0/s_axi_lite_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M09_ACLK] \
  [get_bd_pins xadc_wiz_0/s_axis_aclk] \
  [get_bd_pins axis_subset_converter_0/aclk] \
  [get_bd_pins axi_smc/aclk] \
  [get_bd_pins microblaze_0_axi_periph/M10_ACLK] \
  [get_bd_pins axi_gpio_5/s_axi_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M11_ACLK] \
  [get_bd_pins axi_gpio_6/s_axi_aclk] \
  [get_bd_pins microblaze_0_axi_periph/M12_ACLK]
  connect_bd_net -net clk_wiz_0_locked  [get_bd_pins clk_wiz_0/locked] \
  [get_bd_pins rst_Clk_100M/dcm_locked]
  connect_bd_net -net debug_signal_0_sig  [get_bd_pins debug_signal_0/sig] \
  [get_bd_ports led2]
  connect_bd_net -net em_rec_real_in_1  [get_bd_ports em_rec_real_in] \
  [get_bd_pins receive_signal_0/Signal_in]
  connect_bd_net -net mdm_1_debug_sys_rst  [get_bd_pins mdm_1/Debug_SYS_Rst] \
  [get_bd_pins rst_Clk_100M/mb_debug_sys_rst]
  connect_bd_net -net receive_signal_0_Signal_out  [get_bd_pins receive_signal_0/Signal_out] \
  [get_bd_pins EM_REC_Delay_Duty_0/EM_REC] \
  [get_bd_pins EM_REC_Delay_Duty_1/EM_REC]
  connect_bd_net -net rst_1  [get_bd_ports rst] \
  [get_bd_pins clk_wiz_0/reset] \
  [get_bd_pins rst_Clk_100M/ext_reset_in]
  connect_bd_net -net rst_Clk_100M_bus_struct_reset  [get_bd_pins rst_Clk_100M/bus_struct_reset] \
  [get_bd_pins microblaze_0_local_memory/SYS_Rst]
  connect_bd_net -net rst_Clk_100M_mb_reset  [get_bd_pins rst_Clk_100M/mb_reset] \
  [get_bd_pins microblaze_0/Reset] \
  [get_bd_pins microblaze_0_axi_intc/processor_rst]
  connect_bd_net -net rst_Clk_100M_peripheral_aresetn  [get_bd_pins rst_Clk_100M/peripheral_aresetn] \
  [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] \
  [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] \
  [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] \
  [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] \
  [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] \
  [get_bd_pins microblaze_0_axi_periph/ARESETN] \
  [get_bd_pins axi_uartlite_0/s_axi_aresetn] \
  [get_bd_pins axi_gpio_1/s_axi_aresetn] \
  [get_bd_pins axi_gpio_0/s_axi_aresetn] \
  [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] \
  [get_bd_pins axi_gpio_2/s_axi_aresetn] \
  [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] \
  [get_bd_pins axi_gpio_irq_spi/s_axi_aresetn] \
  [get_bd_pins microblaze_0_axi_periph/M05_ARESETN] \
  [get_bd_pins axi_gpio_3/s_axi_aresetn] \
  [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] \
  [get_bd_pins axi_gpio_4/s_axi_aresetn] \
  [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] \
  [get_bd_pins xadc_wiz_0/s_axi_aresetn] \
  [get_bd_pins microblaze_0_axi_periph/M08_ARESETN] \
  [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] \
  [get_bd_pins axi_dma_0/axi_resetn] \
  [get_bd_pins microblaze_0_axi_periph/M09_ARESETN] \
  [get_bd_pins axis_subset_converter_0/aresetn] \
  [get_bd_pins axi_smc/aresetn] \
  [get_bd_pins microblaze_0_axi_periph/M10_ARESETN] \
  [get_bd_pins axi_gpio_5/s_axi_aresetn] \
  [get_bd_pins microblaze_0_axi_periph/M11_ARESETN] \
  [get_bd_pins axi_gpio_6/s_axi_aresetn] \
  [get_bd_pins microblaze_0_axi_periph/M12_ARESETN]
  connect_bd_net -net rst_Clk_100M_peripheral_reset  [get_bd_pins rst_Clk_100M/peripheral_reset] \
  [get_bd_pins ClkTest_0/rst] \
  [get_bd_pins debug_signal_0/rst] \
  [get_bd_pins EM_REC_Delay_Duty_0/rst] \
  [get_bd_pins SPI_slave_0/rst] \
  [get_bd_pins EM_REC_Delay_Duty_1/rst] \
  [get_bd_pins receive_signal_0/rst]
  connect_bd_net -net spi_mosi_1  [get_bd_ports spi_mosi] \
  [get_bd_pins SPI_slave_0/mosi]
  connect_bd_net -net spi_sclk_1  [get_bd_ports spi_sclk] \
  [get_bd_pins SPI_slave_0/sclk]
  connect_bd_net -net spi_ss_n_1  [get_bd_ports spi_ss_n] \
  [get_bd_pins SPI_slave_0/ss_n]
  connect_bd_net -net uart_txd_in_1  [get_bd_ports uart_txd_in] \
  [get_bd_pins axi_uartlite_0/rx]
  connect_bd_net -net vauxn4_1  [get_bd_ports vauxn4] \
  [get_bd_pins xadc_wiz_0/vauxn4]
  connect_bd_net -net vauxp4_1  [get_bd_ports vauxp4] \
  [get_bd_pins xadc_wiz_0/vauxp4]
  connect_bd_net -net xadc_wiz_0_m_axis_tdata  [get_bd_pins xadc_wiz_0/m_axis_tdata] \
  [get_bd_pins axis_subset_converter_0/s_axis_tdata]
  connect_bd_net -net xadc_wiz_0_m_axis_tvalid  [get_bd_pins xadc_wiz_0/m_axis_tvalid] \
  [get_bd_pins axis_subset_converter_0/s_axis_tvalid]
  connect_bd_net -net xlconcat_0_dout  [get_bd_pins xlconcat_0/dout] \
  [get_bd_pins microblaze_0_axi_intc/intr]
  connect_bd_net -net xlconstant_0_dout  [get_bd_pins xlconstant_0/dout] \
  [get_bd_pins SPI_slave_0/cpol] \
  [get_bd_pins SPI_slave_0/cpha]
  connect_bd_net -net xlconstant_1_dout  [get_bd_pins xlconstant_1/dout] \
  [get_bd_pins SPI_slave_0/rx_enable]

  # Create address segments
  assign_bd_address -offset 0xC0000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x41E00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x40020000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_2/S_AXI/Reg] -force
  assign_bd_address -offset 0x40030000 -range 0x00010000 -with_name SEG_axi_gpio_3_Reg -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_irq_spi/S_AXI/Reg] -force
  assign_bd_address -offset 0x40040000 -range 0x00010000 -with_name SEG_axi_gpio_3_Reg_1 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_3/S_AXI/Reg] -force
  assign_bd_address -offset 0x40050000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_4/S_AXI/Reg] -force
  assign_bd_address -offset 0x40060000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_5/S_AXI/Reg] -force
  assign_bd_address -offset 0x40070000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_6/S_AXI/Reg] -force
  assign_bd_address -offset 0x40600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0xC0000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


