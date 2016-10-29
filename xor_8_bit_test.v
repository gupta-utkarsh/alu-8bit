`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 
// xor_8_bit_test.v - Test Bench for XOR module.

module xor_8_bit_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] op;

	// Instantiate the Unit Under Test (UUT)
	xor_8_bit uut (
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

