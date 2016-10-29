`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 

module reg_file_test;

	// Inputs
	reg clock;
	reg [23:0] data;
	reg [15:0] result;
	
	// Outputs
	
	wire [7:0] a;
	wire [7:0] b;
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	reg_file uut (
		.clock(clock),
		.data(data),
		.result(result),
		.a(a),
		.b(b),
		.y(y)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		data = 8371901;
		result = 0;

		#200
			result =  16'b0000000000110101;
		#300 $stop;
	end
	
	always
		#30 clock = !clock; 
      
endmodule

