`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/20 08:08:12
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(
    input CLK,
    input J,
    input K,
    input RST_n,
    output reg Q1
    );
    reg [1:0] JK;
         always @ (posedge CLK or negedge RST_n or negedge RST_n)
           begin
           JK = {J,K};
           if(RST_n == 0)  Q1 <= 0;
           else
             begin
               case(JK)
                 2'b01: Q1 <= 0;
                 2'b10: Q1 <= 1;
                 2'b11: Q1 = ~Q1;
               endcase
             end
           end
endmodule
