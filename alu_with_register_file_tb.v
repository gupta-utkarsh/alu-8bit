`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:04:21 10/29/2016
// Design Name:   alu_with_register_file
// Module Name:   E:/Verilog Assignment/alu-8bit/alu_with_register_file_tb.v
// Project Name:  alu_8_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_with_register_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_with_register_file_tb;

	// Inputs
	reg [25:0] instruction;
	reg clock;

	// Outputs
	wire [15:0] out;
	wire overflow;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	alu_with_register_file uut (
		.instruction(instruction), 
		.clock(clock), 
		.out(out), 
		.overflow(overflow), 
		.c_out(c_out)
	);

	initial begin
		instruction = 26'b00011011100011001000000000;
		clock = 0;
	end
	
	always
		#30 clock = !clock; 
      
endmodule

