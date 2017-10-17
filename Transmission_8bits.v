`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/17 19:00:55
// Design Name: 
// Module Name: transmission8
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


module transmission8(
    input [7:0] iData,
    input A,
    input B,
    input C,
    output reg [7:0] oData
    );
    reg temp;
     always @ (*)
            begin
              case({A,B,C})
              3'b000: temp <= iData[0];
              3'b001: temp <= iData[1];
              3'b010: temp <= iData[2];
              3'b011: temp <= iData[3];
              3'b100: temp <= iData[4];
              3'b101: temp <= iData[5];
              3'b110: temp <= iData[6];
              3'b111: temp <= iData[7];
              endcase
            end
     always @ (*)
          begin
              case({A,B,C})
              3'b000: {oData[0],oData[1],oData[2],oData[3],oData[4],oData[5],oData[6],oData[7]}={temp,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
              3'b001: {oData[0],oData[1],oData[2],oData[3],oData[4],oData[5],oData[6],oData[7]}={1'b0,temp,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
              3'b010: {oData[0],oData[1],oData[2],oData[3],oData[4],oData[5],oData[6],oData[7]}={1'b0,1'b0,temp,1'b0,1'b0,1'b0,1'b0,1'b0};
              3'b011: {oData[0],oData[1],oData[2],oData[3],oData[4],oData[5],oData[6],oData[7]}={1'b0,1'b0,1'b0,temp,1'b0,1'b0,1'b0,1'b0};
              3'b100: {oData[0],oData[1],oData[2],oData[3],oData[4],oData[5],oData[6],oData[7]}={1'b0,1'b0,1'b0,1'b0,temp,1'b0,1'b0,1'b0};
              3'b101: {oData[0],oData[1],oData[2],oData[3],oData[4],oData[5],oData[6],oData[7]}={1'b0,1'b0,1'b0,1'b0,1'b0,temp,1'b0,1'b0};
              3'b110: {oData[0],oData[1],oData[2],oData[3],oData[4],oData[5],oData[6],oData[7]}={1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,temp,1'b0};
              3'b111: {oData[0],oData[1],oData[2],oData[3],oData[4],oData[5],oData[6],oData[7]}={1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,temp};
              endcase
          end
endmodule
