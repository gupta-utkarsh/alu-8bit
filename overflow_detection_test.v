`timescale 1ns / 1ps

module overflow_detection_test;

	// Inputs
	reg a_last_bit;
	reg b_last_bit;
	reg sum_last_bit;

	// Outputs
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	overflow_detection uut (
		.a_last_bit(a_last_bit), 
		.b_last_bit(b_last_bit), 
		.sum_last_bit(sum_last_bit), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		a_last_bit = 0;
		b_last_bit = 0;
		sum_last_bit = 1;
		#100;
      a_last_bit = 0;
		b_last_bit = 1;
		sum_last_bit = 1;
		#100;
      a_last_bit = 1;
		b_last_bit = 0;
		sum_last_bit = 1;
		#100;
      a_last_bit = 1;
		b_last_bit = 1;
		sum_last_bit = 1;
		#100;
      a_last_bit = 0;
		b_last_bit = 0;
		sum_last_bit = 0;
		#100;
      a_last_bit = 1;
		b_last_bit = 0;
		sum_last_bit = 0;
		#100;
      a_last_bit = 0;
		b_last_bit = 1;
		sum_last_bit = 0;
		#100;
		a_last_bit = 1;
		b_last_bit = 1;
		sum_last_bit = 0;
		#100;
      
      
        
	end
      
endmodule

