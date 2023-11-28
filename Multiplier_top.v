`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 02:20:05 PM
// Design Name: 
// Module Name: Multiplier_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Multiplier_top(clk,rst,adr1_r,adr2_r,adr_ram,result,st_out);
input clk, rst;
input [2:0] adr1_r;
input [2:0] adr2_r;
input [2:0] adr_ram;
output [7:0] result;
output [2:0] st_out;
wire [2:0] adr;
wire [3:0] d;
wire w_rf, w_ram;
wire DA,SA,SB;
wire [3:0]ABus, BBus;
wire [7:0]product;

	
rom uut1 (d, adr);
cu uut4(clk, rst, adr1_r, adr2_r, w_rf, adr, DA, SA, SB, st_out, w_ram);
RF uut5(ABus, BBus, SA, SB, d, DA, w_rf, rst, clk);
multiplier uut2(product, ABus, BBus);
ram uut3(clk, rst, w_ram, adr_ram, product, result);
endmodule
