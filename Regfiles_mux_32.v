`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/28 16:22:20
// Design Name: 
// Module Name: mux_32
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


module mux_32(
    input [31:0] data_out0,
    input [31:0] data_out1,
    input [31:0] data_out2,
    input [31:0] data_out3,
    input [31:0] data_out4,
    input [31:0] data_out5,
    input [31:0] data_out6,
    input [31:0] data_out7,
    input [31:0] data_out8,
    input [31:0] data_out9,
    input [31:0] data_out10,
    input [31:0] data_out11,
    input [31:0] data_out12,
    input [31:0] data_out13,
    input [31:0] data_out14,
    input [31:0] data_out15,
    input [31:0] data_out16,
    input [31:0] data_out17,
    input [31:0] data_out18,
    input [31:0] data_out19,
    input [31:0] data_out20,
    input [31:0] data_out21,
    input [31:0] data_out22,
    input [31:0] data_out23,
    input [31:0] data_out24,
    input [31:0] data_out25,
    input [31:0] data_out26,
    input [31:0] data_out27,
    input [31:0] data_out28,
    input [31:0] data_out29,
    input [31:0] data_out30,
    input [31:0] data_out31,
    input [4:0] raddr,
    input we,
    output reg [31:0] rdata
    );
     always @ (*)
            begin
            if ( we==1 ) rdata=32'hz;
            else
             begin
               case(raddr)
              5'd0: rdata = data_out0;
              5'd1: rdata = data_out1;
              5'd2: rdata = data_out2;
              5'd3: rdata = data_out3;
              5'd4: rdata = data_out4;
              5'd5: rdata = data_out5;
              5'd6: rdata = data_out6;
              5'd7: rdata = data_out7;
              5'd8: rdata = data_out8;
              5'd9: rdata = data_out9;
              5'd10: rdata = data_out10;
              5'd11: rdata = data_out11;
              5'd12: rdata = data_out12;
              5'd13: rdata = data_out13;
              5'd14: rdata = data_out14;
              5'd15: rdata = data_out15;
              5'd16: rdata = data_out16;
              5'd17: rdata = data_out17;
              5'd18: rdata = data_out18;
              5'd19: rdata = data_out19;
              5'd20: rdata = data_out20;
              5'd21: rdata = data_out21;
              5'd22: rdata = data_out22;
              5'd23: rdata = data_out23;
              5'd24: rdata = data_out24;
              5'd25: rdata = data_out15;
              5'd26: rdata = data_out26;
              5'd27: rdata = data_out27;
              5'd28: rdata = data_out28;
              5'd29: rdata = data_out29;
              5'd30: rdata = data_out30;
              5'd31: rdata = data_out31;
              endcase
             end
           end
    
endmodule
