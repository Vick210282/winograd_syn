//tb for winograd
`timescale 1ns / 1ps
module tb;
reg  [10*9-1:0] D;
reg  clk, rst;
wire [10*5-1:0] Z;

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

D = 90'b0000000010_1111110110_0000000011_0000000100_1111110011_1111101110_1111110000_1111100100_1111110101;

#60;
//input1 = [  2 -10   3   4 -13 -18 -16 -28 -11]
//result1 = [  160  -380  -502 -1421 -4100]
if (Z == 50'b0010100000_1010000100_1000001010_1001110011_1111111100)
	$display("PASS !!");
else
	$display("FAIL !!");
#10;
D = 90'b1111101101_1111111010_0000000011_1111110111_1111110100_0000001011_1111111100_0000000000_1111111001;

#60;
//input2 = [-19  -6   3  -9 -12  11  -4   0  -7]
//result2 = [  93 -120  346  947 3640]

if (Z == 50'b0001011101_1110001000_0101011010_1110110011_111000111000)
	$display("PASS !!");
else
	$display("FAIL !!");
#10;

#50 $finish;
end
endmodule
