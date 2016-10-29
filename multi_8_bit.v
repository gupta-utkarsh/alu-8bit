`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 
// multi_8_bit.v - Booth Multiplier Module

module multi_8_bit(
	//a : multiplicand
	//b : multiplier
	//p : product
	input [7:0] a,
	input [7:0] b,
	output reg [15:0] p
);
	reg [16:0] tmp_a, tmp_a_2comp, tmp_p;
	reg [7:0] a_2comp;
	integer i;
	
	always @(*) begin
		//Calculating the two's complement of the multiplicand.
		a_2comp = ((~ a) + 1'b1);
		tmp_a = {a, 9'b000000000};
		tmp_a_2comp = {a_2comp, 9'b000000000};
		
		//Temporary product initial value
		tmp_p = {8'b00000000, b, 1'b0};		
		
		for(i=0; i<8; i=i+1) begin
			case(tmp_p[1:0])
				2'b00 : tmp_p = { tmp_p[16], tmp_p[16:1] };
				2'b01 : begin
							tmp_p = tmp_p + tmp_a;
							tmp_p = { tmp_p[16], tmp_p[16:1] };
						  end
				2'b11 : tmp_p = { tmp_p[16], tmp_p[16:1] };
				2'b10 : begin
							tmp_p = tmp_p + tmp_a_2comp;
							tmp_p = { tmp_p[16], tmp_p[16:1] };
						  end
				default : tmp_p = 17'bx;
			endcase	
		end
		
		assign p = tmp_p[16:1];
	end	
endmodule
