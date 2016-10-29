`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 
// and_8_bit.v - AND Module

module and_8_bit(
	input [7:0] a,
	input [7:0] b,
	output reg [7:0] op
);

	integer i;
	
	always @(*) begin
		for(i=0; i<8; i=i+1) begin
			op[i] = a[i] & b[i];
		end
	end

endmodule
