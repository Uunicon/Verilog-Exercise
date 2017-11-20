`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/20 08:13:16
// Design Name: 
// Module Name: Counter8
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


module Counter8(
    input CLK,
    input rst_n,
    output wire [2:0] oQ,
    output wire [6:0] oDisplay
    );
wire temp;
    JK_FF J0(
    .CLK(CLK),
    .RST_n(rst_n),
    .J(1'b1),
    .K(1'b1),
    .Q1(oQ[0])
    );
    
     JK_FF J1(
       .CLK(CLK),
       .RST_n(rst_n),
       .J(oQ[0]),
       .K(oQ[0]),
       .Q1(oQ[1])
       );
       
     and (temp,oQ[0],oQ[1]);
     
     JK_FF J2(
        .CLK(CLK),
        .RST_n(rst_n),
        .J(temp),
        .K(temp),
        .Q1(oQ[2])
         );
         
     display7 D(
     .iData(oQ),
     .oData(oDisplay)
     );
endmodule
