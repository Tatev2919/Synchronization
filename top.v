`include "counter.v"
`include "synch.v"
`include "receiver.v"

module top(clkS,clkF,rst,out);
	input clkF,clkS,rst;	
	output [7:0] out;
	wire synch_signal;
	wire [7:0] data;
 
        counter c1(clkF,rst,data);
        synch s1(rst,clkF,clkS,synch_signal);
	receiver r1(clkS,rst,data,synch_signal,out);

endmodule 
