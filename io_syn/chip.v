module CHIP (READY_, Xc, Yc, Xi, Yi, Wi, RESET_, CLK);

  input CLK, RESET_; 
  input [7:0] Xi, Yi;
  input [3:0] Wi;
  output READY_;
  output [7:0] Xc, Yc;

  wire i_CLK, i_RESET_; 
  wire [7:0] i_Xi, i_Yi;
  wire [3:0] i_Wi;
  wire i_READY_;
  wire [7:0] i_Xc, i_Yc;
  wire n_Logic0_, n_Logic1_;

  GCC top (.READY_(i_READY_), .Xc(i_Xc), .Yc(i_Yc), .Xi(i_Xi), .Yi(i_Yi), .Wi(i_Wi), .RESET_(i_RESET_), .CLK(i_CLK));


  XMD ipad_CLK    ( .I(CLK), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_CLK) );
  XMD ipad_RESET_ ( .I(RESET_), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_RESET_) );

  XMD ipad_Xi0    ( .I(Xi[0]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Xi[0]) );
  XMD ipad_Xi1    ( .I(Xi[1]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Xi[1]) );
  XMD ipad_Xi2    ( .I(Xi[2]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Xi[2]) );
  XMD ipad_Xi3    ( .I(Xi[3]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Xi[3]) );
  XMD ipad_Xi4    ( .I(Xi[4]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Xi[4]) );
  XMD ipad_Xi5    ( .I(Xi[5]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Xi[5]) );
  XMD ipad_Xi6    ( .I(Xi[6]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Xi[6]) );
  XMD ipad_Xi7    ( .I(Xi[7]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Xi[7]) );
  
  XMD ipad_Yi0    ( .I(Yi[0]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Yi[0]) );
  XMD ipad_Yi1    ( .I(Yi[1]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Yi[1]) );
  XMD ipad_Yi2    ( .I(Yi[2]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Yi[2]) );
  XMD ipad_Yi3    ( .I(Yi[3]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Yi[3]) );
  XMD ipad_Yi4    ( .I(Yi[4]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Yi[4]) );
  XMD ipad_Yi5    ( .I(Yi[5]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Yi[5]) );
  XMD ipad_Yi6    ( .I(Yi[6]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Yi[6]) );
  XMD ipad_Yi7    ( .I(Yi[7]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Yi[7]) );
  
  XMD ipad_Wi0    ( .I(Wi[0]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Wi[0]) );
  XMD ipad_Wi1    ( .I(Wi[1]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Wi[1]) );
  XMD ipad_Wi2    ( .I(Wi[2]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Wi[2]) );
  XMD ipad_Wi3    ( .I(Wi[3]), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(i_Wi[3]) );

  YA2GSD opad_READY_ ( .I(i_READY_), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(READY_) );

  YA2GSD opad_Xc0 ( .I(i_Xc[0]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Xc[0]) );
  YA2GSD opad_Xc1 ( .I(i_Xc[1]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Xc[1]) );
  YA2GSD opad_Xc2 ( .I(i_Xc[2]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Xc[2]) );
  YA2GSD opad_Xc3 ( .I(i_Xc[3]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Xc[3]) );
  YA2GSD opad_Xc4 ( .I(i_Xc[4]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Xc[4]) );
  YA2GSD opad_Xc5 ( .I(i_Xc[5]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Xc[5]) );
  YA2GSD opad_Xc6 ( .I(i_Xc[6]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Xc[6]) );
  YA2GSD opad_Xc7 ( .I(i_Xc[7]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Xc[7]) );

  YA2GSD opad_Yc0 ( .I(i_Yc[0]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Yc[0]) );
  YA2GSD opad_Yc1 ( .I(i_Yc[1]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Yc[1]) );
  YA2GSD opad_Yc2 ( .I(i_Yc[2]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Yc[2]) );
  YA2GSD opad_Yc3 ( .I(i_Yc[3]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Yc[3]) );
  YA2GSD opad_Yc4 ( .I(i_Yc[4]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Yc[4]) );
  YA2GSD opad_Yc5 ( .I(i_Yc[5]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Yc[5]) );
  YA2GSD opad_Yc6 ( .I(i_Yc[6]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Yc[6]) );
  YA2GSD opad_Yc7 ( .I(i_Yc[7]), .E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_), .SR(n_Logic1_), .O(Yc[7]) );
  
  TIE0 U1 ( .O(n_Logic0_) );
  TIE1 U2 ( .O(n_Logic1_) );

endmodule
