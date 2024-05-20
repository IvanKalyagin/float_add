`include "Addition-Subtraction.v"

module float_add
(
	input  		  clk,
	input  [31:0] A, 
	input  [31:0] B,
	input  		  valid,
	output [31:0] s_data,
	output  	  s_valid	 
);
	
	wire Exception;
	Addition_Subtraction sum(
		.a_operand(A), .b_operand(B), .AddBar_Sub(1'd0), .Exception(Exception), .result(s_data)
	);

	assign s_valid = valid; 
		
endmodule