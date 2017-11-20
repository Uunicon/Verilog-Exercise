`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/20 09:27:31
// Design Name: 
// Module Name: Divider8_tb
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


module Divider_tb();
reg I_CLK;
reg Rst;
wire O_CLK;

Divider uut(
.I_CLK(I_CLK),
.Rst(Rst),
.O_CLK(O_CLK)
);

initial
begin
  I_CLK = 1'b0;
  forever #5 I_CLK =~I_CLK;
end

initial
begin
  Rst = 1'b1;
  #20 Rst = 1'b0;
end

endmodule
