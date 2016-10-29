`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 

module multi_8_bit_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [15:0] p;

	// Instantiate the Unit Under Test (UUT)
	multi_8_bit uut (
		.a(a), 
		.b(b), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
	end
	
	initial
		$monitor( "a(%b) * b(%b) = product(%b)", a, b, p );
	
	always @(a or b) begin
			#100 {a,b} = 278;
			#200 {a,b} = 1802;
	end
      
endmodule

