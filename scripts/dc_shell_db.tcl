dc_shell

enable_write_lib_mode

set asap7_lib "/home/v70259/mydata/ASIC_Design_Course/1_New_Labs/Lab3333/lib"



read_lib $asap7_lib/asap7sc7p5t_AO_LVT_TT_nldm_211120.lib
read_lib $asap7_lib/asap7sc7p5t_AO_SLVT_TT_nldm_211120.lib
read_lib $asap7_lib/asap7sc7p5t_INVBUF_LVT_TT_nldm_220122.lib
read_lib $asap7_lib/asap7sc7p5t_INVBUF_SLVT_TT_nldm_220122.lib
read_lib $asap7_lib/asap7sc7p5t_OA_LVT_TT_nldm_211120.lib
read_lib $asap7_lib/asap7sc7p5t_OA_SLVT_TT_nldm_211120.lib
read_lib $asap7_lib/asap7sc7p5t_SEQ_LVT_TT_nldm_220123.lib
read_lib $asap7_lib/asap7sc7p5t_SEQ_SLVT_TT_nldm_220123.lib
read_lib $asap7_lib/asap7sc7p5t_SIMPLE_LVT_TT_nldm_211120.lib
read_lib $asap7_lib/asap7sc7p5t_SIMPLE_SLVT_TT_nldm_211120.lib


list_libs


write_lib asap7sc7p5t_AO_LVT_TT_nldm_211120 -f db -o $asap7_lib/db/asap7sc7p5t_AO_LVT_TT_nldm_211120.db

write_lib asap7sc7p5t_AO_SLVT_TT_nldm_211120 -f db -o $asap7_lib/db/asap7sc7p5t_AO_SLVT_TT_nldm_211120.db


write_lib asap7sc7p5t_INVBUF_LVT_TT_nldm_211120 -f db -o $asap7_lib/db/asap7sc7p5t_INVBUF_LVT_TT_nldm_211120.db


write_lib asap7sc7p5t_INVBUF_SLVT_TT_nldm_211120 -f db -o $asap7_lib/db/asap7sc7p5t_INVBUF_SLVT_TT_nldm_211120.db


write_lib asap7sc7p5t_OA_LVT_TT_nldm_211120 -f db -o $asap7_lib/db/asap7sc7p5t_OA_LVT_TT_nldm_211120.db


write_lib asap7sc7p5t_OA_SLVT_TT_nldm_211120 -f db -o $asap7_lib/db/asap7sc7p5t_OA_SLVT_TT_nldm_211120.db


write_lib asap7sc7p5t_SEQ_LVT_TT_nldm_220123 -f db -o $asap7_lib/db/asap7sc7p5t_SEQ_LVT_TT_nldm_220123.db


write_lib asap7sc7p5t_SEQ_SLVT_TT_nldm_220123 -f db -o $asap7_lib/db/asap7sc7p5t_SEQ_SLVT_TT_nldm_220123.db


write_lib asap7sc7p5t_SIMPLE_LVT_TT_nldm_211120 -f db -o $asap7_lib/db/asap7sc7p5t_SIMPLE_LVT_TT_nldm_211120.db


write_lib asap7sc7p5t_SIMPLE_SLVT_TT_nldm_211120 -f db -o $asap7_lib/db/asap7sc7p5t_SIMPLE_SLVT_TT_nldm_211120.db


