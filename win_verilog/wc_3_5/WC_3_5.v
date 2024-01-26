// WC_3_5.v generated by WCSyn.py
`timescale 1ns / 1ps
module wc(D, clk, rst, Z);
input  [10*7-1:0] D;
input  clk, rst;
output reg [10*3-1:0] Z;

	reg [9:0] input_t [0:6];
	reg [9:0] d [0:48];
	reg [9:0] MUL [0:6];
	reg [9:0] output_t [0:2];

	always@(posedge clk)begin

		//input_transform
		d[48] <= (D[9:0]);
		d[47] <= ((~D[19:10] + 1) * 1) >>> 1;
		d[46] <= (~D[29:20] + 1) * 5;
		d[45] <= ((D[39:30]) * 5) >>> 1;
		d[44] <= (D[49:40]) <<< 2;
		d[43] <= (~D[59:50] + 1) <<< 1;
		d[42] <= 0;
		d[41] <= 0;
		d[40] <= (D[19:10]);
		d[39] <= 0;
		d[38] <= (~D[39:30] + 1) * 5;
		d[37] <= 0;
		d[36] <= (D[59:50]) <<< 2;
		d[35] <= 0;
		d[34] <= 0;
		d[33] <= (D[19:10]);
		d[32] <= ((~D[29:20] + 1) * 5) >>> 1;
		d[31] <= 0;
		d[30] <= ((D[49:40]) * 5) >>> 1;
		d[29] <= (~D[59:50] + 1);
		d[28] <= 0;
		d[27] <= 0;
		d[26] <= (D[19:10]);
		d[25] <= ((D[29:20]) * 3) >>> 1;
		d[24] <= (~D[39:30] + 1) <<< 1;
		d[23] <= ((~D[49:40] + 1) * 3) >>> 1;
		d[22] <= (D[59:50]);
		d[21] <= 0;
		d[20] <= 0;
		d[19] <= (D[19:10]);
		d[18] <= ((~D[29:20] + 1) * 3) >>> 1;
		d[17] <= ((~D[39:30] + 1) * 7) >>> 1;
		d[16] <= (D[49:40]) * 6;
		d[15] <= (~D[59:50] + 1) <<< 1;
		d[14] <= 0;
		d[13] <= 0;
		d[12] <= (D[19:10]);
		d[11] <= (D[29:20]) >>> 1;
		d[10] <= ((~D[39:30] + 1) * 9) >>> 1;
		d[9] <= (~D[49:40] + 1) <<< 1;
		d[8] <= (D[59:50]) <<< 1;
		d[7] <= 0;
		d[6] <= 0;
		d[5] <= (~D[19:10] + 1);
		d[4] <= (D[29:20]) >>> 1;
		d[3] <= (D[39:30]) * 5;
		d[2] <= ((~D[49:40] + 1) * 5) >>> 1;
		d[1] <= (~D[59:50] + 1) <<< 2;
		d[0] <= (D[69:60]) <<< 1;

		input_t[0] <= (d[0]) +  (d[1]) +  (d[2]) +  (d[3]) +  (d[4]) +  (d[5]) + 0;
		input_t[1] <=0 +  (d[8]) +  (d[9]) +  (d[10]) +  (d[11]) +  (d[12]) + 0;
		input_t[2] <=0 +  (d[15]) +  (d[16]) +  (d[17]) +  (d[18]) +  (d[19]) + 0;
		input_t[3] <=0 +  (d[22]) +  (d[23]) +  (d[24]) +  (d[25]) +  (d[26]) + 0;
		input_t[4] <=0 +  (d[29]) +  (d[30]) + 0 +  (d[32]) +  (d[33]) + 0;
		input_t[5] <=0 +  (d[36]) + 0 +  (d[38]) + 0 +  (d[40]) + 0;
		input_t[6] <=0 +  (d[43]) +  (d[44]) +  (d[45]) +  (d[46]) +  (d[47]) +  (d[48]);

		//G*g
		MUL[0] <= (input_t[0]) <<< 1;
		MUL[1] <= (~input_t[1] + 1)*10;
		MUL[2] <= (input_t[2]);
		MUL[3] <= (input_t[3])*5;
		MUL[4] <= 0;
		MUL[5] <= (input_t[5])*6;
		MUL[6] <= (input_t[6])*3;

		output_t[0] <= (MUL[0]) + (MUL[1]) + (MUL[2]) + (MUL[3]) + (MUL[4]) + (MUL[5]) + 0;
		output_t[1] <=  0 + (MUL[1]) - (MUL[2]) + (MUL[3] <<< 1) - (MUL[4] <<< 1) + (MUL[5] >>> 1) + 0;
		output_t[2] <=  0 + (MUL[1]) + (MUL[2]) + (MUL[3] <<< 2) + (MUL[4] <<< 2) + (MUL[5] >>> 2) +  (MUL[6]);

		Z[29:20] <= output_t[0];
		Z[19:10] <= output_t[1];
		Z[9:0] <= output_t[2];

	end
endmodule
