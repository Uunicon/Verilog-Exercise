`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/30 09:35:12
// Design Name: 
// Module Name: barrelshifter32_tb
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


module barrelshifter32_tb();
reg [31:0] a;
reg [4:0] b;
reg[1:0] aluc;
wire [31:0]c;

barrelshifter32 uut(
.a(a),
.b(b),
.aluc(aluc),
.c(c)
);

initial
begin
a = 32'hffff_0000;
b = 5'b1010;
#80 b = 5'b10000;
#80 b = 5'b0100;
end

initial
begin
aluc = 2'b00;
#20 aluc = 2'b01;
#20 aluc = 2'b10;
#20 aluc = 2'b11;

#20 aluc = 2'b00;
#20 aluc = 2'b01;
#20 aluc = 2'b10;
#20 aluc = 2'b11;

#20 aluc = 2'b00;
#20 aluc = 2'b01;
#20 aluc = 2'b10;
#20 aluc = 2'b11;
end
endmodule
