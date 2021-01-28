module interface(
	rst,synch_signal,data_in,clkF,out
);

input rst,synch_signal,clkF;
input [7:0] data_in;
output reg [7:0] out;
 
reg [7:0] data_in_r;
always @(posedge clkF or posedge rst) begin 
	if(rst) begin 
		data_in_r <= 8'b0;
		out <= 8'b0;	
	end
	else begin 
		if(synch_signal)
			data_in_r <= data_in;
		out <= data_in_r; 
	end
end

endmodule
