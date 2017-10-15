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
   input [WIDTH-1:0] a, //输入数据，数据宽度可以根据需要自行定义
   input sext, //sext 有效为符号扩展，否则0 扩展
   output [31:0]b //32 位输出数据
   );
   assign b=sext? {{(32-WIDTH){a[WIDTH-1]}},a} : {27'b0,a};
endmodule
