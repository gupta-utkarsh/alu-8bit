`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 
// adder_8_bit_with_overflow.v - Adder Module combined with Overflow Module

module adder_8_bit_with_overflow(
	input [7:0] a,
	input [7:0] b,
	output [7:0] sum,
	output c_out,
	output overflow
);
	wire [7:0] temp_sum;
	wire [7:0] overflow_extend;
	
	adder_8_bit x1( .a(a), .b(b), .sum(temp_sum), .c_out(c_out) ); 
	overflow_detection x2( .a_last_bit( a[7] ), .b_last_bit( b[7] ), .sum_last_bit( temp_sum[7] ), .overflow(overflow) );
	
	assign overflow_extend = { {7{overflow}}, overflow};
	
	assign sum = ((~overflow_extend) & temp_sum); 
	
endmodule
