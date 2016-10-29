`timescale 1ns / 1ps

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
		instruction = 26'b11011011100011001000000000;
		clock = 0;
	end
	
	always
		#30 clock = !clock; 
      
endmodule

