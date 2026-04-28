set_clock_latency -source -early -max -rise  -214.511 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -early -max -fall  -221.219 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -late -max -rise  -214.511 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -late -max -fall  -221.219 [get_ports {i_clk}] -clock i_clk 
