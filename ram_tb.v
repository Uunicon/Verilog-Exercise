`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/27 14:04:43
// Design Name: 
// Module Name: ram_tb
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


module ram_tb();
reg clk;
reg ena;
reg wena;
reg [4:0] addr;
reg [31:0] data_in;
wire [31:0] data_out;

ram uut(
.clk(clk),
.ena(ena),
.wena(wena),
.addr(addr),
.data_in(data_in),
.data_out(data_out)
);

initial
begin
  clk = 1'b0;
  forever #5 clk =~clk;
end

initial
begin
  ena = 1'b0;
  #30 ena = 1'b1;
end

initial
begin
  addr = 5'b0_0001;
end

initial
begin
  wena = 1'b0;
  #60 wena = 1'b1;
  #20 wena = 1'b0;
  #60 wena = 1'b1;
  #20 wena = 1'b0;
end

initial
begin
  data_in = 32'hffff_ffff;
  #80 data_in = 32'h0000_0000;
end
endmodule
