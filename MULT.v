`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/21 19:37:49
// Design Name: 
// Module Name: MULT
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


module MULT(
input clk,
    input reset,
    input [31:0] a,
    input [31:0] b,
    output [63:0] z
    );
// …Í«Îºƒ¥Ê∆˜
    reg [32:0] HI;
    reg [31:0] LO;
    reg [32:0] temp;
    reg [32:0] plus;
    integer i;
always @(posedge clk or negedge reset)
begin
    // reset ÷√¡„
    if(!reset) 
      begin
        HI <= 0;
        LO <= 0;
        temp <= 0;
      end
    else
      begin
      HI = 0;
      LO = b;
      temp = {LO,1'b0};
      plus = {a[31],a}; 
      //—≠ª∑
      for(i=0;i<32;i=i+1) begin
      if(temp[1:0] == 2'b10)  HI = HI -  plus ;   
      else if(temp[1:0] == 2'b01)HI = HI + plus;
      else  HI=HI ;
      temp={HI[0],temp[32:1]};
      HI = {HI[32],HI[32:1]};
      end//end for
end //end else

end
assign z = {HI[31:0],temp[32:1]};
endmodule
