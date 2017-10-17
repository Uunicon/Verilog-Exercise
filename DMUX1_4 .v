`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/16 08:12:03
// Design Name: 
// Module Name: dmux1_4
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


module dmux1_4(ic, //�����ź�c
is1, //ѡ���ź�s1
is0, //ѡ���ź�s0
oz0, //����ź�z0
oz1, //����ź�z1
oz2, //����ź�z2
oz3 );//����ź�z3);
input ic,is1,is0;
output reg oz0,oz1,oz2,oz3;
 always @ (*)
        begin
          case({is1,is0})
          2'b00: {oz0,oz1,oz2,oz3}={ic,1'b0,1'b0,1'b0};
          2'b01: {oz0,oz1,oz2,oz3}={1'b0,ic,1'b0,1'b0};
          2'b10: {oz0,oz1,oz2,oz3}={1'b0,1'b0,ic,1'b0};
          2'b11: {oz0,oz1,oz2,oz3}={1'b0,1'b0,1'b0,ic};
          endcase
        end
endmodule
