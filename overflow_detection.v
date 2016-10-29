`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 
// overflow_detection.v - Overflow Detection Module

module overflow_detection(
		input  a_last_bit,
		input  b_last_bit,
		input sum_last_bit,
		output reg overflow
);
		reg x, y;
		
		always @(*) begin
			x = a_last_bit ^ b_last_bit;
			y = b_last_bit ^ sum_last_bit;
			
			if(x)	overflow <= 1'b0;
			else if(!y)	overflow <= 1'b0;
			else overflow <= 1'b1;
		end

endmodule
