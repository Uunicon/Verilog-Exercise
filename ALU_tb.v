`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/04 19:53:00
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
reg [31:0] a;
reg [31:0] b;
reg [3:0] aluc;
wire [31:0] r;
wire zero;
wire carry;
wire negative;
wire overflow;

alu uut(
.a(a),
.b(b),
.aluc(aluc),
.r(r),
.zero(zero),
.carry(carry),
.negative(negative),
.overflow(overflow)
);

initial      
begin
   a <= 32'h0000_0005;
   b <= 32'hffff_000f;
end
    
initial      
begin
   aluc <= 4'b0000;
   #20 aluc <= 4'b0010;
   #20 aluc <= 4'b0001;
   #20 aluc <= 4'b0011;
   #20 aluc <= 4'b0100;
   #20 aluc <= 4'b0101;
   #20 aluc <= 4'b0110;
   #20 aluc <= 4'b0111;
   #20 aluc <= 4'b1001;
   #20 aluc <= 4'b1011;
   #20 aluc <= 4'b1010;
   #20 aluc <= 4'b1100;
   #20 aluc <= 4'b1111;
   #20 aluc <= 4'b1101;
end
    
endmodule
