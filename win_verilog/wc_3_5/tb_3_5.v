//tb for winograd
`timescale 1ns / 1ps
module tb;
reg  [10*7-1:0] D;
reg  clk, rst;
wire [10*3-1:0] Z;

WC DUT_WC(.clk(clk),
			.rst(rst),
			.D(D),
			.Z(Z)
			);

always #5 clk=~clk;
initial
begin
$fsdbDumpfile("WC.fsdb");
$fsdbDumpvars(0,DUT_WC);
end
initial

begin
clk = 0;
D = 0;
rst = 1;
#10 rst = 0;

D = 70'b0000000010_1111110110_0000000011_0000000100_1111110011_1111101110_1111110000;

#60;
//input1 = [  2 -10   3   4 -13 -18 -16]
//result1 = [  74 -180 -311]
if (Z == 30'b0001001010_1101001100_1011001001)
	begin
	$display("---------------------------------------------");
	$display("PASS !!");
	end
else
	begin
	$display("---------------------------------------------");
	$display("FAIL !!");
	end
#10;
D = 70'b1111101101_1111111010_0000000011_1111110111_1111110100_0000001011_1111111100;

#60;
//input2 = [-19  -6   3  -9 -12  11  -4]
//result2 = [-166 -274   14]

if (Z == 30'b1101011010_1011101110_0000001110)
	begin
	$display("PASS !!");
	$display("---------------------------------------------");
	end
else
	begin
	$display("FAIL !!");
	$display("---------------------------------------------");
	end
#10;

#50 $finish;
end
endmodule
