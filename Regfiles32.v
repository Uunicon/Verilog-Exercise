`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/28 15:03:27
// Design Name: 
// Module Name: Regfiles
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


module Regfiles(
    input clk,
    input rst,
    input we,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input [4:0] waddr,
    input [31:0] wdata,
    output wire [31:0] rdata1,
    output wire [31:0] rdata2
    );
    wire [31:0] ena_d;  //寄存器堆使能
    wire [31:0] data_in;
    wire [31:0] data_out [0:31];   //32个 32位的数据
    
    assign data_in = wdata;
    
 //5_32译码器
    decoder_32 decoder(
    .waddr(waddr),  //写寄存器的地址
    .we(we),       //译码器使能
    .ena_d(ena_d)  //输出对应 寄存器堆使能
    );

//32个32位寄存器
genvar j;
generate 
   for(j = 0 ;j<32 ; j=j+1 ) begin   
    pcreg r(
      .data_out(data_out[j]),
      .rst(rst),
      .ena(ena_d[j]),
      .clk(clk),
      .data_in(data_in)
      );
    end
endgenerate  

//32位 32选一多路复用器
   mux_32 mux1(
   .data_out0(data_out[0]),
   .data_out1(data_out[1]),
   .data_out2(data_out[2]),
   .data_out3(data_out[3]),
   .data_out4(data_out[4]),
   .data_out5(data_out[5]),
   .data_out6(data_out[6]),
   .data_out7(data_out[7]),
   .data_out8(data_out[8]),
   .data_out9(data_out[9]),
   .data_out10(data_out[10]),
   .data_out11(data_out[11]),
   .data_out12(data_out[12]),
   .data_out13(data_out[13]),
   .data_out14(data_out[14]),
   .data_out15(data_out[15]),
   .data_out16(data_out[16]),
   .data_out17(data_out[17]),
   .data_out18(data_out[18]),
   .data_out19(data_out[19]),
   .data_out20(data_out[20]),
   .data_out21(data_out[21]),
   .data_out22(data_out[22]),
   .data_out23(data_out[23]),
   .data_out24(data_out[24]),
   .data_out25(data_out[25]),
   .data_out26(data_out[26]),
   .data_out27(data_out[27]),
   .data_out28(data_out[28]),
   .data_out29(data_out[29]),
   .data_out30(data_out[30]),
   .data_out31(data_out[31]),
   .raddr(raddr1),
   .we(we),
   .rdata(rdata1)
   );
   
   //32位 32选一多路复用器
      mux_32 mux2(
      .data_out0(data_out[0]),
      .data_out1(data_out[1]),
      .data_out2(data_out[2]),
      .data_out3(data_out[3]),
      .data_out4(data_out[4]),
      .data_out5(data_out[5]),
      .data_out6(data_out[6]),
      .data_out7(data_out[7]),
      .data_out8(data_out[8]),
      .data_out9(data_out[9]),
      .data_out10(data_out[10]),
      .data_out11(data_out[11]),
      .data_out12(data_out[12]),
      .data_out13(data_out[13]),
      .data_out14(data_out[14]),
      .data_out15(data_out[15]),
      .data_out16(data_out[16]),
      .data_out17(data_out[17]),
      .data_out18(data_out[18]),
      .data_out19(data_out[19]),
      .data_out20(data_out[20]),
      .data_out21(data_out[21]),
      .data_out22(data_out[22]),
      .data_out23(data_out[23]),
      .data_out24(data_out[24]),
      .data_out25(data_out[25]),
      .data_out26(data_out[26]),
      .data_out27(data_out[27]),
      .data_out28(data_out[28]),
      .data_out29(data_out[29]),
      .data_out30(data_out[30]),
      .data_out31(data_out[31]),
      .raddr(raddr2),
      .we(we),
      .rdata(rdata2)
      );
endmodule
