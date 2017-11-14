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
    input clk,
    input rst,
    input ena,
    input q1,
    output reg q2
    );
    always @ (posedge clk or negedge rst or posedge rst)
        begin
          if(rst)
            q2 = 0;
          else
            begin
            if(ena)
            q2 = q1;
            else
            q2 = 0;
            end
        end
endmodule
