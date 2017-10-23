`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/22 21:21:12
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();
  reg [2:0] iData;
  reg [1:0] iEna;
  wire [7:0] oData;
  
  decoder uut(
  .iData(iData),
  .iEna(iEna),
  .oData(oData)
  );
  
    initial        //³õÊ¼iEna¼¤Àø
    begin         
    iEna <= 2'b11;
    #20  iEna <= 2'b10;
    end
    
    initial
    begin
    iData <= 3'b000;
    #40 iData <= 3'b001;
    #20 iData <= 3'b010;
    #20 iData <= 3'b011;
    #20 iData <= 3'b100;
    #20 iData <= 3'b101;
    #20 iData <= 3'b110;
    #20 iData <= 3'b111;
    end
endmodule
