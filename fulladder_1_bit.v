`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:27:05 10/28/2016 
// Design Name: 
// Module Name:    fulladder_1_bit 
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
module fulladder_1_bit(
	input a, b, c_in,
	output s, c_out
);	
	assign s = a ^ b ^ c_in;
	assign c_out = ((a ^ b) & c_in) | (a & b);
endmodule
