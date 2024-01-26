//tb for winograd
`timescale 1ns / 1ps
module tb;
reg  [10*8-1:0] D;
reg  clk, rst;
wire [10*6-1:0] Z;

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

D = 80'b0000000010_1111110110_0000000011_0000000100_1111110011_1111101110_1111110000_1111100100;

#60;
//input1 = [  2 -10   3   4 -13 -18 -16 -28]
//result1 = [   34   -28  -170  -502  -264 -1642]
if (Z == 60'b0000100010_1111100100_1101010110_1000001010_1011111000_0110010110)
	$display("PASS !!");
else
	$display("FAIL !!");
#10;
D = 80'b1111101101_1111111010_0000000011_1111110111_1111110100_0000001011_1111111100_0000000000;

#60;
//input2 = [-19  -6   3  -9 -12  11  -4   0]
//result2 = [  11  -56 -117  350   16 1033]

if (Z == 60'b0000001011_1111001000_1110001011_0101011110_0000010000_10000001001)
	$display("PASS !!");
else
	$display("FAIL !!");
#10;

#50 $finish;
end
endmodule
