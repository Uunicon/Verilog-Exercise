`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/21 21:35:49
// Design Name: 
// Module Name: MULT_tb
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


module MULT_tb();
reg clk,reset;
reg [31:0] a;
reg [31:0] b;
wire [63:0] z;

MULT uut(
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
#40 reset= 1'b1;
#200 reset= 1'b0;
#40 reset= 1'b1;

end

initial 
begin
a= 32'b11111111_11111111_11111111_11111011;
#200 a= 32'd10;
end

initial 
begin
b= 32'b11111111_11111111_11111111_11111011;
#200 b= 32'b00000000_00000000_00000000_00000101;
end

endmodule
