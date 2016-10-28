`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:44:19 10/28/2016
// Design Name:   fulladder_1_bit
// Module Name:   E:/Verilog Assignment/alu-8bit/fulladder_1_bit_test.v
// Project Name:  alu_8_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder_1_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladder_1_bit_test;

	// Inputs
	reg a;
	reg b;
	reg c_in;
	
	//Outputs
	wire s;
	wire c_out;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	fulladder_1_bit uut (
		.a(a),
		.b(b),
		.c_in(c_in),
		.s(s),
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 0;
	end

	always @ (a, b, c_in) begin
		
		//generate truth table
		for (i = 0; i < 8; i = i + 1)
			// every 10 ns set a, b, and cin to the binary rep. of i
			begin	
				#10 {a, b, c_in} = i;
				$monitor("%d ns: a + b + cin = %b + %b + %b = cout sum = %b %b",
								$time, a, b, c_in, c_out, s );
			end
			// Wait 100 ns for global reset to finish
		#10 $stop;
	
	end
      
endmodule

