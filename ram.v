`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 01:39:13 PM
// Design Name: 
// Module Name: ram
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

module ram(i_clk, i_rst, i_write_en, i_addr, i_write_data, o_read_data);
input i_clk, i_rst, i_write_en;
input [2:0] i_addr;
input [7:0] i_write_data;
output reg [7:0] o_read_data;
reg[7:0] mem[0:7];
integer i;
always @ (posedge i_clk) begin
    if(i_rst) begin
        for(i=0; i<8; i=i+1) begin
            mem[i] <= 0;
        end
    end
    else begin
        if(i_write_en)
            mem[i_addr] <= i_write_data;
        else
            o_read_data <= mem[i_addr];
        end
    end
endmodule