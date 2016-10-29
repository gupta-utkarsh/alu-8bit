`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:25 10/29/2016 
// Design Name: 
// Module Name:    alu_with_register_file 
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
