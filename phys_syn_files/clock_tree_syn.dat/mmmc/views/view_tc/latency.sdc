set_clock_latency -source -early -max -rise  -181.229 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -early -max -fall  -187.437 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -late -max -rise  -181.229 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -late -max -fall  -187.437 [get_ports {i_clk}] -clock i_clk 
