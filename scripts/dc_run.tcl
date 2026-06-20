set search_path {/home/v72206/MiniProject_03/MiniProject_03/lib/db}
set link_library "asap7sc7p5t_AO_LVT_TT_nldm_211120.db asap7sc7p5t_AO_SLVT_TT_nldm_211120.db asap7sc7p5t_INVBUF_LVT_TT_nldm_211120.db asap7sc7p5t_INVBUF_SLVT_TT_nldm_211120.db asap7sc7p5t_OA_LVT_TT_nldm_211120.db asap7sc7p5t_OA_SLVT_TT_nldm_211120.db asap7sc7p5t_SEQ_LVT_TT_nldm_220123.db asap7sc7p5t_SEQ_SLVT_TT_nldm_220123.db asap7sc7p5t_SIMPLE_LVT_TT_nldm_211120.db asap7sc7p5t_SIMPLE_SLVT_TT_nldm_211120.db"
set target_library "asap7sc7p5t_AO_LVT_TT_nldm_211120.db asap7sc7p5t_AO_SLVT_TT_nldm_211120.db asap7sc7p5t_INVBUF_LVT_TT_nldm_211120.db asap7sc7p5t_INVBUF_SLVT_TT_nldm_211120.db asap7sc7p5t_OA_LVT_TT_nldm_211120.db asap7sc7p5t_OA_SLVT_TT_nldm_211120.db asap7sc7p5t_SEQ_LVT_TT_nldm_220123.db asap7sc7p5t_SEQ_SLVT_TT_nldm_220123.db asap7sc7p5t_SIMPLE_LVT_TT_nldm_211120.db asap7sc7p5t_SIMPLE_SLVT_TT_nldm_211120.db"
read_file {/home/v72206/MiniProject_03/MiniProject_03/01_RTL} -autoread -recursive -format verilog -top ipdc
list_designs

create_clock -name "i_clk" -period 1500 -waveform {"0" "750"} [get_ports "i_clk" ]
set_dont_touch_network [find clock clk]
set_fix_hold clk

set_dont_touch_network [get_nets rst_n]

set_boundary_optimization "*"
set_fix_multiple_port_nets -all -buffer_constant
set_max_area 0

check_design

compile -map_effort medium
report_timing -path full -delay max -max_paths 1 -nworst 1 > ./reports/ipdc.timing
report_power > ./reports/ipdc.power
report_area -nosplit > ./reports/ipdc.area
write -hierarchy -format ddc
write_sdc ./outputs/ipdc.sdc
write_sdf -version 1.0 ./outputs/ipdc.sdf
write -format verilog -hierarchy -output ./outputs/ipdc_syn.v
exit
