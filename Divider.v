`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/20 09:13:50
// Design Name: 
// Module Name: Divider
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


module Divider(
    input I_CLK,
    input Rst,
    output reg O_CLK
    );
parameter t = 20;
reg [4:0]k=0;
    always @ (posedge I_CLK)
    begin
    if(Rst == 1'b1) O_CLK <= 1'b0;
    else
    begin
       if(k >= t)
         begin
         O_CLK <= ~O_CLK;
         k <= 0;
         end
       else
         k <= k+1;
       end
    end
endmodule
