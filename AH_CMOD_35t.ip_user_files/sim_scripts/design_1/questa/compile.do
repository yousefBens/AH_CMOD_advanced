vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_15
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lmb_v10_v3_0_15
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vlib questa_lib/msim/blk_mem_gen_v8_4_11
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_35
vlib questa_lib/msim/fifo_generator_v13_2_13
vlib questa_lib/msim/axi_data_fifo_v2_1_35
vlib questa_lib/msim/axi_crossbar_v2_1_37
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_intc_v4_1_21
vlib questa_lib/msim/mdm_v3_2_28
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/axi_uartlite_v2_0_39
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_37
vlib questa_lib/msim/xlconstant_v1_1_10
vlib questa_lib/msim/xlconcat_v2_1_7
vlib questa_lib/msim/axi_datamover_v5_1_37
vlib questa_lib/msim/axi_sg_v4_1_21
vlib questa_lib/msim/axi_dma_v7_1_36
vlib questa_lib/msim/axi_bram_ctrl_v4_1_13
vlib questa_lib/msim/axis_infrastructure_v1_1_1
vlib questa_lib/msim/axis_register_slice_v1_1_35
vlib questa_lib/msim/axis_subset_converter_v1_1_35
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_vip_v1_1_21

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_15 questa_lib/msim/microblaze_v11_0_15
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_15 questa_lib/msim/lmb_v10_v3_0_15
vmap lmb_bram_if_cntlr_v4_0_26 questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vmap blk_mem_gen_v8_4_11 questa_lib/msim/blk_mem_gen_v8_4_11
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_35 questa_lib/msim/axi_register_slice_v2_1_35
vmap fifo_generator_v13_2_13 questa_lib/msim/fifo_generator_v13_2_13
vmap axi_data_fifo_v2_1_35 questa_lib/msim/axi_data_fifo_v2_1_35
vmap axi_crossbar_v2_1_37 questa_lib/msim/axi_crossbar_v2_1_37
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_21 questa_lib/msim/axi_intc_v4_1_21
vmap mdm_v3_2_28 questa_lib/msim/mdm_v3_2_28
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap axi_uartlite_v2_0_39 questa_lib/msim/axi_uartlite_v2_0_39
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 questa_lib/msim/axi_gpio_v2_0_37
vmap xlconstant_v1_1_10 questa_lib/msim/xlconstant_v1_1_10
vmap xlconcat_v2_1_7 questa_lib/msim/xlconcat_v2_1_7
vmap axi_datamover_v5_1_37 questa_lib/msim/axi_datamover_v5_1_37
vmap axi_sg_v4_1_21 questa_lib/msim/axi_sg_v4_1_21
vmap axi_dma_v7_1_36 questa_lib/msim/axi_dma_v7_1_36
vmap axi_bram_ctrl_v4_1_13 questa_lib/msim/axi_bram_ctrl_v4_1_13
vmap axis_infrastructure_v1_1_1 questa_lib/msim/axis_infrastructure_v1_1_1
vmap axis_register_slice_v1_1_35 questa_lib/msim/axis_register_slice_v1_1_35
vmap axis_subset_converter_v1_1_35 questa_lib/msim/axis_subset_converter_v1_1_35
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_vip_v1_1_21 questa_lib/msim/axi_vip_v1_1_21

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_15 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/75f6/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_microblaze_0_0_2/sim/design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_15 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/b1c4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_dlmb_v10_0_2/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0_2/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_26 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/0e64/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0_2/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0_2/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_11 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_lmb_bram_0_2/sim/design_1_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_2 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_35 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_13 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/dc46/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_13 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_13 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_35 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/4846/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_37 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a1a7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_periph_imp_xbar_0/sim/design_1_microblaze_0_axi_periph_imp_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_21 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/9eb6/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_0_2/sim/design_1_microblaze_0_axi_intc_0.vhd" \

vcom -work mdm_v3_2_28 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/00dd/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_mdm_1_0_2/sim/design_1_mdm_1_0.vhd" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_rst_Clk_100M_0_1/sim/design_1_rst_Clk_100M_0.vhd" \

vcom -work axi_uartlite_v2_0_39 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/eab1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_1_0/sim/design_1_axi_gpio_1_0.vhd" \
"../../../bd/design_1/ip/design_1_SPI_slave_0_0/sim/design_1_SPI_slave_0_0.vhd" \

vlog -work xlconstant_v1_1_10 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_2_0/sim/design_1_axi_gpio_2_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_irq_spi_0/sim/design_1_axi_gpio_irq_spi_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_ClkTest_0_0/sim/design_1_ClkTest_0_0.vhd" \
"../../../bd/design_1/ip/design_1_receive_signal_0_0/sim/design_1_receive_signal_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_3_0/sim/design_1_axi_gpio_3_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_4_0/sim/design_1_axi_gpio_4_0.vhd" \

vlog -work xlconcat_v2_1_7 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_family_support.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_family.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_soft_reset.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_pselect_f.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_address_decoder.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_slave_attachment.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_interrupt_control.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0_drp_arbiter.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0_drp_to_axi_stream.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0_axi_xadc.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \

vcom -work axi_datamover_v5_1_37 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_21 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/b193/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_36 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/cb19/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_13 -64 -93  \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/2f03/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_1 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_35 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/be12/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tdata_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tuser_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tstrb_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tkeep_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tid_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tdest_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tlast_design_1_axis_subset_converter_0_0.v" \

vlog -work axis_subset_converter_v1_1_35 -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/26da/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/top_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/sim/design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_sawn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_swn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_sbn_1.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m00e_0.sv" \

vlog -work axi_vip_v1_1_21 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.sv" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_5_0/sim/design_1_axi_gpio_5_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_6_0/sim/design_1_axi_gpio_6_0.vhd" \
"../../../bd/design_1/ip/design_1_Btn_led_0_0/sim/design_1_Btn_led_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_7_0/sim/design_1_axi_gpio_7_0.vhd" \
"../../../bd/design_1/ip/design_1_EM_REC_Delay_Duty_Mo_0_0/sim/design_1_EM_REC_Delay_Duty_Mo_0_0.vhd" \
"../../../bd/design_1/ip/design_1_EM_REC_Delay_Duty_Mo_1_0/sim/design_1_EM_REC_Delay_Duty_Mo_1_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_8_0/sim/design_1_axi_gpio_8_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_9_0/sim/design_1_axi_gpio_9_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_10_0/sim/design_1_axi_gpio_10_0.vhd" \
"../../../bd/design_1/ip/design_1_EM_REC_Delay_Duty_Mo_2_0/sim/design_1_EM_REC_Delay_Duty_Mo_2_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_11_0/sim/design_1_axi_gpio_11_0.vhd" \
"../../../bd/design_1/ip/design_1_SW_follow_input_Sign_0_0/sim/design_1_SW_follow_input_Sign_0_0.vhd" \
"../../../bd/design_1/ip/design_1_SW_follow_input_Sign_1_0/sim/design_1_SW_follow_input_Sign_1_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AH_CMOD_35t.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_periph_imp_tier2_xbar_0_0/sim/design_1_microblaze_0_axi_periph_imp_tier2_xbar_0_0.v" \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_periph_imp_tier2_xbar_1_0/sim/design_1_microblaze_0_axi_periph_imp_tier2_xbar_1_0.v" \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_periph_imp_tier2_xbar_2_0/sim/design_1_microblaze_0_axi_periph_imp_tier2_xbar_2_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

