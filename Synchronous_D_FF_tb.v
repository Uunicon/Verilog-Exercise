`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/13 08:12:41
// Design Name: 
// Module Name: Synchronou_D_FF
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


module Synchronou_D_FF_tb();
reg CLK;
reg D;
reg RST_n;
wire Q1;
wire Q2;

Synchronous_D_FF uut(
.CLK(CLK),
.D(D),
.RST_n(RST_n),
.Q1(Q1),
.Q2(Q2)
);

initial
begin
  CLK = 1'b0;
  forever #10 CLK =~CLK;
end

initial
begin
D = 1'b1;
#60 D=~D;
#20 D=~D;
#40 D=~D;
end

initial 
begin
RST_n= 1'b1;
#20 RST_n= 1'b0;
#14 RST_n= 1'b1;
end

endmodule
