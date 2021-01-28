module receiver(clkS,rst,d_in,synch_signal,d_out);
input clkS,rst,synch_signal;
input [7:0] d_in;
output reg [7:0] d_out;

always @(*) 
	if(rst) d_out <= 8'b0;
	else begin
		if(synch_signal == 1'b1) begin
			d_out <= d_in;
		end
	end
endmodule
