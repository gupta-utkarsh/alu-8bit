`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:07:48 10/29/2016
// Design Name:   adder_8_bit_with_overflow
// Module Name:   E:/Verilog Assignment/alu-8bit/adder_8_bit_with_overflow_test.v
// Project Name:  alu_8_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_8_bit_with_overflow
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_8_bit_with_overflow_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] sum;
	wire c_out;
	wire overflow;

	integer i;
	// Instantiate the Unit Under Test (UUT)
	adder_8_bit_with_overflow uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.c_out(c_out), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
	end
	
	initial
		$monitor( "a(%b) + b(%b) = carry sum overflow(%b %b %b)", a, b, c_out, sum, overflow );
	
	always @(a or b) begin
			for ( i = 0; i < 16*16*16*16; i=i+1 )
				#1 {a,b} = i;
	end
      
endmodule

