//tb for winograd
`timescale 1ns / 1ps
module tb;
reg  [10*6-1:0] D;
reg  clk, rst;
wire [10*2-1:0] Z;

wc DUT_WC(.clk(clk),
			.rst(rst),
			.D(D),
			.Z(Z)
			);

always #5 clk=~clk;
initial
begin
$dumpfile("WC.vcd");
$dumpvars(0,DUT_WC);
end
initial

begin
clk = 0;
D = 0;
rst = 1;
#10 rst = 0;

D = 60'b0000000010_1111110110_0000000011_0000000100_1111110011_1111101110;

#60;
//input1 = [  2 -10   3   4 -13 -18]
//result1 = [  63 -211]
if (Z == 20'b0000111111_1100101101)
	$display("PASS !!");
else
	$display("FAIL !!");
#10;
D = 60'b1111101101_1111111010_0000000011_1111110111_1111110100_0000001011;

#60;
//input2 = [-19  -6   3  -9 -12  11]
//result2 = [-136 -213]

if (Z == 20'b1101111000_1100101011)
	$display("PASS !!");
else
	$display("FAIL !!");
#10;

#50 $finish;
end
endmodule
