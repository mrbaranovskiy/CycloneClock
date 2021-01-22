`timescale 1ns/10ps

module CycloneClock_tb();

	reg clk;
	
	initial clk = 0;
	
	always #5 clk = ~clk;
	
	CycloneClock clock(clk);

endmodule
