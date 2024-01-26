//CHIP io for winograd
module CHIP (clk, rst, D, Z);

	input clk, rst;
	input [10-1:0] D;
	output [10-1:0] Z;

	wire i_clk, i_rst;
	wire [10-1:0] i_D;
	wire [10-1:0] i_Z;
	wire n_Logic0_, n_Logic1_;

	WC_5_5 top (.rst(i_rst), .clk(i_clk), .D(i_D), .Z(i_Z));

	XMD ipad_CLK    ( .I(clk), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_clk) );
	XMD ipad_RESET_ ( .I(rst), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_rst) );

	XMD ipad_D0 ( .I(D[0]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_D[0]) );
	XMD ipad_D1 ( .I(D[1]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_D[1]) );
	XMD ipad_D2 ( .I(D[2]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_D[2]) );
	XMD ipad_D3 ( .I(D[3]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_D[3]) );
	XMD ipad_D4 ( .I(D[4]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_D[4]) );
	XMD ipad_D5 ( .I(D[5]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_D[5]) );
	XMD ipad_D6 ( .I(D[6]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_D[6]) );
	XMD ipad_D7 ( .I(D[7]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_D[7]) );
	XMD ipad_D8 ( .I(D[8]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_D[8]) );
	XMD ipad_D9 ( .I(D[9]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_D[9]) );

	YA2GSD opad_Z0 ( .I(i_Z[0]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Z[0]));
	YA2GSD opad_Z1 ( .I(i_Z[1]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Z[1]));
	YA2GSD opad_Z2 ( .I(i_Z[2]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Z[2]));
	YA2GSD opad_Z3 ( .I(i_Z[3]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Z[3]));
	YA2GSD opad_Z4 ( .I(i_Z[4]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Z[4]));
	YA2GSD opad_Z5 ( .I(i_Z[5]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Z[5]));
	YA2GSD opad_Z6 ( .I(i_Z[6]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Z[6]));
	YA2GSD opad_Z7 ( .I(i_Z[7]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Z[7]));
	YA2GSD opad_Z8 ( .I(i_Z[8]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Z[8]));
	YA2GSD opad_Z9 ( .I(i_Z[9]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Z[9]));

	TIE0 U1 ( .O(n_Logic0_) );
	TIE1 U2 ( .O(n_Logic1_) );

endmodule
