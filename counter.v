module counter #(parameter SIZE = 8) 
(
	input c_iclk,
	input rst,
	output reg [SIZE:0] r_num
);

initial r_num = 0;
 

always @ (posedge c_iclk) begin : counter_logic
	
	
	if(r_num[SIZE]) 
		r_num <= 0;
	else if(rst) 
	   r_num <=0;
	else
		r_num <= r_num + 1;
	
end

endmodule