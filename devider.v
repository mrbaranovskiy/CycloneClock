module  devider 
#(parameter pulseOn=32'h000F423F) 
	(
		input        i_clk,
		output reg   o_clk
	);

reg [23:0] clk_divide = 0;
initial o_clk = 0;
	
always @(posedge i_clk) begin
  if (clk_divide == pulseOn)  
   begin
     clk_divide <= 0;  
     o_clk <= ~o_clk;        
   end

  else  
   begin  
     clk_divide <= clk_divide + 1; 
    end
  end

endmodule