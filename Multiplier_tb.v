`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 02:37:27 PM
// Design Name: 
// Module Name: Multiplier_tb
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


module Multiplier_tb();
    reg clk;
    reg rst;
    reg [2:0] adr1_r, adr2_r, adr_ram;
    wire [7:0] result;
    wire [2:0] st_out;
    
    Multiplier_top dut(clk, rst, adr1_r, adr2_r, adr_ram, result, st_out);
    initial begin
    clk = 0;
        forever #2 clk = ~clk;
    end
    
    initial begin
    #10 rst = 1; adr1_r = 3; adr2_r = 2; adr_ram = 1;    
    #10 rst = 0; adr1_r = 3; adr2_r = 2; adr_ram = 1;
    #10 rst = 0; adr1_r = 3; adr2_r = 2; adr_ram = 1;
    #10 rst = 0; adr1_r = 3; adr2_r = 2; adr_ram = 1;
    #10 rst = 0; adr1_r = 3; adr2_r = 2; adr_ram = 1;

    #10 $stop;
   
    end
endmodule
