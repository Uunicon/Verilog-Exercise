`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/23 08:12:22
// Design Name: 
// Module Name: display7
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


module display7_tb();
  reg [3:0] iData;
  wire [6:0] oData;

display7 uut(
.iData(iData),
.oData(oData)
);

  initial
  begin
  iData <= 4'b0000;
  #20 iData <= 4'b0001;
  #20 iData <= 4'b0010;
  #20 iData <= 4'b0011;
  #20 iData <= 4'b0100;
  #20 iData <= 4'b0101;
  #20 iData <= 4'b0110;
  #20 iData <= 4'b0111;
  #20 iData <= 4'b1000;
  #20 iData <= 4'b1001;
  end
endmodule
