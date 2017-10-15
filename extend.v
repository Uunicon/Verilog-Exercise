`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/09/26 18:07:40
// Design Name: 
// Module Name: extend
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


module extend #(parameter WIDTH = 16)(
   input [WIDTH-1:0] a, //�������ݣ����ݿ�ȿ��Ը�����Ҫ���ж���
   input sext, //sext ��ЧΪ������չ������0 ��չ
   output [31:0]b //32 λ�������
   );
   assign b=sext? {{(32-WIDTH){a[WIDTH-1]}},a} : {27'b0,a};
endmodule
