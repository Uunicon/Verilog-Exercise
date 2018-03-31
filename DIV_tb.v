`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/28 21:03:38
// Design Name: 
// Module Name: DIV_tb
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


module DIV_tb();
reg [31:0] dividend;
reg [31:0] divisor;
reg start;
reg clock;
reg reset;
wire [31:0] q;
wire [31:0] r;
wire busy;

DIV uut(
.dividend(dividend),
.divisor(divisor),
.start(start),
.clock(clock),
.reset(reset),
.q(q),
.r(r),
.busy(busy)
);

initial
begin
  clock = 1'b1;
  forever #5 clock =~clock;
end

initial 
begin
start= 1'b0;
#20 start= 1'b1;
#380 start= 1'b0;
#20 start= 1'b1;
#380 start= 1'b0;
#20 start= 1'b1;

end

initial 
begin
reset= 1'b1;
#10 reset= 1'b0;
#390 reset= 1'b1;
#10 reset= 1'b0;
#390 reset= 1'b1;
#10 reset= 1'b0;
end

initial 
begin
dividend= 32'd0;
#400 dividend= 32'hffff_ffff;
#400 divisor= 32'h7fff_ffff;
end

initial 
begin
divisor= 32'd5555_5555;
#400 divisor= 32'hffff_ffff;
#400 divisor= 32'hffff_ffff;
end

endmodule
