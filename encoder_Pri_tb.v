`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/23 09:31:28
// Design Name: 
// Module Name: encoder_Pri_tb
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


module encoder_Pri_tb();
 reg [7:0] iData;
 reg iEI;
 wire [2:0] oData;
 wire oEO;
 
 encoder83_Pri uut(
 .iData(iData),
 .iEI(iEI),
 .oData(oData),
 .oEO(oEO)
 );
 
 initial
 begin
    iEI=1'b1;
    #80 iEI=1'b0; 
 end
 
 initial
  begin
  iData <= 8'bxxxx_xxx0;
  #10 iData <= 8'bxxxx_xx01;
  #10 iData <= 8'bxxxx_x011;
  #10 iData <= 8'bxxxx_0111;
  #10 iData <= 8'bxxx0_1111;
  #10 iData <= 8'bxx01_1111;
  #10 iData <= 8'bx011_1111;
  #10 iData <= 8'b0111_1111;
  #10 iData <= 8'bxxxx_xxx0;
  #10 iData <= 8'bxxxx_xx01;
   #10 iData <= 8'bxxxx_x011;
   #10 iData <= 8'bxxxx_0111;
   #10 iData <= 8'bxxx0_1111;
   #10 iData <= 8'bxx01_1111;
   #10 iData <= 8'bx011_1111;
   #10 iData <= 8'b0111_1111;
  end
endmodule
