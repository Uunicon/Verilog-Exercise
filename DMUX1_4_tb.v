`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/16 12:26:19
// Design Name: 
// Module Name: DMUX4_1_tb
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


module DMUX4_1_tb();
   reg ic,is1,is0;
   wire oz0,oz1,oz2,oz3;
   
   dmux1_4 uut(
   .ic(ic),
   .is0(is0),
   .is1(is1),
   .oz0(oz0),
   .oz1(oz1),
   .oz2(oz2),
   .oz3(oz3)
   );
   
   initial       //³õÊ¼is0¼¤Àø
     begin
     is1= 0;
     #80 is1 = 1;
     #80 is1 = 0;
     end
   
   initial      //³õÊ¼is1¼¤Àø
      begins
      is0= 0;
      #40 is0 = 1;
      #40 is0 = 0;s
      #40 is0 = 1;
      #40 is0 = 0;
      end
   
   initial
      begin
      ic = 1;
      end   
      
endmodule
