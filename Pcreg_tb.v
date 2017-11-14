`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 16:07:20
// Design Name: 
// Module Name: pcreg_tb
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


module pcreg_tb();
reg clk;
reg rst;
reg ena;
reg [31:0] data_in;
wire [31:0] data_out;

pcreg uut(
.clk(clk),
.rst(rst),
.ena(ena),
.data_in(data_in),
.data_out(data_out)
);

initial
begin
  clk = 1'b0;
  forever #10 clk =~clk;
end

initial
begin
  ena = 1'b1;
  #40 ena =~ena;
  #40 ena =~ena;
end

initial
begin
  rst = 1'b0;
  forever #20 rst =~rst;
end

initial
begin
  data_in = 32'h0000_0000;
  #20 data_in = 32'h0000_000f;
  #20 data_in = 32'h0000_00ff;
  #20 data_in = 32'h0000_0fff;
  #20 data_in = 32'h0000_ffff;
  #20 data_in = 32'h000f_ffff;
  #20 data_in = 32'h00ff_ffff;
  #20 data_in = 32'h0fff_ffff;
  #20 data_in = 32'hffff_ffff;
end

endmodule
