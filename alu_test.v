`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 

module alu_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg [1:0] op_code;

	// Outputs
	wire [15:0] out;
	wire overflow;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.op_code(op_code), 
		.out(out), 
		.overflow(overflow), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		op_code = 0;

	end

	always @(a or b) begin
		#100 a = 45; b = 61; op_code = 2'b00;
		#200 a = 45; b = 61; op_code = 2'b01;
		#300 a = 45; b = 61; op_code = 2'b11;
		#300 a = 45; b = 61; op_code = 2'b10;
	end
      
endmodule

