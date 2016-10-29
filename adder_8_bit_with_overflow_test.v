`timescale 1ns / 1ps

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

