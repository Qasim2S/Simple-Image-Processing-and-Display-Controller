verdiSetActWin -win $_nWave1
wvResizeWindow -win $_nWave1 44 229 1149 476
wvResizeWindow -win $_nWave1 -9 43 1202 662
wvConvertFile -win $_nWave1 -o \
           "/home/v72206/MiniProject_03/MiniProject_03/01_RTL/ipdc.vcd.fsdb" \
           "/home/v72206/MiniProject_03/MiniProject_03/01_RTL/ipdc.vcd"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/v72206/MiniProject_03/MiniProject_03/01_RTL/ipdc.vcd.fsdb}
wvSetFileTimeRange -win $_nWave1 -time_unit 100p 0 66950
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc/census_transform"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 )} \
           
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 )} \
           
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 2735.546538 -snap {("G2" 0)}
wvResizeWindow -win $_nWave1 -9 43 1202 662
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScopwvExit
$_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvSetPosition -win $_nWave1 {("G1" 53)}
wvSetPosition -win $_nWave1 {("G1" 53)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/\\blue\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[8\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[9\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[10\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[11\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[12\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[8\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[9\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[10\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[11\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[12\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[8\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[9\] \[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 19 20 21 22 23 24 25 26 27 28 29 30 31 \
           32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 53)}
wvSetPosition -win $_nWave1 {("G1" 53)}
wvSetPosition -win $_nWave1 {("G1" 53)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/\\blue\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[8\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[9\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[10\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[11\] \[7:0\]} \
{/testbed/u_ipdc/\\blue\[12\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[8\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[9\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[10\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[11\] \[7:0\]} \
{/testbed/u_ipdc/\\green\[12\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[8\] \[7:0\]} \
{/testbed/u_ipdc/\\red\[9\] \[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 19 20 21 22 23 24 25 26 27 28 29 30 31 \
           32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 53)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetCursor -win $_nWave1 2577.333470 -snap {("G1" 8)}
wvScrollDown -win $_nWave1 25
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetPosition -win $_nWave1 {("G1" 41)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 22 23 24 25 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 )} \
           
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvResizeWindow -win $_nWave1 -9 43 1202 662
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/v72206/MiniProject_03/MiniProject_03/01_RTL/ipdc.vcd.fsdb" \
           "/home/v72206/MiniProject_03/MiniProject_03/01_RTL/ipdc.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/v72206/MiniProject_03/MiniProject_03/01_RTL/ipdc.vcd.fsdb" \
           "/home/v72206/MiniProject_03/MiniProject_03/01_RTL/ipdc.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvZoom -win $_nWave1 44250.217811 47077.220819
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/\\blue_temp\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[8\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[8\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[8\] \[7:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           23 24 25 26 27 28 29 30 31 32 33 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/\\blue_temp\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[8\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\green_temp\[8\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\red_temp\[8\] \[7:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           23 24 25 26 27 28 29 30 31 32 33 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 10
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 4
wvSetCursor -win $_nWave1 44835.965435 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvZoom -win $_nWave1 44731.147439 45548.111231
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 12 13 14 15 16 17 18 19 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/blue_median\[7:0\]} \
{/testbed/u_ipdc/green_median\[7:0\]} \
{/testbed/u_ipdc/red_median\[7:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/blue_median\[7:0\]} \
{/testbed/u_ipdc/green_median\[7:0\]} \
{/testbed/u_ipdc/red_median\[7:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/blue_median\[7:0\]} \
{/testbed/u_ipdc/green_median\[7:0\]} \
{/testbed/u_ipdc/red_median\[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[8\] \[7:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 13 14 15 16 17 18 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/blue_median\[7:0\]} \
{/testbed/u_ipdc/green_median\[7:0\]} \
{/testbed/u_ipdc/red_median\[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[0\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[1\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[2\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[3\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[4\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[5\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[6\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[7\] \[7:0\]} \
{/testbed/u_ipdc/\\blue_temp\[8\] \[7:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 13 14 15 16 17 18 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 13 14 15 16 17 18 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 12 13 14 15 16 17 18 19 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 45042.074771 -snap {("G1" 14)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 12 13 14 15 16 17 18 19 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 44492.829212 44752.974716
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1032.358779 28168.646674
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvZoom -win $_nWave1 38174.980733 41814.853592
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 368.699564
wvZoom -win $_nWave1 38271.014722 41220.611232
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/Cb_Out\[7:0\]} \
{/testbed/u_ipdc/Cr_Out\[7:0\]} \
{/testbed/u_ipdc/YCbCr_idx\[7:0\]} \
{/testbed/u_ipdc/Y_Out\[7:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/Cb_Out\[7:0\]} \
{/testbed/u_ipdc/Cr_Out\[7:0\]} \
{/testbed/u_ipdc/YCbCr_idx\[7:0\]} \
{/testbed/u_ipdc/Y_Out\[7:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 38830.698247 39075.157718
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 37607.355507
wvZoom -win $_nWave1 52060.378408 55304.934569
wvZoom -win $_nWave1 52817.559453 53415.520185
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 37533.615594 40851.911668
wvZoom -win $_nWave1 38785.666240 39784.411841
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 10 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 12 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_ipdc"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/blue_census_f\[7:0\]} \
{/testbed/u_ipdc/green_census_f\[7:0\]} \
{/testbed/u_ipdc/red_census_f\[7:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_ipdc/i_clk} \
{/testbed/u_ipdc/i_rst_n} \
{/testbed/u_ipdc/i_op_mode\[3:0\]} \
{/testbed/u_ipdc/o_in_ready_r} \
{/testbed/u_ipdc/origin_row\[3:0\]} \
{/testbed/u_ipdc/origin_column\[3:0\]} \
{/testbed/u_ipdc/image_size_r\[1:0\]} \
{/testbed/u_ipdc/o_out_data\[23:0\]} \
{/testbed/u_ipdc/blue_census_f\[7:0\]} \
{/testbed/u_ipdc/green_census_f\[7:0\]} \
{/testbed/u_ipdc/red_census_f\[7:0\]} \
{/testbed/u_ipdc/i_in_valid} \
{/testbed/u_ipdc/i_op_valid} \
{/testbed/u_ipdc/o_in_ready} \
{/testbed/u_ipdc/o_in_ready_w} \
{/testbed/u_ipdc/o_op_ready} \
{/testbed/u_ipdc/o_op_ready_r} \
{/testbed/u_ipdc/o_op_ready_w} \
{/testbed/u_ipdc/o_out_data_r\[23:0\]} \
{/testbed/u_ipdc/o_out_valid} \
{/testbed/u_ipdc/o_out_valid_r} \
{/testbed/u_ipdc/o_out_valid_w} \
{/testbed/u_ipdc/i_in_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 51099.354655 53748.154330
wvZoom -win $_nWave1 52733.262546 53293.641103
