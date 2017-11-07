`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/06 09:01:26
// Design Name: 
// Module Name: DataCompare8_tb
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


module DataCompare8_tb();
reg [7:0] iData_a;
reg [7:0] iData_b;
wire [2:0] oData;

DataCompare8 uut(
.iData_a(iData_a),
.iData_b(iData_b),
.oData(oData)
);

initial
begin
iData_a = 8'b1010_0110;
iData_b = 8'b1111_1111;
# 20 iData_b = 8'b1001_0010;
# 20 iData_b = 8'b1101_0110;
# 20 iData_b = 8'b1010_0110;
end

endmodule
