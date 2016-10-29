`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:02 10/29/2016 
// Design Name: 
// Module Name:    alu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(
	input [7:0] a,
	input [7:0] b,
	input [1:0] op_code,
	output [15:0] out,
	output overflow,
	output c_out
);
	wire [7:0] add_result;
	wire [7:0] and_result;
	wire [15:0] mult_result;
	wire [7:0] xor_result;
	adder_8_bit_with_overflow x1( .a(a), .b(b), .sum(add_result), .c_out(c_out), .overflow(overflow) );
	and_8_bit x2( .a(a), .b(b), .op(and_result) );
	multi_8_bit x3( .a(a), .b(b), .p(mult_result) );
	xor_8_bit x4( .a(a), .b(b), .op(xor_result) );
	four_to_one_mux x5( .opcode(op_code), .add_answer(add_result), .mul_answer(mult_result), .xor_answer(xor_result), .and_answer(and_result), .final_answer(out) );
	
endmodule
