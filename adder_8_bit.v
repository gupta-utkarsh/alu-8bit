`timescale 1ns / 1ps

// GroupID-73(15116003_15116066) - Abhimanyu Bambhaniya & Utkarsh Gupta 
// Date: October 27, 2016 
// adder_8_bit.v - 8 bit Full Adder Module

module adder_8_bit(
	input [7:0] a,
	input [7:0] b,
	output [7:0] sum,
	output c_out
);
	wire c_in;
	assign c_in = 1'b0;
	fulladder_1_bit f0( .a( a[0] ), .b( b[0] ), .c_in( c_in ), .s( sum[0]), .c_out( ripple0 ) );
	fulladder_1_bit f1( .a( a[1] ), .b( b[1] ), .c_in( ripple0 ), .s( sum[1]), .c_out(ripple1) );
	fulladder_1_bit f2( .a( a[2] ), .b( b[2] ), .c_in( ripple1 ), .s( sum[2]), .c_out(ripple2) );
	fulladder_1_bit f3( .a( a[3] ), .b( b[3] ), .c_in( ripple2 ), .s( sum[3]), .c_out(ripple3) );
	fulladder_1_bit f4( .a( a[4] ), .b( b[4] ), .c_in( ripple3 ), .s( sum[4]), .c_out(ripple4) );
	fulladder_1_bit f5( .a( a[5] ), .b( b[5] ), .c_in( ripple4 ), .s( sum[5]), .c_out(ripple5) );
	fulladder_1_bit f6( .a( a[6] ), .b( b[6] ), .c_in( ripple5 ), .s( sum[6]), .c_out(ripple6) );
	fulladder_1_bit f7( .a( a[7] ), .b( b[7] ), .c_in( ripple6 ), .s( sum[7]), .c_out(c_out) );
endmodule
