#set_clock_groups -asynchronous -group [get_clocks [list i_system_wrapper/system_i/util_ad9361_divclk/inst/clk_out]] -group [get_clocks [list i_system_wrapper/system_i/sys_ps8/inst/pl_clk2]]
#set_false_path -from [get_clocks -of_objects [get_pins i_system_wrapper/system_i/util_ad9361_divclk/inst/clk_divide_sel_0/O]] -to [get_clocks clk_pl_2]
#set_false_path -from [get_clocks -of_objects [get_pins i_system_wrapper/system_i/util_ad9361_divclk/inst/clk_divide_sel_1/O]] -to [get_clocks clk_pl_2]

## relax cross rf and bb domain control of adc_intf
#set_false_path -from [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_count_reg/C] -to [get_pins {i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/wren_count_reg[0]/R}]
#set_false_path -from [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_count_reg/C] -to [get_pins {i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/wren_count_reg[1]/R}]
#set_false_path -from [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_count_reg/C] -to [get_pins {i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/wren_count_reg[2]/R}]
#set_false_path -from [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_count_reg/C] -to [get_pins {i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/wren_count_reg[3]/R}]

#set_false_path -from [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/fifo32_2clk_dep32_i/fifo_generator_0/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg/C] -to [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/FULL_internal_in_bb_domain_reg/D]

#set_false_path -from [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_count_reg/C] -to [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_decimate_reg_reg/D]
#set_false_path -from [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_count_reg_replica/C] -to [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_decimate_reg_reg/D]
#set_false_path -from [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_count_reg_replica_1/C] -to [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_decimate_reg_reg/D]

#set_false_path -from [get_pins i_system_wrapper/system_i/util_ad9361_divclk/inst/clk_divide_sel_0/O] -to [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_clk_in_bb_domain_reg/D]
#set_false_path -from [get_pins i_system_wrapper/system_i/util_ad9361_divclk/inst/clk_divide_sel_1/O] -to [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_clk_in_bb_domain_reg/D]
#set_false_path -through [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_clk_in_bb_domain_reg/C]
#set_false_path -through [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_clk_in_bb_domain_reg/D]
#set_false_path -through [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_clk_in_bb_domain_reg/Q]
#set_false_path -through [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_clk_in_bb_domain_reg/R]

#set_false_path -from [get_pins i_system_wrapper/system_i/util_ad9361_adc_pack/inst/i_cpack/packed_fifo_wr_en_reg/C] -to [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_in_bb_domain_reg/D]
#set_false_path -through [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_in_bb_domain_reg/C]
#set_false_path -through [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_in_bb_domain_reg/D]
#set_false_path -through [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_in_bb_domain_reg/Q]
#set_false_path -through [get_pins i_system_wrapper/system_i/openwifi_ip/rx_intf_0/inst/adc_intf_i/adc_valid_in_bb_domain_reg/R]

# relax cross rf and bb domain control of dac_intf
set_false_path -through [get_pins {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/dac_intf_i/xpm_cdc_array_single_inst_src_sel/syncstages_ff_reg[3][0]/C}]
# set_false_path -through [get_pins {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/dac_intf_i/xpm_cdc_array_single_inst_src_sel/syncstages_ff_reg[3][0]/D}]
# set_false_path -through [get_pins {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/dac_intf_i/xpm_cdc_array_single_inst_src_sel/syncstages_ff_reg[3][0]/Q}]
# set_false_path -through [get_pins {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/dac_intf_i/xpm_cdc_array_single_inst_src_sel/syncstages_ff_reg[3][0]/R}]

set_false_path -through [get_pins {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/dac_intf_i/xpm_cdc_array_single_inst_ant_flag/syncstages_ff_reg[3][0]/C}]
# set_false_path -through [get_pins {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/dac_intf_i/xpm_cdc_array_single_inst_ant_flag/syncstages_ff_reg[3][0]/D}]
# set_false_path -through [get_pins {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/dac_intf_i/xpm_cdc_array_single_inst_ant_flag/syncstages_ff_reg[3][0]/Q}]
# set_false_path -through [get_pins {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/dac_intf_i/xpm_cdc_array_single_inst_ant_flag/syncstages_ff_reg[3][0]/R}]






connect_debug_port u_ila_0/probe1 [get_nets [list {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/tx_status_fifo_i/cw_delay5[0]} {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/tx_status_fifo_i/cw_delay5[1]} {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/tx_status_fifo_i/cw_delay5[2]} {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/tx_status_fifo_i/cw_delay5[3]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[0]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[1]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[2]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[3]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[4]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[5]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[6]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[7]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[8]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[9]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[10]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[11]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_timer[12]}]]
connect_debug_port u_ila_0/probe6 [get_nets [list {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[0]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[1]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[2]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[3]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[4]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[5]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[6]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[7]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[8]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[9]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[10]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[11]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[12]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[13]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[14]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[15]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[16]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[17]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[18]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[19]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[20]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[21]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[22]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[23]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[24]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[25]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[26]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[27]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[28]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[29]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[30]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/random_number[31]}]]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list i_system_wrapper/system_i/sys_ps7/inst/FCLK_CLK2]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 3 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_state[0]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_state[1]} {i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_state[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 3 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/tx_bit_intf_i/high_tx_ctl_state[0]} {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/tx_bit_intf_i/high_tx_ctl_state[1]} {i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/tx_bit_intf_i/high_tx_ctl_state[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/backoff_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/cw_exp_i/cw_update]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/tx_bit_intf_i/quit_retrans]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/tx_bit_intf_i/retrans_in_progress]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/tx_control_i/retrans_started]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list i_system_wrapper/system_i/openwifi_ip/xpu_0/inst/csma_ca_i/take_new_random_number]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list i_system_wrapper/system_i/openwifi_ip/tx_intf_0/inst/tx_bit_intf_i/tx_try_complete]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK2]
