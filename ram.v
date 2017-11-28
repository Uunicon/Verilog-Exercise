`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/27 13:36:00
// Design Name: 
// Module Name: ram
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


module ram(
    input clk,
    input ena,
    input wena,
    input [4:0] addr,
    input [31:0] data_in,
    output reg [31:0] data_out
    );
    reg [31:0] mem[0:31];
    initial  //初始化ram
     
    always @ (posedge clk or posedge ena or negedge ena )
    begin
      if(!ena) data_out= 32'hzzzz_zzzz;
      else
        begin
          if(wena)  //写有效
           mem[addr]<=data_in;
          else      //读有效
           data_out<=mem[addr];
        end
    end
endmodule
