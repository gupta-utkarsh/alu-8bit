`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:08:24 10/29/2016
// Design Name:   adder_8_bit
// Module Name:   E:/Verilog Assignment/alu-8bit/adder_8_bit_test.v
// Project Name:  alu_8_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_8_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_8_bit_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] sum;
	wire c_out;

	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	adder_8_bit uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
	end
	
	initial
		$monitor( "a(%b) + b(%b) = carry sum(%b %b)", a, b, c_out, sum );
	
	always @(a or b) begin
			for ( i = 0; i < 16*16*16*16; i=i+1 )
				#1 {a,b} = i;
	end
	
endmodule
