module clock_2_7seg (input clk, input [31:0] i_counter, output reg [3:0][6:0] r_segments);

		wire w_seg_multi;
		
		devider div2 (clk, w_seg_multi);
		defparam div2.pulseOn = 100000;
		
		genvar i;
	
		
		generate for(i = 0; i < 4; i = i + 1) begin : generate_block
				segment7(w_seg_multi, r_segments[i]);
				end
		endgenerate
			
		
	
endmodule 

