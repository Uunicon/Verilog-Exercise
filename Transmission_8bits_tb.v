`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/17 19:23:53
// Design Name: 
// Module Name: transmission8_tb
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


module transmission8_tb();
   reg [7:0] iData;
   reg A,B,C;
   wire [7:0]oData;
   
   transmission8 uut(
   .iData(iData),
   .A(A),
   .B(B),
   .C(C),
   .oData(oData)
   );
   initial      //³õÊ¼A¼¤Àø
         begin
         A = 0;
         #40 A = 1;
         #40 A = 0;
         #40 A = 1;
         #40 A = 0;
    end
    
    initial      //³õÊ¼B¼¤Àø
          begin
          B= 0;
          #80 B = 1;
          #80 B = 0;
    end
    initial      //³õÊ¼C¼¤Àø
           begin
           C = 0;
           #20 C = 1;
           #40 C = 0;
           #40 C = 1;
           #40 C = 0;
   end
   initial
         begin
         iData = 8'b1111_1111;
   end   
endmodule
