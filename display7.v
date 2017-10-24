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
    input [3:0] iData,
    output reg [6:0] oData
    );
    always @ (*)
      begin
       case(iData)
         4'd0:oData=7'b100_0000;
         4'd1:oData=7'b111_1001;
         4'd2:oData=7'b010_0100;
         4'd3:oData=7'b011_0000;
         4'd4:oData=7'b001_1001;
         4'd5:oData=7'b001_0010;
         4'd6:oData=7'b000_0010;
         4'd7:oData=7'b111_1000;
         4'd8:oData=7'b000_0000;
         4'd9:oData=7'b001_0000;
         default:oData=7'bZZZ_ZZZZ;
       endcase
      end
endmodule
