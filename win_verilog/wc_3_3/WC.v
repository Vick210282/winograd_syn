// WC.v generated by WCSyn.py
`timescale 1ns / 1ps
module WC(D, clk, rst, Z);
input  [10*5-1:0] D;
input  clk, rst;
output reg [10*3-1:0] Z;

	reg [9:0] input_t [0:4];
	reg [9:0] d [0:24];
	reg [9:0] MUL [0:4];
	reg [9:0] output_t [0:2];

	always@(posedge clk)begin

		//input_transform
		d[24] <= (D[9:0]);
		d[23] <= (~D[19:10] + 1) <<< 1;
		d[22] <= (~D[29:20] + 1);
		d[21] <= (D[39:30]) <<< 1;
		d[20] <= 0;
		d[19] <= 0;
		d[18] <= (D[19:10]);
		d[17] <= 0;
		d[16] <= (~D[39:30] + 1);
		d[15] <= 0;
		d[14] <= 0;
		d[13] <= (D[19:10]);
		d[12] <= (~D[29:20] + 1) * 3;
		d[11] <= (D[39:30]) <<< 1;
		d[10] <= 0;
		d[9] <= 0;
		d[8] <= (D[19:10]);
		d[7] <= (~D[29:20] + 1);
		d[6] <= (~D[39:30] + 1) <<< 1;
		d[5] <= 0;
		d[4] <= 0;
		d[3] <= (D[19:10]);
		d[2] <= (~D[29:20] + 1) <<< 1;
		d[1] <= (~D[39:30] + 1);
		d[0] <= (D[49:40]) <<< 1;

		input_t[0] <= (d[0]) +  (d[1]) +  (d[2]) +  (d[3]) + 0;
		input_t[1] <=0 +  (d[6]) +  (d[7]) +  (d[8]) + 0;
		input_t[2] <=0 +  (d[11]) +  (d[12]) +  (d[13]) + 0;
		input_t[3] <=0 +  (d[16]) + 0 +  (d[18]) + 0;
		input_t[4] <=0 +  (d[21]) +  (d[22]) +  (d[23]) +  (d[24]);

		//G*g
		MUL[0] <= (input_t[0]) <<< 1;
		MUL[1] <= (~input_t[1] + 1)*9;
		MUL[2] <= (~input_t[2] + 1)*3;
		MUL[3] <= (input_t[3])*10;
		MUL[4] <= (input_t[4])*13;

		output_t[0] <= (MUL[0]) + (MUL[1]) + (MUL[2]) + (MUL[3]) + 0;
		output_t[1] <=  0 + (MUL[1]) - (MUL[2]) + (MUL[3] <<< 1) + 0;
		output_t[2] <=  0 + (MUL[1]) + (MUL[2]) + (MUL[3] <<< 2) +  (MUL[4]);

		Z[29:20] <= output_t[0];
		Z[19:10] <= output_t[1];
		Z[9:0] <= output_t[2];

	end
endmodule