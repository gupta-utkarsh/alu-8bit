`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:21:38 10/29/2016 
// Design Name: 
// Module Name:    multi_8_bit 
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
module multi_8_bit(
	//a : multiplicand
	//b : multiplier
	//p : product
	input [7:0] a,
	input [7:0] b,
	output [15:0] p
);
	reg [16:0] tmp_a, tmp_a_2comp, tmp_p;
	reg [7:0] a_2comp;

	always @(a or b) begin
		//Calculating the two's complement of the multiplicand.
		a_2comp = ((~ a) + 1'b1);
		tmp_a = {a, 5'b00000};
		tmp_a_2comp = {a_2comp, 5'b00000};
		
		//Temporary product initial value
		tmp_p = {4'b0000, b, 1'b0};		
		
		
	
	end	
	
		
	
endmodule
