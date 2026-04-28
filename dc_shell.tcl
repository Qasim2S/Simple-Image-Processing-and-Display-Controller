set search_path {/home/v70259/mydata/ASIC_Design_Course/1_New_Labs/Lab3333/db}
set link_library "asap7sc7p5t_AO_LVT_TT_nldm_211120.db asap7sc7p5t_AO_SLVT_TT_nldm_211120.db asap7sc7p5t_INVBUF_LVT_TT_nldm_211120.db asap7sc7p5t_INVBUF_SLVT_TT_nldm_211120.db asap7sc7p5t_OA_LVT_TT_nldm_211120.db asap7sc7p5t_OA_SLVT_TT_nldm_211120.db asap7sc7p5t_SEQ_LVT_TT_nldm_220123.db asap7sc7p5t_SEQ_SLVT_TT_nldm_220123.db asap7sc7p5t_SIMPLE_LVT_TT_nldm_211120.db asap7sc7p5t_SIMPLE_SLVT_TT_nldm_211120.db"
set target_library "asap7sc7p5t_AO_LVT_TT_nldm_211120.db asap7sc7p5t_AO_SLVT_TT_nldm_211120.db asap7sc7p5t_INVBUF_LVT_TT_nldm_211120.db asap7sc7p5t_INVBUF_SLVT_TT_nldm_211120.db asap7sc7p5t_OA_LVT_TT_nldm_211120.db asap7sc7p5t_OA_SLVT_TT_nldm_211120.db asap7sc7p5t_SEQ_LVT_TT_nldm_220123.db asap7sc7p5t_SEQ_SLVT_TT_nldm_220123.db asap7sc7p5t_SIMPLE_LVT_TT_nldm_211120.db asap7sc7p5t_SIMPLE_SLVT_TT_nldm_211120.db"

read_file {/home/v70259/mydata/ASIC_Design_Course/1_New_Labs/Lab3333/sources} -autoread -recursive -format verilog -top mips_cpu  


create_clock -name "clk" -period 200 -waveform {"0" "100"} {"clk"}
set_dont_touch_network [find clock clk]
set_fix_hold clk

set_dont_touch_network [get_nets rst_n]
set_dont_touch u_alu
set_dont_touch u_regfile
set_dont_touch u_ctrl
set_dont_touch u_imem
set_dont_touch u_sign_extend
set_dont_touch u_alu_ctrl
set_dont_touch u_dmem

set_boundary_optimization "*"
set_fix_multiple_port_nets -all -buffer_constant
set_max_area 0

check_design

compile -map_effort medium

report_timing -path full -delay max -max_paths 1 -nworst 1 > ./reports/MIPS.timing
report_power > ./reports/MIPS.power
report_area -nosplit > ./reports/MIPS.area

write -hierarchy -format ddc
write_sdc ./outputs/MIPS.sdc
write_sdf -version 1.0 ./outputs/MIPS.sdf
write -format verilog -hierarchy -output ./outputs/MIPS_syn.v

exit
