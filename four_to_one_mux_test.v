`timescale 1ns / 1ps

module four_to_one_mux_test;

	// Inputs
	reg [1:0] opcode;
	reg [7:0] add_answer;
	reg [15:0] mul_answer;
	reg [7:0] and_answer;
	reg [7:0] xor_answer;

	// Outputs
	wire [15:0] final_answer;

	// Instantiate the Unit Under Test (UUT)
	four_to_one_mux uut (
		.opcode(opcode), 
		.add_answer(add_answer), 
		.mul_answer(mul_answer), 
		.and_answer(and_answer), 
		.xor_answer(xor_answer), 
		.final_answer(final_answer)
	);

	initial begin
		// Initialize Inputs
		opcode = 00;
		add_answer = 10;
		mul_answer = 11;
		and_answer = 12;
		xor_answer = 13;
		#100;
      opcode = 01;
		add_answer = 10;
		mul_answer = 11;
		and_answer = 12;
		xor_answer = 13;
		
		#100;
      opcode = 10;
		add_answer = 10;
		mul_answer = 11;
		and_answer = 12;
		xor_answer = 13;
		#100;
      opcode = 11;
		add_answer = 10;
		mul_answer = 11;
		and_answer = 12;
		xor_answer = 13;
		#100;

	end
      
endmodule

