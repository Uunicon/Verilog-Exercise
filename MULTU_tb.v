`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/20 21:06:12
// Design Name: 
// Module Name: MULTU
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


module MULTU_tb();
reg clk,reset;
reg [31:0] a;
reg [31:0] b;
wire [63:0] z;

MULTU uut(
.clk(clk),
.reset(reset),
.a(a),
.b(b),
.z(z)
);

initial
begin
  clk = 1'b1;
  forever #10 clk =~clk;
end

initial 
begin
reset= 1'b0;
#50 reset= 1'b1;

end

initial 
begin
a= 32'd10;
#600 a= 32'd20;
#600 a= 32'd100;
#600 a= 32'd0;
end

initial 
begin
b= 32'd10;
#600 b= 32'd20;
#600 b= 32'd100;
#600 b= 32'd50;
end

endmodule
