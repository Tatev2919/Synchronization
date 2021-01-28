module synch_tb;
	reg clkF,clkS,rst;
	wire [7:0] out;	
	top t1 (clkS,clkF,rst,out);
	
	initial begin 
		$dumpfile("v.vcd");
		$dumpvars();
		#5000;
		$finish;
	end

	initial fork 
		clkF = 1'b0;
		clkS = 1'b0;
		rst = 1'b1;
		#25 rst = 1'b0;
		forever #4 clkF <= ~clkF;
		begin
			forever #31 clkS <= ~clkS;
		end
	join 
	
endmodule 
