//tb for winograd
`timescale 1ns / 1ps
module tb;
reg  [10*8-1:0] D;
reg  clk, rst;
wire [10*5-1:0] Z;

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

D = 80'b0000000010_1111110110_0000000011_0000000100_1111110011_1111101110_1111110000_1111100100;

#60;
//input1 = [  2 -10   3   4 -13 -18 -16 -28]
//result1 = [  62  -42 -223 -242  -41]
if (Z == 50'b0000111110_1111010110_1100100001_1100001110_1111010111)
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
//result2 = [-183 -290 -182  -83 -570]

if (Z == 50'b1101001001_1011011110_1101001010_1110101101_0111000110)
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
