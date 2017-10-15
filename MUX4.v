`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/15 11:04:23
// Design Name: 
// Module Name: MUX41
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


module MUX41(
    input [3:0] ic0,
    input [3:0] ic1,
    input [3:0] ic2,
    input [3:0] ic3,
    input is0,
    input is1,
    output [3:0] oz
    );
    reg oz;
         always @ (*)
         begin
           case({is1,is0})
           2'b00: oz = ic0;
           2'b01: oz = ic1;
           2'b10: oz = ic2;
           2'b11: oz = ic3;
           default: oz = 1'bx; 
           endcase
         end
endmodule
