`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/23 07:58:29
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


module display7(
    input [2:0] iData,
    output reg [6:0] oData
    );
    always @ (*)
      begin
       case(iData)
         3'd0:oData=7'b100_0000;
         3'd1:oData=7'b111_1001;
         3'd2:oData=7'b010_0100;
         3'd3:oData=7'b011_0000;
         3'd4:oData=7'b001_1001;
         3'd5:oData=7'b001_0010;
         3'd6:oData=7'b000_0010;
         3'd7:oData=7'b111_1000;
         default:oData=7'bZZZ_ZZZZ;
       endcase
      end
endmodule
