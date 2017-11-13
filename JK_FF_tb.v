`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/13 19:40:37
// Design Name: 
// Module Name: JK_FF_tb
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


module JK_FF_tb();
reg CLK;
reg J;
reg K;
reg RST_n;
wire Q1;
wire Q2;

JK_FF uut(
.CLK(CLK),
.J(J),
.K(K),
.RST_n(RST_n),
.Q1(Q1),
.Q2(Q2)
);

initial
begin
  CLK = 1'b0;
  forever #5 CLK =~CLK;
end

initial
begin
  J = 1'b1;
  forever #20 J =~J;
end

initial
begin
  K = 1'b0;
  forever #10 K =~K;
end

initial 
begin
RST_n= 1'b1;
#20 RST_n= 1'b0;
#23 RST_n= 1'b1;
#40 RST_n= 1'b0;
#25 RST_n= 1'b1;
end


endmodule
