`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/04 08:12:27
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0] a,
    input [31:0] b,
    input [3:0] aluc,
    output reg [31:0] r,
    output reg zero,
    output reg carry,
    output reg negative,
    output reg overflow
    );
    wire signed [31:0]a1;
    wire signed [31:0]b1;
    assign a1 = a ;
    assign b1 = b ;
    
    wire [31:0] r_addu;       //无符号+
    assign r_addu = a + b;
    wire [31:0] r_add;       //有符号+
    assign r_add = a1 + b1;
    wire [31:0] r_subu;      //无符号-
    assign r_subu= a - b;
    wire [31:0] r_sub;      //有符号-
    assign r_sub = a1 - b1;
    wire [31:0] r_and;      //and
    assign r_and = a & b;
    wire [31:0] r_or;      //or
    assign r_or = a | b;
    wire [31:0] r_xor;     //xor
    assign r_xor = a ^ b;
    wire [31:0] r_nor;    //nor
    assign r_nor =~( a | b );
    wire [31:0] r_lui;    //高位置立即数
    assign r_lui = {b[15:0],16'b0};
    wire [31:0] r_slt;   //slt
    assign r_slt = (a1<b1)?1:0;
    wire [31:0] r_sltu;  //sltu
    assign r_sltu = (a<b)?1:0;
    wire [31:0] r_sra;  //算数右移
    reg [31:0] r_sra_t;
    assign r_sra = b>>>a;
    
    wire [31:0] r_sll;  //逻辑左移
    reg [31:0] r_sll_t;
    assign r_sll = b<<a;
    
    wire [31:0] r_srl;  //逻辑右移
    reg [31:0] r_srl_t;
    assign r_srl = b>>a;
    
    reg [32:0] an,bn,cn;   //无符号数
    always @ (*)
      begin
      an={1'b0,a[31:0]}; //无符号数，将a,b扩展成33位，直接+/-
      bn={1'b0,b[31:0]};
         case(aluc)
           4'b0000:begin   //无符号+
                     r <= r_addu;
                     if(r_addu == 0)
                       zero <= 1'b1;
                     else
                       zero <= 1'b0;
                     cn <= an + bn;  //计算carry位
                     carry <= cn[32];
                     negative <= r_addu[31];
                     overflow <= 1'bz;
                   end
           4'b0010:begin   //有符号+
                     r <= r_add;
                     if(r_add == 0)
                       zero <= 1'b1;
                     else
                       zero <= 1'b0;
                     carry <= 1'bz;
                     negative <= r_add[31];
                     //判断是否溢出
                     if( a1[31]== 1 && b1[31]==1 && r_add[31] == 0)
                        overflow <= 1'b1;
                     else if ( a1[31]== 0 && b1[31]==0 && r_add[31] == 1)
                        overflow <= 1'b1;
                     else
                        overflow <= 1'b0;
                   end
           4'b0001:begin   //无符号-
                     r <= r_subu;
                     if(r_subu == 0)
                       zero <= 1'b1;
                     else
                       zero <= 1'b0;
                     cn <= an - bn;  //计算carry位
                     carry <= cn[32];
                     negative <= r_subu[31];
                     overflow <= 1'bz;
                   end           
           4'b0011:begin   //有符号-
                   r <= r_sub;
                   if(r_sub == 0)
                     zero <= 1'b1;
                   else
                     zero <= 1'b0;
                   carry <= 1'bz;                  
                   negative <= r_sub[31];
                    //判断是否溢出
                   if( a1[31]== 0 && b1[31]==1 && r_add[31] == 1)//正-负=负
                     overflow <= 1'b1;
                   else if ( a1[31]== 1 && b1[31]==0 && r_add[31] == 0)//负-正=正
                     overflow <= 1'b1;
                   else
                     overflow <= 1'b0;
                   end   
           4'b0100:begin  //and
                   r <= r_and;
                   if(r_and == 0)
                     zero <= 1'b1;
                   else
                     zero <= 1'b0;
                   carry <= 1'bz;
                   negative <= r_and[31];
                   overflow <= 1'bz;
                   end     
           4'b0101:begin  //or
                   r <= r_or;
                   if(r_or == 0)
                      zero <= 1'b1;
                   else
                      zero <= 1'b0;
                   carry <= 1'bz;
                   negative <= r_or[31];
                   overflow <= 1'bz;
                   end    
           4'b0110:begin  //xor
                   r <= r_xor;
                   if(r_xor == 0)
                     zero <= 1'b1;
                   else
                     zero <= 1'b0;
                   carry <= 1'bz;
                   negative <= r_xor[31];
                   overflow <= 1'bz;
                   end  
           4'b0111:begin  //nor
                   r <= r_nor;
                   if(r_nor == 0)
                     zero <= 1'b1;
                   else
                     zero <= 1'b0;
                   carry <= 1'bz;
                   negative <= r_nor[31];
                   overflow <= 1'bz;
                   end  
           4'b100x:begin  //lui
                   r <= r_lui;
                   if(r_lui == 0)
                     zero <= 1'b1;
                   else
                     zero <= 1'b0;
                   carry <= 1'bz;
                   negative <= r_lui[31];
                   overflow <= 1'bz;
                   end   
           4'b1011:begin  //slt
                   r <= r_slt;
                   if(r_slt == 0)
                     zero <= 1'b1;
                   else
                     zero <= 1'b0;
                   carry <= 1'bz;
                   overflow <= r_slt[31];
                   if (a1-b1<0)
                     negative <= 1'b1;
                   else
                     negative <= 1'b0;
                   end    
           4'b1010:begin  //sltu
                   r <= r_sltu;
                   if(r_sltu == 0)
                     zero <= 1'b1;
                   else
                     zero <= 1'b0;
                   carry <= 1'bz;
                   negative <= r_sltu[31];
                   overflow <= 1'bz;
                   end           
           4'b1100:begin  //sra
                   r <= r_sra;
                   if(r_sra == 0)
                     zero <= 1'b1;
                   else
                   zero <= 1'b0;
                   r_sra_t = b>>>(a-1); //算数右移，少移一位 
                                        //末位即在下一次移入标志位
                   carry <= r_sra_t[0];
                   negative <= r_sra[31];
                   overflow <= 1'bz;
                   end  
            4'b111x:begin  //sll/slr
                    r <= r_sll;
                    if(r_sll == 0)
                      zero <= 1'b1;
                    else
                    zero <= 1'b0;
                    r_sll_t = b<<(a-1); //少移一位 
                    carry <= r_sll_t[0];
                    negative <= r_sll[31];
                    overflow <= 1'bz;
                    end    
             4'b1101:begin  //srl
                     r <= r_srl;
                     if(r_srl == 0)
                       zero <= 1'b1;
                     else
                     zero <= 1'b0;
                     r_srl_t = b>>(a-1); //少移一位 
                     carry <= r_srl_t[0];
                     negative <= r_srl[31];
                     overflow <= 1'bz;
                     end                                
         endcase
      end
     
endmodule
