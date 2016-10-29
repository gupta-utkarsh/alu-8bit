`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 

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
