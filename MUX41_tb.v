`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/15 16:39:40
// Design Name: 
// Module Name: MUX41_tb
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


module MUX41_tb();
   reg [3:0] ic0;
   reg [3:0] ic1;
   reg [3:0] ic2;
   reg [3:0] ic3;
   reg is1,is0;
   wire [3:0] oz;
   
    MUX41 tb(
    .ic0(ic0),
    .ic1(ic1),
    .ic2(ic2),
    .ic3(ic3),
    .is1(is1),
    .is0(is0),
    .oz(oz)
    );
   
   initial       
     begin
     is0= 0;
     #80 is0 = 1;
     #80 is0 = 0;
     end
   
   initial      //³õÊ¼is1¼¤Àø
      begin
      is1= 0;
      #40 is1 = 1;
      #40 is1 = 0;
      #40 is1 = 1;
      #40 is1 = 0;
      end
      
      initial
        begin
        ic0 <=4'b0001;
        ic1 <=4'b0010;
        ic2 <=4'b0011;
        ic3 <=4'b0100;
        end

    
endmodule
