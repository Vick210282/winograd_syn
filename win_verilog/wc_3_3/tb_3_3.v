//tb for winograd
`timescale 1ns / 1ps
module tb;
reg  [10*5-1:0] D;
reg  clk, rst;
wire [10*3-1:0] Z;

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

D = 50'b0000000010_1111110110_0000000011_0000000100_1111110011;

#60;
//input1 = [  2 -10   3   4 -13]
//result1 = [  50   16 -126]
if (Z == 30'b0000110010_0000010000_1110000010)
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
D = 50'b1111101101_1111111010_0000000011_1111110111_1111110100;

#60;
//input2 = [-19  -6   3  -9 -12]
//result2 = [ -34 -150 -147]

if (Z == 30'b1111011110_1101101010_1101101101)
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
