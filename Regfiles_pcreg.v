`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 18:25:10
// Design Name: 
// Module Name: pcreg
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


module pcreg(   //32λ�Ĵ���
    input clk,
    input rst,
    input ena,
    input [31:0] data_in,
    output wire [31:0] data_out
    );
 genvar i;
 generate 
   for(i = 0 ;i<32 ; i=i+1 ) begin
    Asynchronous_D_FF D(
        .q2(data_out[i]),
        .clk(clk),
        .rst(rst),
        .ena(ena),
        .q1(data_in[i]));
   end
   endgenerate
   
   
endmodule
