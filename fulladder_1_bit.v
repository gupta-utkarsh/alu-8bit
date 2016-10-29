`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 
// fulladder_1_bit.v - 1 Bit Full Adder

module fulladder_1_bit(
	input a, b, c_in,
	output s, c_out
);	
	assign s = a ^ b ^ c_in;
	assign c_out = ((a ^ b) & c_in) | (a & b);
endmodule
