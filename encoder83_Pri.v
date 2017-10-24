`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/23 09:21:01
// Design Name: 
// Module Name: encoder83_Pri
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


module encoder83_Pri(
    input [7:0] iData,
    input iEI,
    output reg [2:0] oData,
    output reg oEO
    );
    always @ (*)
    begin
      if(iEI)
           {oData,oEO} <= 4'b111_0;
      else if(!iData[7]) {oData,oEO} <= 4'b000_1;
      else if(!iData[6]) {oData,oEO} <= 4'b001_1;
      else if(!iData[5]) {oData,oEO} <= 4'b010_1;
      else if(!iData[4]) {oData,oEO} <= 4'b011_1;
      else if(!iData[3]) {oData,oEO} <= 4'b100_1;
      else if(!iData[2]) {oData,oEO} <= 4'b101_1;
      else if(!iData[1]) {oData,oEO} <= 4'b110_1;
      else               {oData,oEO} <= 4'b111_1;
    end
endmodule
