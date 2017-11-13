`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/13 19:26:06
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(
    input CLK,
    input J,
    input K,
    input RST_n,
    output reg Q1,
    output reg Q2
    );
    reg [1:0] JK;
     always @ (posedge CLK or negedge RST_n)
       begin
       JK = {J,K};
       if(RST_n == 0) 
         begin
           Q1 <= 0;
           Q2 <= 1;
         end
       else
         begin
           case(JK)
             2'b01:begin
                   Q1 <= 0;
                   Q2 <= 1;
                   end
             2'b10:begin
                   Q1 <= 1;
                   Q2 <= 0;
                   end
             2'b11:begin
                   Q1 = ~Q1;
                   Q2 = ~Q2;
                   end
           endcase
         end
       end
endmodule
