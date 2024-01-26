//tb for winograd
`timescale 1ns / 1ps
module tb;
reg  [10*8-1:0] D;
reg  clk, rst;
wire [10*4-1:0] Z;

wc DUT_WC(.clk(clk),
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

D = 80'b0000000010_1111110110_0000000011_0000000100_1111110011_1111101110_1111110000_1111100100;

#60;
//input1 = [  2 -10   3   4 -13 -18 -16 -28]
//result1 = [  15 -139 -420 -344]
if (Z == 40'b0000001111_1101110101_1001011100_1010101000)
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
D = 80'b1111101101_1111111010_0000000011_1111110111_1111110100_0000001011_1111111100_0000000000;

#60;
//input2 = [-19  -6   3  -9 -12  11  -4   0]
//result2 = [-223 -277  -63  -49]

if (Z == 40'b1100100001_1011101011_1111000001_1111001111)
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
