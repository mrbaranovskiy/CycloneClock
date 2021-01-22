module CycloneClock(input wire m_clk, input rst, output wire [6:0] o_clock [0:3]);

	wire o_devider;
	reg [32:0] numTicks;
	wire [32:0] ticks;
	wire [3:0] seg_output [0:3];
	
	assign ticks[32:0] = numTicks[32:0];
	
	devider div (.i_clk(m_clk), .o_clk(o_devider));
	
		defparam div.pulseOn = 10;
	
	counter cnt(o_devider, rst, ticks);
	
		defparam cnt.SIZE = 32;
	
	   clock_2_7seg s_nums(ticks[31:0], {seg_output[3],seg_output[2],seg_output[1],seg_output[0]});
		
		assign o_clock[0] = seg_output[0];
		assign o_clock[1] = seg_output[1];
		assign o_clock[2] = seg_output[2];
		assign o_clock[3] = seg_output[3];

endmodule