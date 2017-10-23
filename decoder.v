`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/22 21:19:46
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [2:0] iData,
    input [1:0] iEna,
    output reg [7:0] oData
    );
    always @(*)
        begin
          if(iEna!=2'b10)
            oData=8'b1111_1111;
          else
           case(iData)
             3'd0: oData = 8'b1111_1110;
             3'd1: oData = 8'b1111_1101;
             3'd2: oData = 8'b1111_1011;
             3'd3: oData = 8'b1111_0111;
             3'd4: oData = 8'b1110_1111;
             3'd5: oData = 8'b1101_1111;
             3'd6: oData = 8'b1011_1111;
             3'd7: oData = 8'b0111_1111;
           endcase
        end
endmodule
