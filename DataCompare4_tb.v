`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/06 08:17:05
// Design Name: 
// Module Name: DataCompare4_tb
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


module DataCompare4_tb();
reg [3:0] iData_a;
reg [3:0] iData_b;
reg [2:0] iData;
wire [2:0] oData; 

DataCompare4 uut(
.iData_a(iData_a),
.iData_b(iData_b),
.iData(iData),
.oData(oData)
);

initial
begin
iData_a = 4'b0110;
iData_b = 4'b1111;
# 20 iData_b = 4'b0010;
# 20 iData_b = 4'b0110;
end

initial
begin
iData = 3'b100;
#20 iData = 3'b010;
#20 iData = 3'b001;
#20 iData = 3'b100;
#20 iData = 3'b010;
#20 iData = 3'b001;
end
endmodule
