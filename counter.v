module counter(clkF,rst,data);
	input clkF,rst;
	output reg [7:0] data;	

	always @(posedge clkF or posedge rst) 
		if(rst) data <= 8'b0;
		else data <= data + 8'b1;
			
endmodule
