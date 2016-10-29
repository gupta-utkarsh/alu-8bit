`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:28 10/29/2016 
// Design Name: 
// Module Name:    reg_file 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module reg_file(
   input clock,
	input [23:0] data,
	input [15:0] result,
	output reg [7:0] a,
	output reg [7:0] b,
	output reg [7:0] y
);
	reg [7:0] reg_a, reg_b, reg_y;
	
	integer flag = 0;
	reg en_write = 1'b0;
	
	always @(posedge clock) begin
		if(flag)
			en_write = 1'b1;
			
		reg_a = data[23:16];
		
		if(en_write) begin
			reg_b = result[15:8];
			reg_y = result[7:0];
		end
		else begin
			reg_b = data[15:8];
			reg_y = data[7:0];
			flag = 1;
		end
		if(en_write == 1'b0) begin
			a = reg_a[7:0];
			b = reg_b[7:0];
		end
		y = reg_y;
	end

endmodule
