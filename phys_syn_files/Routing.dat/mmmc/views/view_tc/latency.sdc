set_clock_latency -source -early -max -rise  -134.777 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -early -max -fall  -137.101 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -late -max -rise  -134.777 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -late -max -fall  -137.101 [get_ports {i_clk}] -clock i_clk 
