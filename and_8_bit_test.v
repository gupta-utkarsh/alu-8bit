`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:08:25 10/29/2016
// Design Name:   and_8_bit
// Module Name:   E:/Verilog Assignment/alu-8bit/and_8_bit_test.v
// Project Name:  alu_8_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: and_8_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module and_8_bit_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] op;

	// Instantiate the Unit Under Test (UUT)
	and_8_bit uut (
		.a(a), 
		.b(b), 
		.op(op)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
	end
	
	initial
		$monitor( "a(%b) & b(%b) = product(%b)", a, b, op );
	
	always @(a or b) begin
			#100 {a,b} = 278;
			#200 {a,b} = 1802;
	end
	
	
      
endmodule

