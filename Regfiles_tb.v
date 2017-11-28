`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/28 19:53:26
// Design Name: 
// Module Name: Regfiles_tb
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


module Regfiles_tb();
reg clk;
reg rst;
reg we;
reg [4:0] raddr1;
reg [4:0] raddr2;
reg [4:0] waddr;
reg [31:0] wdata;
wire [31:0] rdata1;
wire [31:0] rdata2;

Regfiles uut(
.clk(clk),
.rst(rst),
.we(we),
.raddr1(raddr1),
.raddr2(raddr2),
.waddr(waddr),
.wdata(wdata),
.rdata1(rdata1),
.rdata2(rdata2)
);

initial
begin
  clk = 1'b0;
  forever #10 clk =~clk;
end

initial
begin
  we = 1'b1;
  forever #20 we =~we;
end

initial
begin
  rst = 1'b1;
   #50 rst =~rst;
end

initial
begin
  raddr1 <= 5'd3;
  #80 raddr1 <= 5'd6;
  #80 raddr1 <= 5'd9;
  #80 raddr1 <= 5'd12;
end

initial
begin
  raddr2 <= 5'd12;
  #80 raddr2 <= 5'd6;
  #80 raddr2 <= 5'd9;
  #80 raddr2 <= 5'd6;
end

initial
begin
  waddr <= 5'd3;
  #80 waddr <= 5'd6;
  #40 waddr <= 5'd9;
  #40 waddr <= 5'd6;
  #40 waddr <= 5'd3;
  #40 waddr <= 5'd9;
end

initial
begin
  wdata <= 32'hffff_ffff;
  #120 wdata <= 32'h0000_ffff;
  #120 wdata <= 32'h0000_0000;
end
endmodule
