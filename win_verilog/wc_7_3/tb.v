//tb for winograd
`timescale 1ns / 1ps
module tb;
reg  [10*9-1:0] D;
reg  clk, rst;
wire [10*7-1:0] Z;

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

D = 90'b0000000010_1111110110_0000000011_0000000100_1111110011_1111101110_1111110000_1111100100_1111110101;

#60;
//input1 = [  2 -10   3   4 -13 -18 -16 -28 -11]
//result1 = [  -87   249  -155   396  -214   433 -5272]
if (Z == 70'b1110101001_0011111001_1101100101_0110001100_1100101010_0110110001_1101101000)
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
D = 90'b1111101101_1111111010_0000000011_1111110111_1111110100_0000001011_1111111100_0000000000_1111111001;

#60;
//input2 = [-19  -6   3  -9 -12  11  -4   0  -7]
//result2 = [ 133  -20 -232 -189 -442 -232 3977]

if (Z == 70'b0010000101_1111101100_1100011000_1101000011_1001000110_1100011000_111110001001)
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
