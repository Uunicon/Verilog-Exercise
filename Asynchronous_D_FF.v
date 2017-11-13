`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/13 09:07:00
// Design Name: 
// Module Name: Asynchronous_D_FF
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


module Asynchronous_D_FF(
    input CLK,
    input D,
    input RST_n,
    output reg Q1,
    output reg Q2
    );
    always @ (posedge CLK or negedge RST_n)
        begin
          if(RST_n == 0) 
             begin
             Q1 <= 0;
             Q2 <= 1;
             end
          else
             begin
             Q1 <= D;
             Q2 <= ~D;
             end
        end
endmodule
