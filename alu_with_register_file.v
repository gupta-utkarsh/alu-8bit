`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 
// alu_with_register_file.v - The Overall ALU Block

module alu_with_register_file(
	input [25:0] instruction,
	input clock,
	output [15:0] out,
	output overflow,
	output c_out
);
	wire [7:0] a, b, y;
	reg_file x1( .clock(clock), .data( instruction[23:0] ), .result( out ), .a(a), .b(b), .y(y) );
	alu x2( .a(a), .b(b), .op_code( instruction[25:24] ), .out(out), .overflow(overflow), .c_out(c_out) );
	
endmodule
