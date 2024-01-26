// WC_6_3.v generated by WCSyn.py
`timescale 1ns / 1ps
module wc(D, clk, rst, Z);
input  [10*8-1:0] D;
input  clk, rst;
output reg [10*6-1:0] Z;

	reg [9:0] input_t [0:7];
	reg [9:0] d [0:63];
	reg [9:0] MUL [0:7];
	reg [9:0] output_t [0:5];

	always@(posedge clk)begin

		//input_transform
		d[63] <= (D[9:0]);
		d[62] <= 0;
		d[61] <= ((~D[29:20] + 1) * 21) >>> 2;
		d[60] <= 0;
		d[59] <= ((D[49:40]) * 21) >>> 2;
		d[58] <= 0;
		d[57] <= (~D[69:60] + 1);
		d[56] <= 0;
		d[55] <= 0;
		d[54] <= (D[19:10]);
		d[53] <= (~D[29:20] + 1) >>> 1;
		d[52] <= (~D[39:30] + 1) * 5;
		d[51] <= ((D[49:40]) * 5) >>> 1;
		d[50] <= (D[59:50]) <<< 2;
		d[49] <= (~D[69:60] + 1) <<< 1;
		d[48] <= 0;
		d[47] <= 0;
		d[46] <= (D[19:10]);
		d[45] <= (D[29:20]) >>> 1;
		d[44] <= (~D[39:30] + 1) * 5;
		d[43] <= ((~D[49:40] + 1) * 5) >>> 1;
		d[42] <= (D[59:50]) <<< 2;
		d[41] <= (D[69:60]) <<< 1;
		d[40] <= 0;
		d[39] <= 0;
		d[38] <= (D[19:10]);
		d[37] <= (~D[29:20] + 1) <<< 1;
		d[36] <= ((~D[39:30] + 1) * 5) >>> 2;
		d[35] <= ((D[49:40]) * 5) >>> 1;
		d[34] <= (D[59:50]) >>> 2;
		d[33] <= (~D[69:60] + 1) >>> 1;
		d[32] <= 0;
		d[31] <= 0;
		d[30] <= (D[19:10]);
		d[29] <= (D[29:20]) <<< 1;
		d[28] <= ((~D[39:30] + 1) * 5) >>> 2;
		d[27] <= ((~D[49:40] + 1) * 5) >>> 1;
		d[26] <= (D[59:50]) >>> 2;
		d[25] <= (D[69:60]) >>> 1;
		d[24] <= 0;
		d[23] <= 0;
		d[22] <= (D[19:10]);
		d[21] <= (~D[29:20] + 1);
		d[20] <= ((~D[39:30] + 1) * 17) >>> 2;
		d[19] <= ((D[49:40]) * 17) >>> 2;
		d[18] <= (D[59:50]);
		d[17] <= (~D[69:60] + 1);
		d[16] <= 0;
		d[15] <= 0;
		d[14] <= (D[19:10]);
		d[13] <= (D[29:20]);
		d[12] <= ((~D[39:30] + 1) * 17) >>> 2;
		d[11] <= ((~D[49:40] + 1) * 17) >>> 2;
		d[10] <= (D[59:50]);
		d[9] <= (D[69:60]);
		d[8] <= 0;
		d[7] <= 0;
		d[6] <= (~D[19:10] + 1);
		d[5] <= 0;
		d[4] <= ((D[39:30]) * 21) >>> 2;
		d[3] <= 0;
		d[2] <= ((~D[59:50] + 1) * 21) >>> 2;
		d[1] <= 0;
		d[0] <= (D[79:70]);

		input_t[0] <= (d[0]) + 0 +  (d[2]) + 0 +  (d[4]) + 0 +  (d[6]) + 0;
		input_t[1] <=0 +  (d[9]) +  (d[10]) +  (d[11]) +  (d[12]) +  (d[13]) +  (d[14]) + 0;
		input_t[2] <=0 +  (d[17]) +  (d[18]) +  (d[19]) +  (d[20]) +  (d[21]) +  (d[22]) + 0;
		input_t[3] <=0 +  (d[25]) +  (d[26]) +  (d[27]) +  (d[28]) +  (d[29]) +  (d[30]) + 0;
		input_t[4] <=0 +  (d[33]) +  (d[34]) +  (d[35]) +  (d[36]) +  (d[37]) +  (d[38]) + 0;
		input_t[5] <=0 +  (d[41]) +  (d[42]) +  (d[43]) +  (d[44]) +  (d[45]) +  (d[46]) + 0;
		input_t[6] <=0 +  (d[49]) +  (d[50]) +  (d[51]) +  (d[52]) +  (d[53]) +  (d[54]) + 0;
		input_t[7] <=0 +  (d[57]) + 0 +  (d[59]) + 0 +  (d[61]) + 0 +  (d[63]);

		//G*g
		MUL[0] <= (input_t[0]) <<< 2;
		MUL[1] <= (~input_t[1] + 1) <<< 2;
		MUL[2] <= (~input_t[2] + 1) <<< 2;
		MUL[3] <= (input_t[3]);
		MUL[4] <= (input_t[4]);
		MUL[5] <= (input_t[5])*6;
		MUL[6] <= (input_t[6])*5;
		MUL[7] <= (input_t[7])*13;

		output_t[0] <= (MUL[0]) + (MUL[1]) + (MUL[2]) + (MUL[3]) + (MUL[4]) + (MUL[5]) + (MUL[6]) + 0;
		output_t[1] <=  0 + (MUL[1]) - (MUL[2]) + (MUL[3] <<< 1) - (MUL[4] <<< 1) + (MUL[5] >>> 1) - (MUL[6] >>> 1) + 0;
		output_t[2] <=  0 + (MUL[1]) + (MUL[2]) + (MUL[3] <<< 2) + (MUL[4] <<< 2) + (MUL[5] >>> 2) + (MUL[6] >>> 2) + 0;
		output_t[3] <=  0 + (MUL[1]) - (MUL[2]) + (MUL[3] <<< 3) - (MUL[4] <<< 3) + (MUL[5] >>> 3) - (MUL[6] >>> 3) + 0;
		output_t[4] <=  0 + (MUL[1]) + (MUL[2]) + (MUL[3] <<< 4) + (MUL[4] <<< 4) + (MUL[5] >>> 4) + (MUL[6] >>> 4) + 0;
		output_t[5] <=  0 + (MUL[1]) - (MUL[2]) + (MUL[3] <<< 5) - (MUL[4] <<< 5) + (MUL[5] >>> 5) - (MUL[6] >>> 5) +  (MUL[7]);

		Z[59:50] <= output_t[0];
		Z[49:40] <= output_t[1];
		Z[39:30] <= output_t[2];
		Z[29:20] <= output_t[3];
		Z[19:10] <= output_t[4];
		Z[9:0] <= output_t[5];

	end
endmodule
