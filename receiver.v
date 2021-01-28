module receiver(clkS,rst,d_in,d_out);
input clkS,rst;
input [7:0] d_in;
output reg [7:0] d_out;

always @(posedge clkS or posedge rst) 
	if(rst) d_out <= 8'b0;
	else d_out <= d_in;

endmodule
