module synch(
	rst,clkF,clkS,synch_signal
);

input rst,clkF,clkS;
output synch_signal;

reg clk_inv,synch_signal1,synch_signal2,synch_signal3;

always @(posedge clkF or posedge rst) begin
	if(rst) begin 
		synch_signal1 <= 1'b0;
		synch_signal2 <= 1'b0;
		synch_signal3 <= 1'b0;
	end
	else begin 
		synch_signal1 <= clk_inv;
		synch_signal2 <= synch_signal1;
		synch_signal3 <= synch_signal2;
	end
end
always @(posedge clkS or posedge rst) begin 
	if(rst) clk_inv <= 1'b0;
	else clk_inv <= ~clk_inv;
end

assign synch_signal = (synch_signal2^synch_signal3);

endmodule

