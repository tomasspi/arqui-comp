// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  9 16:53:42 2020
// Host        : Archimedes running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/Arqui/tp3-bip/tp3-bip.sim/sim_1/synth/timing/xsim/tb_top_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM256X1S_UNIQ_BASE_
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'hAAAAAAAAAAAAAAAA),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hAAAAAAAAAAAAAAAA),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hAAAAAAAAAAAAAAAA),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hAAAAAAAAAAAAAAAA),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD31
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD32
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD33
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD34
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD35
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD36
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD37
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'hCCCCCCCCCCCCCCCC),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hCCCCCCCCCCCCCCCC),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hCCCCCCCCCCCCCCCC),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hCCCCCCCCCCCCCCCC),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD38
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'hF0F0F0F0F0F0F0F0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hF0F0F0F0F0F0F0F0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hF0F0F0F0F0F0F0F0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hF0F0F0F0F0F0F0F0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD39
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'hFF00FF00FF00FF00),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFF00FF00FF00FF00),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFF00FF00FF00FF00),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFF00FF00FF00FF00),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD40
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'hFFFF0000FFFF0000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFFFF0000FFFF0000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFFFF0000FFFF0000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFFFF0000FFFF0000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD41
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'hFFFFFFFF00000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFFFFFFFF00000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFFFFFFFF00000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFFFFFFFF00000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD42
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'hFFFFFFFFFFFFFFFF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFFFFFFFFFFFFFFFF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD43
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'hFFFFFFFFFFFFFFFF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFFFFFFFFFFFFFFFF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD44
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD45
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module baudrate_generator
   (\contador_reg[54]_0 ,
    i_clk_IBUF_BUFG,
    i_reset_IBUF);
  output \contador_reg[54]_0 ;
  input i_clk_IBUF_BUFG;
  input i_reset_IBUF;

  wire \contador[0]_i_1_n_0 ;
  wire \contador[0]_i_3_n_0 ;
  wire \contador[0]_i_4_n_0 ;
  wire \contador[0]_i_5_n_0 ;
  wire \contador[0]_i_6_n_0 ;
  wire \contador[12]_i_2_n_0 ;
  wire \contador[12]_i_3_n_0 ;
  wire \contador[12]_i_4_n_0 ;
  wire \contador[12]_i_5_n_0 ;
  wire \contador[16]_i_2_n_0 ;
  wire \contador[16]_i_3_n_0 ;
  wire \contador[16]_i_4_n_0 ;
  wire \contador[16]_i_5_n_0 ;
  wire \contador[20]_i_2_n_0 ;
  wire \contador[20]_i_3_n_0 ;
  wire \contador[20]_i_4_n_0 ;
  wire \contador[20]_i_5_n_0 ;
  wire \contador[24]_i_2_n_0 ;
  wire \contador[24]_i_3_n_0 ;
  wire \contador[24]_i_4_n_0 ;
  wire \contador[24]_i_5_n_0 ;
  wire \contador[28]_i_2_n_0 ;
  wire \contador[28]_i_3_n_0 ;
  wire \contador[28]_i_4_n_0 ;
  wire \contador[28]_i_5_n_0 ;
  wire \contador[32]_i_2_n_0 ;
  wire \contador[32]_i_3_n_0 ;
  wire \contador[32]_i_4_n_0 ;
  wire \contador[32]_i_5_n_0 ;
  wire \contador[36]_i_2_n_0 ;
  wire \contador[36]_i_3_n_0 ;
  wire \contador[36]_i_4_n_0 ;
  wire \contador[36]_i_5_n_0 ;
  wire \contador[40]_i_2_n_0 ;
  wire \contador[40]_i_3_n_0 ;
  wire \contador[40]_i_4_n_0 ;
  wire \contador[40]_i_5_n_0 ;
  wire \contador[44]_i_2_n_0 ;
  wire \contador[44]_i_3_n_0 ;
  wire \contador[44]_i_4_n_0 ;
  wire \contador[44]_i_5_n_0 ;
  wire \contador[48]_i_2_n_0 ;
  wire \contador[48]_i_3_n_0 ;
  wire \contador[48]_i_4_n_0 ;
  wire \contador[48]_i_5_n_0 ;
  wire \contador[4]_i_2_n_0 ;
  wire \contador[4]_i_3_n_0 ;
  wire \contador[4]_i_4_n_0 ;
  wire \contador[4]_i_5_n_0 ;
  wire \contador[52]_i_2_n_0 ;
  wire \contador[52]_i_3_n_0 ;
  wire \contador[52]_i_4_n_0 ;
  wire \contador[52]_i_5_n_0 ;
  wire \contador[56]_i_2_n_0 ;
  wire \contador[56]_i_3_n_0 ;
  wire \contador[56]_i_4_n_0 ;
  wire \contador[56]_i_5_n_0 ;
  wire \contador[60]_i_2_n_0 ;
  wire \contador[60]_i_3_n_0 ;
  wire \contador[60]_i_4_n_0 ;
  wire \contador[8]_i_2_n_0 ;
  wire \contador[8]_i_3_n_0 ;
  wire \contador[8]_i_4_n_0 ;
  wire \contador[8]_i_5_n_0 ;
  wire [62:0]contador_reg;
  wire \contador_reg[0]_i_2_n_0 ;
  wire \contador_reg[0]_i_2_n_1 ;
  wire \contador_reg[0]_i_2_n_2 ;
  wire \contador_reg[0]_i_2_n_3 ;
  wire \contador_reg[0]_i_2_n_4 ;
  wire \contador_reg[0]_i_2_n_5 ;
  wire \contador_reg[0]_i_2_n_6 ;
  wire \contador_reg[0]_i_2_n_7 ;
  wire \contador_reg[12]_i_1_n_0 ;
  wire \contador_reg[12]_i_1_n_1 ;
  wire \contador_reg[12]_i_1_n_2 ;
  wire \contador_reg[12]_i_1_n_3 ;
  wire \contador_reg[12]_i_1_n_4 ;
  wire \contador_reg[12]_i_1_n_5 ;
  wire \contador_reg[12]_i_1_n_6 ;
  wire \contador_reg[12]_i_1_n_7 ;
  wire \contador_reg[16]_i_1_n_0 ;
  wire \contador_reg[16]_i_1_n_1 ;
  wire \contador_reg[16]_i_1_n_2 ;
  wire \contador_reg[16]_i_1_n_3 ;
  wire \contador_reg[16]_i_1_n_4 ;
  wire \contador_reg[16]_i_1_n_5 ;
  wire \contador_reg[16]_i_1_n_6 ;
  wire \contador_reg[16]_i_1_n_7 ;
  wire \contador_reg[20]_i_1_n_0 ;
  wire \contador_reg[20]_i_1_n_1 ;
  wire \contador_reg[20]_i_1_n_2 ;
  wire \contador_reg[20]_i_1_n_3 ;
  wire \contador_reg[20]_i_1_n_4 ;
  wire \contador_reg[20]_i_1_n_5 ;
  wire \contador_reg[20]_i_1_n_6 ;
  wire \contador_reg[20]_i_1_n_7 ;
  wire \contador_reg[24]_i_1_n_0 ;
  wire \contador_reg[24]_i_1_n_1 ;
  wire \contador_reg[24]_i_1_n_2 ;
  wire \contador_reg[24]_i_1_n_3 ;
  wire \contador_reg[24]_i_1_n_4 ;
  wire \contador_reg[24]_i_1_n_5 ;
  wire \contador_reg[24]_i_1_n_6 ;
  wire \contador_reg[24]_i_1_n_7 ;
  wire \contador_reg[28]_i_1_n_0 ;
  wire \contador_reg[28]_i_1_n_1 ;
  wire \contador_reg[28]_i_1_n_2 ;
  wire \contador_reg[28]_i_1_n_3 ;
  wire \contador_reg[28]_i_1_n_4 ;
  wire \contador_reg[28]_i_1_n_5 ;
  wire \contador_reg[28]_i_1_n_6 ;
  wire \contador_reg[28]_i_1_n_7 ;
  wire \contador_reg[32]_i_1_n_0 ;
  wire \contador_reg[32]_i_1_n_1 ;
  wire \contador_reg[32]_i_1_n_2 ;
  wire \contador_reg[32]_i_1_n_3 ;
  wire \contador_reg[32]_i_1_n_4 ;
  wire \contador_reg[32]_i_1_n_5 ;
  wire \contador_reg[32]_i_1_n_6 ;
  wire \contador_reg[32]_i_1_n_7 ;
  wire \contador_reg[36]_i_1_n_0 ;
  wire \contador_reg[36]_i_1_n_1 ;
  wire \contador_reg[36]_i_1_n_2 ;
  wire \contador_reg[36]_i_1_n_3 ;
  wire \contador_reg[36]_i_1_n_4 ;
  wire \contador_reg[36]_i_1_n_5 ;
  wire \contador_reg[36]_i_1_n_6 ;
  wire \contador_reg[36]_i_1_n_7 ;
  wire \contador_reg[40]_i_1_n_0 ;
  wire \contador_reg[40]_i_1_n_1 ;
  wire \contador_reg[40]_i_1_n_2 ;
  wire \contador_reg[40]_i_1_n_3 ;
  wire \contador_reg[40]_i_1_n_4 ;
  wire \contador_reg[40]_i_1_n_5 ;
  wire \contador_reg[40]_i_1_n_6 ;
  wire \contador_reg[40]_i_1_n_7 ;
  wire \contador_reg[44]_i_1_n_0 ;
  wire \contador_reg[44]_i_1_n_1 ;
  wire \contador_reg[44]_i_1_n_2 ;
  wire \contador_reg[44]_i_1_n_3 ;
  wire \contador_reg[44]_i_1_n_4 ;
  wire \contador_reg[44]_i_1_n_5 ;
  wire \contador_reg[44]_i_1_n_6 ;
  wire \contador_reg[44]_i_1_n_7 ;
  wire \contador_reg[48]_i_1_n_0 ;
  wire \contador_reg[48]_i_1_n_1 ;
  wire \contador_reg[48]_i_1_n_2 ;
  wire \contador_reg[48]_i_1_n_3 ;
  wire \contador_reg[48]_i_1_n_4 ;
  wire \contador_reg[48]_i_1_n_5 ;
  wire \contador_reg[48]_i_1_n_6 ;
  wire \contador_reg[48]_i_1_n_7 ;
  wire \contador_reg[4]_i_1_n_0 ;
  wire \contador_reg[4]_i_1_n_1 ;
  wire \contador_reg[4]_i_1_n_2 ;
  wire \contador_reg[4]_i_1_n_3 ;
  wire \contador_reg[4]_i_1_n_4 ;
  wire \contador_reg[4]_i_1_n_5 ;
  wire \contador_reg[4]_i_1_n_6 ;
  wire \contador_reg[4]_i_1_n_7 ;
  wire \contador_reg[52]_i_1_n_0 ;
  wire \contador_reg[52]_i_1_n_1 ;
  wire \contador_reg[52]_i_1_n_2 ;
  wire \contador_reg[52]_i_1_n_3 ;
  wire \contador_reg[52]_i_1_n_4 ;
  wire \contador_reg[52]_i_1_n_5 ;
  wire \contador_reg[52]_i_1_n_6 ;
  wire \contador_reg[52]_i_1_n_7 ;
  wire \contador_reg[54]_0 ;
  wire \contador_reg[56]_i_1_n_0 ;
  wire \contador_reg[56]_i_1_n_1 ;
  wire \contador_reg[56]_i_1_n_2 ;
  wire \contador_reg[56]_i_1_n_3 ;
  wire \contador_reg[56]_i_1_n_4 ;
  wire \contador_reg[56]_i_1_n_5 ;
  wire \contador_reg[56]_i_1_n_6 ;
  wire \contador_reg[56]_i_1_n_7 ;
  wire \contador_reg[60]_i_1_n_2 ;
  wire \contador_reg[60]_i_1_n_3 ;
  wire \contador_reg[60]_i_1_n_5 ;
  wire \contador_reg[60]_i_1_n_6 ;
  wire \contador_reg[60]_i_1_n_7 ;
  wire \contador_reg[8]_i_1_n_0 ;
  wire \contador_reg[8]_i_1_n_1 ;
  wire \contador_reg[8]_i_1_n_2 ;
  wire \contador_reg[8]_i_1_n_3 ;
  wire \contador_reg[8]_i_1_n_4 ;
  wire \contador_reg[8]_i_1_n_5 ;
  wire \contador_reg[8]_i_1_n_6 ;
  wire \contador_reg[8]_i_1_n_7 ;
  wire i_clk_IBUF_BUFG;
  wire i_reset_IBUF;
  wire o_tx_done_OBUF_inst_i_10_n_0;
  wire o_tx_done_OBUF_inst_i_11_n_0;
  wire o_tx_done_OBUF_inst_i_12_n_0;
  wire o_tx_done_OBUF_inst_i_13_n_0;
  wire o_tx_done_OBUF_inst_i_14_n_0;
  wire o_tx_done_OBUF_inst_i_15_n_0;
  wire o_tx_done_OBUF_inst_i_16_n_0;
  wire o_tx_done_OBUF_inst_i_17_n_0;
  wire o_tx_done_OBUF_inst_i_18_n_0;
  wire o_tx_done_OBUF_inst_i_19_n_0;
  wire o_tx_done_OBUF_inst_i_20_n_0;
  wire o_tx_done_OBUF_inst_i_4_n_0;
  wire o_tx_done_OBUF_inst_i_5_n_0;
  wire o_tx_done_OBUF_inst_i_6_n_0;
  wire o_tx_done_OBUF_inst_i_7_n_0;
  wire o_tx_done_OBUF_inst_i_8_n_0;
  wire o_tx_done_OBUF_inst_i_9_n_0;
  wire [3:2]\NLW_contador_reg[60]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_contador_reg[60]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \contador[0]_i_1 
       (.I0(\contador_reg[54]_0 ),
        .I1(i_reset_IBUF),
        .O(\contador[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_3 
       (.I0(contador_reg[3]),
        .O(\contador[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_4 
       (.I0(contador_reg[2]),
        .O(\contador[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_5 
       (.I0(contador_reg[1]),
        .O(\contador[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_6 
       (.I0(contador_reg[0]),
        .O(\contador[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[12]_i_2 
       (.I0(contador_reg[15]),
        .O(\contador[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[12]_i_3 
       (.I0(contador_reg[14]),
        .O(\contador[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[12]_i_4 
       (.I0(contador_reg[13]),
        .O(\contador[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[12]_i_5 
       (.I0(contador_reg[12]),
        .O(\contador[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[16]_i_2 
       (.I0(contador_reg[19]),
        .O(\contador[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[16]_i_3 
       (.I0(contador_reg[18]),
        .O(\contador[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[16]_i_4 
       (.I0(contador_reg[17]),
        .O(\contador[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[16]_i_5 
       (.I0(contador_reg[16]),
        .O(\contador[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[20]_i_2 
       (.I0(contador_reg[23]),
        .O(\contador[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[20]_i_3 
       (.I0(contador_reg[22]),
        .O(\contador[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[20]_i_4 
       (.I0(contador_reg[21]),
        .O(\contador[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[20]_i_5 
       (.I0(contador_reg[20]),
        .O(\contador[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[24]_i_2 
       (.I0(contador_reg[27]),
        .O(\contador[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[24]_i_3 
       (.I0(contador_reg[26]),
        .O(\contador[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[24]_i_4 
       (.I0(contador_reg[25]),
        .O(\contador[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[24]_i_5 
       (.I0(contador_reg[24]),
        .O(\contador[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[28]_i_2 
       (.I0(contador_reg[31]),
        .O(\contador[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[28]_i_3 
       (.I0(contador_reg[30]),
        .O(\contador[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[28]_i_4 
       (.I0(contador_reg[29]),
        .O(\contador[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[28]_i_5 
       (.I0(contador_reg[28]),
        .O(\contador[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[32]_i_2 
       (.I0(contador_reg[35]),
        .O(\contador[32]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[32]_i_3 
       (.I0(contador_reg[34]),
        .O(\contador[32]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[32]_i_4 
       (.I0(contador_reg[33]),
        .O(\contador[32]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[32]_i_5 
       (.I0(contador_reg[32]),
        .O(\contador[32]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[36]_i_2 
       (.I0(contador_reg[39]),
        .O(\contador[36]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[36]_i_3 
       (.I0(contador_reg[38]),
        .O(\contador[36]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[36]_i_4 
       (.I0(contador_reg[37]),
        .O(\contador[36]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[36]_i_5 
       (.I0(contador_reg[36]),
        .O(\contador[36]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[40]_i_2 
       (.I0(contador_reg[43]),
        .O(\contador[40]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[40]_i_3 
       (.I0(contador_reg[42]),
        .O(\contador[40]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[40]_i_4 
       (.I0(contador_reg[41]),
        .O(\contador[40]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[40]_i_5 
       (.I0(contador_reg[40]),
        .O(\contador[40]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[44]_i_2 
       (.I0(contador_reg[47]),
        .O(\contador[44]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[44]_i_3 
       (.I0(contador_reg[46]),
        .O(\contador[44]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[44]_i_4 
       (.I0(contador_reg[45]),
        .O(\contador[44]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[44]_i_5 
       (.I0(contador_reg[44]),
        .O(\contador[44]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[48]_i_2 
       (.I0(contador_reg[51]),
        .O(\contador[48]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[48]_i_3 
       (.I0(contador_reg[50]),
        .O(\contador[48]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[48]_i_4 
       (.I0(contador_reg[49]),
        .O(\contador[48]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[48]_i_5 
       (.I0(contador_reg[48]),
        .O(\contador[48]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[4]_i_2 
       (.I0(contador_reg[7]),
        .O(\contador[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[4]_i_3 
       (.I0(contador_reg[6]),
        .O(\contador[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[4]_i_4 
       (.I0(contador_reg[5]),
        .O(\contador[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[4]_i_5 
       (.I0(contador_reg[4]),
        .O(\contador[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[52]_i_2 
       (.I0(contador_reg[55]),
        .O(\contador[52]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[52]_i_3 
       (.I0(contador_reg[54]),
        .O(\contador[52]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[52]_i_4 
       (.I0(contador_reg[53]),
        .O(\contador[52]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[52]_i_5 
       (.I0(contador_reg[52]),
        .O(\contador[52]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[56]_i_2 
       (.I0(contador_reg[59]),
        .O(\contador[56]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[56]_i_3 
       (.I0(contador_reg[58]),
        .O(\contador[56]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[56]_i_4 
       (.I0(contador_reg[57]),
        .O(\contador[56]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[56]_i_5 
       (.I0(contador_reg[56]),
        .O(\contador[56]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[60]_i_2 
       (.I0(contador_reg[62]),
        .O(\contador[60]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[60]_i_3 
       (.I0(contador_reg[61]),
        .O(\contador[60]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[60]_i_4 
       (.I0(contador_reg[60]),
        .O(\contador[60]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[8]_i_2 
       (.I0(contador_reg[11]),
        .O(\contador[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[8]_i_3 
       (.I0(contador_reg[10]),
        .O(\contador[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[8]_i_4 
       (.I0(contador_reg[9]),
        .O(\contador[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[8]_i_5 
       (.I0(contador_reg[8]),
        .O(\contador[8]_i_5_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \contador_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_7 ),
        .Q(contador_reg[0]),
        .S(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\contador_reg[0]_i_2_n_0 ,\contador_reg[0]_i_2_n_1 ,\contador_reg[0]_i_2_n_2 ,\contador_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[0]_i_2_n_4 ,\contador_reg[0]_i_2_n_5 ,\contador_reg[0]_i_2_n_6 ,\contador_reg[0]_i_2_n_7 }),
        .S({\contador[0]_i_3_n_0 ,\contador[0]_i_4_n_0 ,\contador[0]_i_5_n_0 ,\contador[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_5 ),
        .Q(contador_reg[10]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_4 ),
        .Q(contador_reg[11]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_7 ),
        .Q(contador_reg[12]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[12]_i_1 
       (.CI(\contador_reg[8]_i_1_n_0 ),
        .CO({\contador_reg[12]_i_1_n_0 ,\contador_reg[12]_i_1_n_1 ,\contador_reg[12]_i_1_n_2 ,\contador_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[12]_i_1_n_4 ,\contador_reg[12]_i_1_n_5 ,\contador_reg[12]_i_1_n_6 ,\contador_reg[12]_i_1_n_7 }),
        .S({\contador[12]_i_2_n_0 ,\contador[12]_i_3_n_0 ,\contador[12]_i_4_n_0 ,\contador[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_6 ),
        .Q(contador_reg[13]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_5 ),
        .Q(contador_reg[14]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_4 ),
        .Q(contador_reg[15]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_7 ),
        .Q(contador_reg[16]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[16]_i_1 
       (.CI(\contador_reg[12]_i_1_n_0 ),
        .CO({\contador_reg[16]_i_1_n_0 ,\contador_reg[16]_i_1_n_1 ,\contador_reg[16]_i_1_n_2 ,\contador_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[16]_i_1_n_4 ,\contador_reg[16]_i_1_n_5 ,\contador_reg[16]_i_1_n_6 ,\contador_reg[16]_i_1_n_7 }),
        .S({\contador[16]_i_2_n_0 ,\contador[16]_i_3_n_0 ,\contador[16]_i_4_n_0 ,\contador[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_6 ),
        .Q(contador_reg[17]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[18] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_5 ),
        .Q(contador_reg[18]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[19] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_4 ),
        .Q(contador_reg[19]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_6 ),
        .Q(contador_reg[1]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[20] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_7 ),
        .Q(contador_reg[20]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[20]_i_1 
       (.CI(\contador_reg[16]_i_1_n_0 ),
        .CO({\contador_reg[20]_i_1_n_0 ,\contador_reg[20]_i_1_n_1 ,\contador_reg[20]_i_1_n_2 ,\contador_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[20]_i_1_n_4 ,\contador_reg[20]_i_1_n_5 ,\contador_reg[20]_i_1_n_6 ,\contador_reg[20]_i_1_n_7 }),
        .S({\contador[20]_i_2_n_0 ,\contador[20]_i_3_n_0 ,\contador[20]_i_4_n_0 ,\contador[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[21] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_6 ),
        .Q(contador_reg[21]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[22] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_5 ),
        .Q(contador_reg[22]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[23] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_4 ),
        .Q(contador_reg[23]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[24] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_7 ),
        .Q(contador_reg[24]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[24]_i_1 
       (.CI(\contador_reg[20]_i_1_n_0 ),
        .CO({\contador_reg[24]_i_1_n_0 ,\contador_reg[24]_i_1_n_1 ,\contador_reg[24]_i_1_n_2 ,\contador_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[24]_i_1_n_4 ,\contador_reg[24]_i_1_n_5 ,\contador_reg[24]_i_1_n_6 ,\contador_reg[24]_i_1_n_7 }),
        .S({\contador[24]_i_2_n_0 ,\contador[24]_i_3_n_0 ,\contador[24]_i_4_n_0 ,\contador[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[25] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_6 ),
        .Q(contador_reg[25]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[26] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_5 ),
        .Q(contador_reg[26]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[27] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_4 ),
        .Q(contador_reg[27]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[28] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_7 ),
        .Q(contador_reg[28]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[28]_i_1 
       (.CI(\contador_reg[24]_i_1_n_0 ),
        .CO({\contador_reg[28]_i_1_n_0 ,\contador_reg[28]_i_1_n_1 ,\contador_reg[28]_i_1_n_2 ,\contador_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[28]_i_1_n_4 ,\contador_reg[28]_i_1_n_5 ,\contador_reg[28]_i_1_n_6 ,\contador_reg[28]_i_1_n_7 }),
        .S({\contador[28]_i_2_n_0 ,\contador[28]_i_3_n_0 ,\contador[28]_i_4_n_0 ,\contador[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[29] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_6 ),
        .Q(contador_reg[29]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \contador_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_5 ),
        .Q(contador_reg[2]),
        .S(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[30] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_5 ),
        .Q(contador_reg[30]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[31] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_4 ),
        .Q(contador_reg[31]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[32] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_7 ),
        .Q(contador_reg[32]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[32]_i_1 
       (.CI(\contador_reg[28]_i_1_n_0 ),
        .CO({\contador_reg[32]_i_1_n_0 ,\contador_reg[32]_i_1_n_1 ,\contador_reg[32]_i_1_n_2 ,\contador_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[32]_i_1_n_4 ,\contador_reg[32]_i_1_n_5 ,\contador_reg[32]_i_1_n_6 ,\contador_reg[32]_i_1_n_7 }),
        .S({\contador[32]_i_2_n_0 ,\contador[32]_i_3_n_0 ,\contador[32]_i_4_n_0 ,\contador[32]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[33] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_6 ),
        .Q(contador_reg[33]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[34] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_5 ),
        .Q(contador_reg[34]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[35] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_4 ),
        .Q(contador_reg[35]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[36] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_7 ),
        .Q(contador_reg[36]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[36]_i_1 
       (.CI(\contador_reg[32]_i_1_n_0 ),
        .CO({\contador_reg[36]_i_1_n_0 ,\contador_reg[36]_i_1_n_1 ,\contador_reg[36]_i_1_n_2 ,\contador_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[36]_i_1_n_4 ,\contador_reg[36]_i_1_n_5 ,\contador_reg[36]_i_1_n_6 ,\contador_reg[36]_i_1_n_7 }),
        .S({\contador[36]_i_2_n_0 ,\contador[36]_i_3_n_0 ,\contador[36]_i_4_n_0 ,\contador[36]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[37] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_6 ),
        .Q(contador_reg[37]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[38] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_5 ),
        .Q(contador_reg[38]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[39] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_4 ),
        .Q(contador_reg[39]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_4 ),
        .Q(contador_reg[3]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[40] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_7 ),
        .Q(contador_reg[40]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[40]_i_1 
       (.CI(\contador_reg[36]_i_1_n_0 ),
        .CO({\contador_reg[40]_i_1_n_0 ,\contador_reg[40]_i_1_n_1 ,\contador_reg[40]_i_1_n_2 ,\contador_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[40]_i_1_n_4 ,\contador_reg[40]_i_1_n_5 ,\contador_reg[40]_i_1_n_6 ,\contador_reg[40]_i_1_n_7 }),
        .S({\contador[40]_i_2_n_0 ,\contador[40]_i_3_n_0 ,\contador[40]_i_4_n_0 ,\contador[40]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[41] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_6 ),
        .Q(contador_reg[41]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[42] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_5 ),
        .Q(contador_reg[42]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[43] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_4 ),
        .Q(contador_reg[43]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[44] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_7 ),
        .Q(contador_reg[44]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[44]_i_1 
       (.CI(\contador_reg[40]_i_1_n_0 ),
        .CO({\contador_reg[44]_i_1_n_0 ,\contador_reg[44]_i_1_n_1 ,\contador_reg[44]_i_1_n_2 ,\contador_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[44]_i_1_n_4 ,\contador_reg[44]_i_1_n_5 ,\contador_reg[44]_i_1_n_6 ,\contador_reg[44]_i_1_n_7 }),
        .S({\contador[44]_i_2_n_0 ,\contador[44]_i_3_n_0 ,\contador[44]_i_4_n_0 ,\contador[44]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[45] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_6 ),
        .Q(contador_reg[45]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[46] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_5 ),
        .Q(contador_reg[46]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[47] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_4 ),
        .Q(contador_reg[47]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[48] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_7 ),
        .Q(contador_reg[48]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[48]_i_1 
       (.CI(\contador_reg[44]_i_1_n_0 ),
        .CO({\contador_reg[48]_i_1_n_0 ,\contador_reg[48]_i_1_n_1 ,\contador_reg[48]_i_1_n_2 ,\contador_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[48]_i_1_n_4 ,\contador_reg[48]_i_1_n_5 ,\contador_reg[48]_i_1_n_6 ,\contador_reg[48]_i_1_n_7 }),
        .S({\contador[48]_i_2_n_0 ,\contador[48]_i_3_n_0 ,\contador[48]_i_4_n_0 ,\contador[48]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[49] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_6 ),
        .Q(contador_reg[49]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_7 ),
        .Q(contador_reg[4]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[4]_i_1 
       (.CI(\contador_reg[0]_i_2_n_0 ),
        .CO({\contador_reg[4]_i_1_n_0 ,\contador_reg[4]_i_1_n_1 ,\contador_reg[4]_i_1_n_2 ,\contador_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[4]_i_1_n_4 ,\contador_reg[4]_i_1_n_5 ,\contador_reg[4]_i_1_n_6 ,\contador_reg[4]_i_1_n_7 }),
        .S({\contador[4]_i_2_n_0 ,\contador[4]_i_3_n_0 ,\contador[4]_i_4_n_0 ,\contador[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[50] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_5 ),
        .Q(contador_reg[50]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[51] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_4 ),
        .Q(contador_reg[51]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[52] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_7 ),
        .Q(contador_reg[52]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[52]_i_1 
       (.CI(\contador_reg[48]_i_1_n_0 ),
        .CO({\contador_reg[52]_i_1_n_0 ,\contador_reg[52]_i_1_n_1 ,\contador_reg[52]_i_1_n_2 ,\contador_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[52]_i_1_n_4 ,\contador_reg[52]_i_1_n_5 ,\contador_reg[52]_i_1_n_6 ,\contador_reg[52]_i_1_n_7 }),
        .S({\contador[52]_i_2_n_0 ,\contador[52]_i_3_n_0 ,\contador[52]_i_4_n_0 ,\contador[52]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[53] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_6 ),
        .Q(contador_reg[53]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[54] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_5 ),
        .Q(contador_reg[54]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[55] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_4 ),
        .Q(contador_reg[55]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[56] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_7 ),
        .Q(contador_reg[56]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[56]_i_1 
       (.CI(\contador_reg[52]_i_1_n_0 ),
        .CO({\contador_reg[56]_i_1_n_0 ,\contador_reg[56]_i_1_n_1 ,\contador_reg[56]_i_1_n_2 ,\contador_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[56]_i_1_n_4 ,\contador_reg[56]_i_1_n_5 ,\contador_reg[56]_i_1_n_6 ,\contador_reg[56]_i_1_n_7 }),
        .S({\contador[56]_i_2_n_0 ,\contador[56]_i_3_n_0 ,\contador[56]_i_4_n_0 ,\contador[56]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[57] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_6 ),
        .Q(contador_reg[57]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[58] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_5 ),
        .Q(contador_reg[58]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[59] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_4 ),
        .Q(contador_reg[59]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_6 ),
        .Q(contador_reg[5]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[60] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[60]_i_1_n_7 ),
        .Q(contador_reg[60]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[60]_i_1 
       (.CI(\contador_reg[56]_i_1_n_0 ),
        .CO({\NLW_contador_reg[60]_i_1_CO_UNCONNECTED [3:2],\contador_reg[60]_i_1_n_2 ,\contador_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\NLW_contador_reg[60]_i_1_O_UNCONNECTED [3],\contador_reg[60]_i_1_n_5 ,\contador_reg[60]_i_1_n_6 ,\contador_reg[60]_i_1_n_7 }),
        .S({1'b0,\contador[60]_i_2_n_0 ,\contador[60]_i_3_n_0 ,\contador[60]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[61] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[60]_i_1_n_6 ),
        .Q(contador_reg[61]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[62] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[60]_i_1_n_5 ),
        .Q(contador_reg[62]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \contador_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_5 ),
        .Q(contador_reg[6]),
        .S(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_4 ),
        .Q(contador_reg[7]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \contador_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_7 ),
        .Q(contador_reg[8]),
        .S(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \contador_reg[8]_i_1 
       (.CI(\contador_reg[4]_i_1_n_0 ),
        .CO({\contador_reg[8]_i_1_n_0 ,\contador_reg[8]_i_1_n_1 ,\contador_reg[8]_i_1_n_2 ,\contador_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[8]_i_1_n_4 ,\contador_reg[8]_i_1_n_5 ,\contador_reg[8]_i_1_n_6 ,\contador_reg[8]_i_1_n_7 }),
        .S({\contador[8]_i_2_n_0 ,\contador[8]_i_3_n_0 ,\contador[8]_i_4_n_0 ,\contador[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_6 ),
        .Q(contador_reg[9]),
        .R(\contador[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_10
       (.I0(contador_reg[61]),
        .I1(contador_reg[60]),
        .I2(contador_reg[59]),
        .I3(contador_reg[58]),
        .O(o_tx_done_OBUF_inst_i_10_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_11
       (.I0(contador_reg[53]),
        .I1(contador_reg[52]),
        .I2(contador_reg[51]),
        .I3(contador_reg[50]),
        .O(o_tx_done_OBUF_inst_i_11_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_12
       (.I0(contador_reg[45]),
        .I1(contador_reg[44]),
        .I2(contador_reg[43]),
        .I3(contador_reg[42]),
        .O(o_tx_done_OBUF_inst_i_12_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_13
       (.I0(contador_reg[37]),
        .I1(contador_reg[36]),
        .I2(contador_reg[35]),
        .I3(contador_reg[34]),
        .O(o_tx_done_OBUF_inst_i_13_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_14
       (.I0(contador_reg[29]),
        .I1(contador_reg[28]),
        .I2(contador_reg[27]),
        .I3(contador_reg[26]),
        .O(o_tx_done_OBUF_inst_i_14_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_15
       (.I0(contador_reg[25]),
        .I1(contador_reg[24]),
        .I2(contador_reg[23]),
        .I3(contador_reg[22]),
        .O(o_tx_done_OBUF_inst_i_15_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_16
       (.I0(contador_reg[21]),
        .I1(contador_reg[20]),
        .I2(contador_reg[19]),
        .I3(contador_reg[18]),
        .O(o_tx_done_OBUF_inst_i_16_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_17
       (.I0(contador_reg[17]),
        .I1(contador_reg[16]),
        .I2(contador_reg[15]),
        .I3(contador_reg[14]),
        .O(o_tx_done_OBUF_inst_i_17_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_18
       (.I0(contador_reg[13]),
        .I1(contador_reg[12]),
        .I2(contador_reg[11]),
        .I3(contador_reg[10]),
        .O(o_tx_done_OBUF_inst_i_18_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_19
       (.I0(contador_reg[9]),
        .I1(contador_reg[8]),
        .I2(contador_reg[7]),
        .I3(contador_reg[6]),
        .O(o_tx_done_OBUF_inst_i_19_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_20
       (.I0(contador_reg[5]),
        .I1(contador_reg[4]),
        .I2(contador_reg[3]),
        .I3(contador_reg[2]),
        .O(o_tx_done_OBUF_inst_i_20_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    o_tx_done_OBUF_inst_i_3
       (.I0(o_tx_done_OBUF_inst_i_4_n_0),
        .I1(o_tx_done_OBUF_inst_i_5_n_0),
        .I2(o_tx_done_OBUF_inst_i_6_n_0),
        .I3(o_tx_done_OBUF_inst_i_7_n_0),
        .I4(o_tx_done_OBUF_inst_i_8_n_0),
        .I5(o_tx_done_OBUF_inst_i_9_n_0),
        .O(\contador_reg[54]_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    o_tx_done_OBUF_inst_i_4
       (.I0(contador_reg[54]),
        .I1(contador_reg[55]),
        .I2(contador_reg[56]),
        .I3(contador_reg[57]),
        .I4(o_tx_done_OBUF_inst_i_10_n_0),
        .O(o_tx_done_OBUF_inst_i_4_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    o_tx_done_OBUF_inst_i_5
       (.I0(contador_reg[46]),
        .I1(contador_reg[47]),
        .I2(contador_reg[48]),
        .I3(contador_reg[49]),
        .I4(o_tx_done_OBUF_inst_i_11_n_0),
        .O(o_tx_done_OBUF_inst_i_5_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    o_tx_done_OBUF_inst_i_6
       (.I0(contador_reg[38]),
        .I1(contador_reg[39]),
        .I2(contador_reg[40]),
        .I3(contador_reg[41]),
        .I4(o_tx_done_OBUF_inst_i_12_n_0),
        .O(o_tx_done_OBUF_inst_i_6_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    o_tx_done_OBUF_inst_i_7
       (.I0(contador_reg[30]),
        .I1(contador_reg[31]),
        .I2(contador_reg[32]),
        .I3(contador_reg[33]),
        .I4(o_tx_done_OBUF_inst_i_13_n_0),
        .O(o_tx_done_OBUF_inst_i_7_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    o_tx_done_OBUF_inst_i_8
       (.I0(o_tx_done_OBUF_inst_i_14_n_0),
        .I1(o_tx_done_OBUF_inst_i_15_n_0),
        .I2(o_tx_done_OBUF_inst_i_16_n_0),
        .I3(o_tx_done_OBUF_inst_i_17_n_0),
        .O(o_tx_done_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    o_tx_done_OBUF_inst_i_9
       (.I0(o_tx_done_OBUF_inst_i_18_n_0),
        .I1(o_tx_done_OBUF_inst_i_19_n_0),
        .I2(o_tx_done_OBUF_inst_i_20_n_0),
        .I3(contador_reg[1]),
        .I4(contador_reg[0]),
        .I5(contador_reg[62]),
        .O(o_tx_done_OBUF_inst_i_9_n_0));
endmodule

module bip_i
   (O,
    Q,
    \acc_reg[7] ,
    \acc_reg[11] ,
    \acc_reg[14] ,
    D,
    \pc_reg[1] ,
    DI,
    S,
    \acc_reg[7]_0 ,
    \acc_reg[11]_0 ,
    \acc_reg[15] ,
    state_reg,
    i_reset_IBUF,
    E,
    \acc_reg[15]_0 ,
    i_clk_IBUF_BUFG,
    \pc_reg[1]_0 ,
    \pc_reg[0] ,
    i_valid_IBUF);
  output [3:0]O;
  output [15:0]Q;
  output [3:0]\acc_reg[7] ;
  output [3:0]\acc_reg[11] ;
  output [3:0]\acc_reg[14] ;
  output [0:0]D;
  output [6:0]\pc_reg[1] ;
  input [0:0]DI;
  input [3:0]S;
  input [3:0]\acc_reg[7]_0 ;
  input [3:0]\acc_reg[11]_0 ;
  input [3:0]\acc_reg[15] ;
  input [0:0]state_reg;
  input i_reset_IBUF;
  input [0:0]E;
  input [15:0]\acc_reg[15]_0 ;
  input i_clk_IBUF_BUFG;
  input \pc_reg[1]_0 ;
  input [2:0]\pc_reg[0] ;
  input i_valid_IBUF;

  wire [0:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [3:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire [3:0]\acc_reg[11] ;
  wire [3:0]\acc_reg[11]_0 ;
  wire [3:0]\acc_reg[14] ;
  wire [3:0]\acc_reg[15] ;
  wire [15:0]\acc_reg[15]_0 ;
  wire [3:0]\acc_reg[7] ;
  wire [3:0]\acc_reg[7]_0 ;
  wire i_clk_IBUF_BUFG;
  wire i_reset_IBUF;
  wire i_valid_IBUF;
  wire [2:0]\pc_reg[0] ;
  wire [6:0]\pc_reg[1] ;
  wire \pc_reg[1]_0 ;
  wire [0:0]state_reg;

  control u_control_blk
       (.i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_reset_IBUF(i_reset_IBUF),
        .i_valid_IBUF(i_valid_IBUF),
        .\pc_reg[0]_0 (\pc_reg[0] ),
        .\pc_reg[1]_0 (\pc_reg[1] ),
        .\pc_reg[1]_1 (\pc_reg[1]_0 ));
  datapath u_datapath
       (.D(D),
        .DI(DI),
        .E(E),
        .O(O),
        .Q(Q),
        .S(S),
        .\acc_reg[11]_0 (\acc_reg[11] ),
        .\acc_reg[11]_1 (\acc_reg[11]_0 ),
        .\acc_reg[14]_0 (\acc_reg[14] ),
        .\acc_reg[15]_0 (\acc_reg[15] ),
        .\acc_reg[15]_1 (\acc_reg[15]_0 ),
        .\acc_reg[7]_0 (\acc_reg[7] ),
        .\acc_reg[7]_1 (\acc_reg[7]_0 ),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_reset_IBUF(i_reset_IBUF),
        .state_reg(state_reg));
endmodule

module control
   (\pc_reg[1]_0 ,
    \pc_reg[1]_1 ,
    i_reset_IBUF,
    \pc_reg[0]_0 ,
    i_valid_IBUF,
    i_clk_IBUF_BUFG);
  output [6:0]\pc_reg[1]_0 ;
  input \pc_reg[1]_1 ;
  input i_reset_IBUF;
  input [2:0]\pc_reg[0]_0 ;
  input i_valid_IBUF;
  input i_clk_IBUF_BUFG;

  wire i_clk_IBUF_BUFG;
  wire i_reset_IBUF;
  wire i_valid_IBUF;
  wire \pc[0]_i_1_n_0 ;
  wire \pc[1]_i_1_n_0 ;
  wire \pc[2]_i_1_n_0 ;
  wire [2:0]\pc_reg[0]_0 ;
  wire [6:0]\pc_reg[1]_0 ;
  wire \pc_reg[1]_1 ;
  wire [2:0]program_addr;

  LUT6 #(
    .INIT(64'h0000000055AA56AA)) 
    \pc[0]_i_1 
       (.I0(program_addr[0]),
        .I1(\pc_reg[0]_0 [0]),
        .I2(\pc_reg[0]_0 [1]),
        .I3(i_valid_IBUF),
        .I4(\pc_reg[0]_0 [2]),
        .I5(i_reset_IBUF),
        .O(\pc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \pc[1]_i_1 
       (.I0(program_addr[1]),
        .I1(\pc_reg[1]_1 ),
        .I2(program_addr[0]),
        .I3(i_reset_IBUF),
        .O(\pc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \pc[2]_i_1 
       (.I0(program_addr[2]),
        .I1(\pc_reg[1]_1 ),
        .I2(program_addr[0]),
        .I3(program_addr[1]),
        .I4(i_reset_IBUF),
        .O(\pc[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc[0]_i_1_n_0 ),
        .Q(program_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc[1]_i_1_n_0 ),
        .Q(program_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc[2]_i_1_n_0 ),
        .Q(program_addr[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \ram_data[0]_i_1 
       (.I0(program_addr[0]),
        .I1(program_addr[2]),
        .O(\pc_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    \ram_data[11]_i_1 
       (.I0(program_addr[2]),
        .I1(program_addr[1]),
        .I2(program_addr[0]),
        .O(\pc_reg[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h59)) 
    \ram_data[12]_i_1 
       (.I0(program_addr[0]),
        .I1(program_addr[1]),
        .I2(program_addr[2]),
        .O(\pc_reg[1]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    \ram_data[13]_i_1 
       (.I0(program_addr[1]),
        .I1(program_addr[2]),
        .I2(program_addr[0]),
        .O(\pc_reg[1]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \ram_data[1]_i_1 
       (.I0(program_addr[0]),
        .I1(program_addr[2]),
        .I2(program_addr[1]),
        .O(\pc_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ram_data[2]_i_1 
       (.I0(program_addr[1]),
        .I1(program_addr[2]),
        .I2(program_addr[0]),
        .O(\pc_reg[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_data[3]_i_1 
       (.I0(program_addr[1]),
        .I1(program_addr[2]),
        .O(\pc_reg[1]_0 [3]));
endmodule

module data_memory
   (\ram_data_reg[15]_0 ,
    i_clk_IBUF_BUFG,
    acc,
    p_0_in__0,
    Q,
    E);
  output [15:0]\ram_data_reg[15]_0 ;
  input i_clk_IBUF_BUFG;
  input [15:0]acc;
  input p_0_in__0;
  input [3:0]Q;
  input [0:0]E;

  wire [0:0]E;
  wire [3:0]Q;
  wire [15:0]acc;
  wire i_clk_IBUF_BUFG;
  wire p_0_in__0;
  wire [15:0]ram_data0;
  wire [15:0]\ram_data_reg[15]_0 ;

  (* INIT = "256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S_UNIQ_BASE_ DRAM_reg_0_255_0_0
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[0]),
        .O(ram_data0[0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S_HD31 DRAM_reg_0_255_10_10
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[10]),
        .O(ram_data0[10]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S_HD32 DRAM_reg_0_255_11_11
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[11]),
        .O(ram_data0[11]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S_HD33 DRAM_reg_0_255_12_12
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[12]),
        .O(ram_data0[12]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S_HD34 DRAM_reg_0_255_13_13
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[13]),
        .O(ram_data0[13]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S_HD35 DRAM_reg_0_255_14_14
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[14]),
        .O(ram_data0[14]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S_HD36 DRAM_reg_0_255_15_15
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[15]),
        .O(ram_data0[15]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S_HD37 DRAM_reg_0_255_1_1
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[1]),
        .O(ram_data0[1]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S_HD38 DRAM_reg_0_255_2_2
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[2]),
        .O(ram_data0[2]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'hFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S_HD39 DRAM_reg_0_255_3_3
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[3]),
        .O(ram_data0[3]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'hFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S_HD40 DRAM_reg_0_255_4_4
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[4]),
        .O(ram_data0[4]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S_HD41 DRAM_reg_0_255_5_5
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[5]),
        .O(ram_data0[5]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'hFFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S_HD42 DRAM_reg_0_255_6_6
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[6]),
        .O(ram_data0[6]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S_HD43 DRAM_reg_0_255_7_7
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[7]),
        .O(ram_data0[7]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S_HD44 DRAM_reg_0_255_8_8
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[8]),
        .O(ram_data0[8]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "u_data_memory/DRAM" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S_HD45 DRAM_reg_0_255_9_9
       (.A({1'b0,1'b0,1'b0,1'b0,Q}),
        .D(acc[9]),
        .O(ram_data0[9]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[0]),
        .Q(\ram_data_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[10]),
        .Q(\ram_data_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[11]),
        .Q(\ram_data_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[12]),
        .Q(\ram_data_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[13]),
        .Q(\ram_data_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[14]),
        .Q(\ram_data_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[15]),
        .Q(\ram_data_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[1]),
        .Q(\ram_data_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[2]),
        .Q(\ram_data_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[3]),
        .Q(\ram_data_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[4]),
        .Q(\ram_data_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[5]),
        .Q(\ram_data_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[6]),
        .Q(\ram_data_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[7]),
        .Q(\ram_data_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[8]),
        .Q(\ram_data_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(ram_data0[9]),
        .Q(\ram_data_reg[15]_0 [9]),
        .R(1'b0));
endmodule

module datapath
   (O,
    Q,
    \acc_reg[7]_0 ,
    \acc_reg[11]_0 ,
    \acc_reg[14]_0 ,
    D,
    DI,
    S,
    \acc_reg[7]_1 ,
    \acc_reg[11]_1 ,
    \acc_reg[15]_0 ,
    state_reg,
    i_reset_IBUF,
    E,
    \acc_reg[15]_1 ,
    i_clk_IBUF_BUFG);
  output [3:0]O;
  output [15:0]Q;
  output [3:0]\acc_reg[7]_0 ;
  output [3:0]\acc_reg[11]_0 ;
  output [3:0]\acc_reg[14]_0 ;
  output [0:0]D;
  input [0:0]DI;
  input [3:0]S;
  input [3:0]\acc_reg[7]_1 ;
  input [3:0]\acc_reg[11]_1 ;
  input [3:0]\acc_reg[15]_0 ;
  input [0:0]state_reg;
  input i_reset_IBUF;
  input [0:0]E;
  input [15:0]\acc_reg[15]_1 ;
  input i_clk_IBUF_BUFG;

  wire [0:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [3:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire [3:0]\acc_reg[11]_0 ;
  wire [3:0]\acc_reg[11]_1 ;
  wire [3:0]\acc_reg[14]_0 ;
  wire [3:0]\acc_reg[15]_0 ;
  wire [15:0]\acc_reg[15]_1 ;
  wire [3:0]\acc_reg[7]_0 ;
  wire [3:0]\acc_reg[7]_1 ;
  wire alu_out0_carry__0_n_0;
  wire alu_out0_carry__0_n_1;
  wire alu_out0_carry__0_n_2;
  wire alu_out0_carry__0_n_3;
  wire alu_out0_carry__1_n_0;
  wire alu_out0_carry__1_n_1;
  wire alu_out0_carry__1_n_2;
  wire alu_out0_carry__1_n_3;
  wire alu_out0_carry__2_n_1;
  wire alu_out0_carry__2_n_2;
  wire alu_out0_carry__2_n_3;
  wire alu_out0_carry_n_0;
  wire alu_out0_carry_n_1;
  wire alu_out0_carry_n_2;
  wire alu_out0_carry_n_3;
  wire i_clk_IBUF_BUFG;
  wire i_reset_IBUF;
  wire [0:0]state_reg;
  wire [3:3]NLW_alu_out0_carry__2_CO_UNCONNECTED;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \acc_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(E),
        .D(\acc_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(i_reset_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 alu_out0_carry
       (.CI(1'b0),
        .CO({alu_out0_carry_n_0,alu_out0_carry_n_1,alu_out0_carry_n_2,alu_out0_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],DI}),
        .O(O),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 alu_out0_carry__0
       (.CI(alu_out0_carry_n_0),
        .CO({alu_out0_carry__0_n_0,alu_out0_carry__0_n_1,alu_out0_carry__0_n_2,alu_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\acc_reg[7]_0 ),
        .S(\acc_reg[7]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 alu_out0_carry__1
       (.CI(alu_out0_carry__0_n_0),
        .CO({alu_out0_carry__1_n_0,alu_out0_carry__1_n_1,alu_out0_carry__1_n_2,alu_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\acc_reg[11]_0 ),
        .S(\acc_reg[11]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 alu_out0_carry__2
       (.CI(alu_out0_carry__1_n_0),
        .CO({NLW_alu_out0_carry__2_CO_UNCONNECTED[3],alu_out0_carry__2_n_1,alu_out0_carry__2_n_2,alu_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O(\acc_reg[14]_0 ),
        .S(\acc_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \buffer[15]_i_2 
       (.I0(Q[15]),
        .I1(state_reg),
        .O(D));
endmodule

module program_memory
   (p_0_in__0,
    Q,
    E,
    \ram_data_reg[12]_0 ,
    \ram_data_reg[11]_0 ,
    DI,
    \ram_data_reg[15] ,
    \ram_data_reg[13]_0 ,
    \ram_data_reg[15]_0 ,
    S,
    \ram_data_reg[11]_1 ,
    \ram_data_reg[11]_2 ,
    i_valid_IBUF,
    \acc_reg[15] ,
    alu_out0_carry__2,
    \FSM_sequential_state_reg_reg[1] ,
    \acc_reg[15]_0 ,
    \acc_reg[11] ,
    \acc_reg[7] ,
    O,
    D,
    i_clk_IBUF_BUFG);
  output p_0_in__0;
  output [6:0]Q;
  output [0:0]E;
  output [0:0]\ram_data_reg[12]_0 ;
  output \ram_data_reg[11]_0 ;
  output [0:0]DI;
  output [3:0]\ram_data_reg[15] ;
  output \ram_data_reg[13]_0 ;
  output [15:0]\ram_data_reg[15]_0 ;
  output [3:0]S;
  output [3:0]\ram_data_reg[11]_1 ;
  output [3:0]\ram_data_reg[11]_2 ;
  input i_valid_IBUF;
  input [15:0]\acc_reg[15] ;
  input [14:0]alu_out0_carry__2;
  input \FSM_sequential_state_reg_reg[1] ;
  input [3:0]\acc_reg[15]_0 ;
  input [3:0]\acc_reg[11] ;
  input [3:0]\acc_reg[7] ;
  input [3:0]O;
  input [6:0]D;
  input i_clk_IBUF_BUFG;

  wire [6:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire [3:0]O;
  wire [6:0]Q;
  wire [3:0]S;
  wire [3:0]\acc_reg[11] ;
  wire [15:0]\acc_reg[15] ;
  wire [3:0]\acc_reg[15]_0 ;
  wire [3:0]\acc_reg[7] ;
  wire [14:0]alu_out0_carry__2;
  wire alu_out0_carry_i_6_n_0;
  wire i_clk_IBUF_BUFG;
  wire i_valid_IBUF;
  wire in;
  wire p_0_in__0;
  wire \ram_data_reg[11]_0 ;
  wire [3:0]\ram_data_reg[11]_1 ;
  wire [3:0]\ram_data_reg[11]_2 ;
  wire [0:0]\ram_data_reg[12]_0 ;
  wire \ram_data_reg[13]_0 ;
  wire [3:0]\ram_data_reg[15] ;
  wire [15:0]\ram_data_reg[15]_0 ;

  LUT4 #(
    .INIT(16'h0400)) 
    DRAM_reg_0_255_0_0_i_1
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(i_valid_IBUF),
        .O(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I1(Q[6]),
        .I2(i_valid_IBUF),
        .I3(\FSM_sequential_state_reg_reg[1] ),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\ram_data_reg[13]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \acc[0]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\acc_reg[15] [0]),
        .I3(Q[0]),
        .I4(Q[6]),
        .I5(O[0]),
        .O(\ram_data_reg[15]_0 [0]));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[10]_i_1 
       (.I0(\acc_reg[11] [2]),
        .I1(\acc_reg[15] [10]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [10]));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[11]_i_1 
       (.I0(\acc_reg[11] [3]),
        .I1(\acc_reg[15] [11]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [11]));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[12]_i_1 
       (.I0(\acc_reg[15]_0 [0]),
        .I1(\acc_reg[15] [12]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[13]_i_1 
       (.I0(\acc_reg[15]_0 [1]),
        .I1(\acc_reg[15] [13]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [13]));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[14]_i_1 
       (.I0(\acc_reg[15]_0 [2]),
        .I1(\acc_reg[15] [14]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \acc[15]_i_1 
       (.I0(Q[5]),
        .I1(i_valid_IBUF),
        .I2(Q[6]),
        .O(\ram_data_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[15]_i_2 
       (.I0(\acc_reg[15]_0 [3]),
        .I1(\acc_reg[15] [15]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [15]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \acc[1]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\acc_reg[15] [1]),
        .I3(Q[1]),
        .I4(Q[6]),
        .I5(O[1]),
        .O(\ram_data_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \acc[2]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\acc_reg[15] [2]),
        .I3(Q[2]),
        .I4(Q[6]),
        .I5(O[2]),
        .O(\ram_data_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \acc[3]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\acc_reg[15] [3]),
        .I3(Q[3]),
        .I4(Q[6]),
        .I5(O[3]),
        .O(\ram_data_reg[15]_0 [3]));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[4]_i_1 
       (.I0(\acc_reg[7] [0]),
        .I1(\acc_reg[15] [4]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [4]));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[5]_i_1 
       (.I0(\acc_reg[7] [1]),
        .I1(\acc_reg[15] [5]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [5]));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[6]_i_1 
       (.I0(\acc_reg[7] [2]),
        .I1(\acc_reg[15] [6]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [6]));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[7]_i_1 
       (.I0(\acc_reg[7] [3]),
        .I1(\acc_reg[15] [7]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [7]));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[8]_i_1 
       (.I0(\acc_reg[11] [0]),
        .I1(\acc_reg[15] [8]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [8]));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \acc[9]_i_1 
       (.I0(\acc_reg[11] [1]),
        .I1(\acc_reg[15] [9]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\ram_data_reg[15]_0 [9]));
  LUT6 #(
    .INIT(64'h755FD5FF8AA02A00)) 
    alu_out0_carry__0_i_1
       (.I0(i_valid_IBUF),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\acc_reg[15] [7]),
        .I4(Q[5]),
        .I5(alu_out0_carry__2[6]),
        .O(\ram_data_reg[11]_1 [3]));
  LUT6 #(
    .INIT(64'h755FD5FF8AA02A00)) 
    alu_out0_carry__0_i_2
       (.I0(i_valid_IBUF),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\acc_reg[15] [6]),
        .I4(Q[5]),
        .I5(alu_out0_carry__2[5]),
        .O(\ram_data_reg[11]_1 [2]));
  LUT6 #(
    .INIT(64'h755FD5FF8AA02A00)) 
    alu_out0_carry__0_i_3
       (.I0(i_valid_IBUF),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\acc_reg[15] [5]),
        .I4(Q[5]),
        .I5(alu_out0_carry__2[4]),
        .O(\ram_data_reg[11]_1 [1]));
  LUT6 #(
    .INIT(64'h755FD5FF8AA02A00)) 
    alu_out0_carry__0_i_4
       (.I0(i_valid_IBUF),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\acc_reg[15] [4]),
        .I4(Q[5]),
        .I5(alu_out0_carry__2[3]),
        .O(\ram_data_reg[11]_1 [0]));
  LUT6 #(
    .INIT(64'h755FD5FF8AA02A00)) 
    alu_out0_carry__1_i_1
       (.I0(i_valid_IBUF),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\acc_reg[15] [11]),
        .I4(Q[5]),
        .I5(alu_out0_carry__2[10]),
        .O(\ram_data_reg[11]_2 [3]));
  LUT6 #(
    .INIT(64'h755FD5FF8AA02A00)) 
    alu_out0_carry__1_i_2
       (.I0(i_valid_IBUF),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\acc_reg[15] [10]),
        .I4(Q[5]),
        .I5(alu_out0_carry__2[9]),
        .O(\ram_data_reg[11]_2 [2]));
  LUT6 #(
    .INIT(64'h755FD5FF8AA02A00)) 
    alu_out0_carry__1_i_3
       (.I0(i_valid_IBUF),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\acc_reg[15] [9]),
        .I4(Q[5]),
        .I5(alu_out0_carry__2[8]),
        .O(\ram_data_reg[11]_2 [1]));
  LUT6 #(
    .INIT(64'h755FD5FF8AA02A00)) 
    alu_out0_carry__1_i_4
       (.I0(i_valid_IBUF),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\acc_reg[15] [8]),
        .I4(Q[5]),
        .I5(alu_out0_carry__2[7]),
        .O(\ram_data_reg[11]_2 [0]));
  LUT6 #(
    .INIT(64'h25D5FFFFDA2A0000)) 
    alu_out0_carry__2_i_1
       (.I0(\acc_reg[15] [15]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(i_valid_IBUF),
        .I5(alu_out0_carry__2[14]),
        .O(\ram_data_reg[15] [3]));
  LUT6 #(
    .INIT(64'h755FD5FF8AA02A00)) 
    alu_out0_carry__2_i_2
       (.I0(i_valid_IBUF),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\acc_reg[15] [14]),
        .I4(Q[5]),
        .I5(alu_out0_carry__2[13]),
        .O(\ram_data_reg[15] [2]));
  LUT6 #(
    .INIT(64'h755FD5FF8AA02A00)) 
    alu_out0_carry__2_i_3
       (.I0(i_valid_IBUF),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\acc_reg[15] [13]),
        .I4(Q[5]),
        .I5(alu_out0_carry__2[12]),
        .O(\ram_data_reg[15] [1]));
  LUT6 #(
    .INIT(64'h755FD5FF8AA02A00)) 
    alu_out0_carry__2_i_4
       (.I0(i_valid_IBUF),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\acc_reg[15] [12]),
        .I4(Q[5]),
        .I5(alu_out0_carry__2[11]),
        .O(\ram_data_reg[15] [0]));
  LUT3 #(
    .INIT(8'h80)) 
    alu_out0_carry_i_1
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(i_valid_IBUF),
        .O(DI));
  LUT6 #(
    .INIT(64'h775F88A088A0775F)) 
    alu_out0_carry_i_2
       (.I0(i_valid_IBUF),
        .I1(\acc_reg[15] [3]),
        .I2(Q[3]),
        .I3(alu_out0_carry_i_6_n_0),
        .I4(in),
        .I5(alu_out0_carry__2[2]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h775F88A088A0775F)) 
    alu_out0_carry_i_3
       (.I0(i_valid_IBUF),
        .I1(\acc_reg[15] [2]),
        .I2(Q[2]),
        .I3(alu_out0_carry_i_6_n_0),
        .I4(in),
        .I5(alu_out0_carry__2[1]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h775F88A088A0775F)) 
    alu_out0_carry_i_4
       (.I0(i_valid_IBUF),
        .I1(\acc_reg[15] [1]),
        .I2(Q[1]),
        .I3(alu_out0_carry_i_6_n_0),
        .I4(in),
        .I5(alu_out0_carry__2[0]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'hAA802A00)) 
    alu_out0_carry_i_5
       (.I0(i_valid_IBUF),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\acc_reg[15] [0]),
        .I4(Q[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    alu_out0_carry_i_6
       (.I0(Q[4]),
        .I1(Q[6]),
        .O(alu_out0_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    alu_out0_carry_i_7
       (.I0(i_valid_IBUF),
        .I1(Q[6]),
        .I2(Q[5]),
        .O(in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \pc[2]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(i_valid_IBUF),
        .I3(Q[6]),
        .O(\ram_data_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00C8)) 
    \ram_data[15]_i_1 
       (.I0(Q[6]),
        .I1(i_valid_IBUF),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(E));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ram_data_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ram_data_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ram_data_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ram_data_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ram_data_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ram_data_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ram_data_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module top
   (i_clk,
    i_reset,
    i_valid,
    o_tx,
    o_tx_done);
  input i_clk;
  input i_reset;
  input i_valid;
  output o_tx;
  output o_tx_done;

  wire [15:0]acc;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_reset;
  wire i_reset_IBUF;
  wire i_valid;
  wire i_valid_IBUF;
  wire [13:11]instruccion;
  wire [15:15]next_buffer;
  wire o_tx;
  wire o_tx_OBUF;
  wire o_tx_done;
  wire o_tx_done_OBUF;
  wire operacion;
  wire [15:0]p_0_in;
  wire p_0_in__0;
  wire [1:1]state_reg;
  wire u_bd_generator_n_0;
  wire u_bip_i_n_0;
  wire u_bip_i_n_1;
  wire u_bip_i_n_2;
  wire u_bip_i_n_20;
  wire u_bip_i_n_21;
  wire u_bip_i_n_22;
  wire u_bip_i_n_23;
  wire u_bip_i_n_24;
  wire u_bip_i_n_25;
  wire u_bip_i_n_26;
  wire u_bip_i_n_27;
  wire u_bip_i_n_28;
  wire u_bip_i_n_29;
  wire u_bip_i_n_3;
  wire u_bip_i_n_30;
  wire u_bip_i_n_31;
  wire u_bip_i_n_33;
  wire u_bip_i_n_34;
  wire u_bip_i_n_35;
  wire u_bip_i_n_36;
  wire u_bip_i_n_37;
  wire u_bip_i_n_38;
  wire u_bip_i_n_39;
  wire u_data_memory_n_0;
  wire u_data_memory_n_1;
  wire u_data_memory_n_10;
  wire u_data_memory_n_11;
  wire u_data_memory_n_12;
  wire u_data_memory_n_13;
  wire u_data_memory_n_14;
  wire u_data_memory_n_15;
  wire u_data_memory_n_2;
  wire u_data_memory_n_3;
  wire u_data_memory_n_4;
  wire u_data_memory_n_5;
  wire u_data_memory_n_6;
  wire u_data_memory_n_7;
  wire u_data_memory_n_8;
  wire u_data_memory_n_9;
  wire \u_datapath/acc ;
  wire u_program_memory_n_10;
  wire u_program_memory_n_12;
  wire u_program_memory_n_13;
  wire u_program_memory_n_14;
  wire u_program_memory_n_15;
  wire u_program_memory_n_16;
  wire u_program_memory_n_33;
  wire u_program_memory_n_34;
  wire u_program_memory_n_35;
  wire u_program_memory_n_36;
  wire u_program_memory_n_37;
  wire u_program_memory_n_38;
  wire u_program_memory_n_39;
  wire u_program_memory_n_4;
  wire u_program_memory_n_40;
  wire u_program_memory_n_41;
  wire u_program_memory_n_42;
  wire u_program_memory_n_43;
  wire u_program_memory_n_44;
  wire u_program_memory_n_5;
  wire u_program_memory_n_6;
  wire u_program_memory_n_7;
  wire u_program_memory_n_8;
  wire u_tx_uart_n_3;

initial begin
 $sdf_annotate("tb_top_time_synth.sdf",,,,"tool_control");
end
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF i_reset_IBUF_inst
       (.I(i_reset),
        .O(i_reset_IBUF));
  IBUF i_valid_IBUF_inst
       (.I(i_valid),
        .O(i_valid_IBUF));
  OBUF o_tx_OBUF_inst
       (.I(o_tx_OBUF),
        .O(o_tx));
  OBUF o_tx_done_OBUF_inst
       (.I(o_tx_done_OBUF),
        .O(o_tx_done));
  baudrate_generator u_bd_generator
       (.\contador_reg[54]_0 (u_bd_generator_n_0),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_reset_IBUF(i_reset_IBUF));
  bip_i u_bip_i
       (.D(next_buffer),
        .DI(operacion),
        .E(\u_datapath/acc ),
        .O({u_bip_i_n_0,u_bip_i_n_1,u_bip_i_n_2,u_bip_i_n_3}),
        .Q(acc),
        .S({u_program_memory_n_33,u_program_memory_n_34,u_program_memory_n_35,u_program_memory_n_36}),
        .\acc_reg[11] ({u_bip_i_n_24,u_bip_i_n_25,u_bip_i_n_26,u_bip_i_n_27}),
        .\acc_reg[11]_0 ({u_program_memory_n_41,u_program_memory_n_42,u_program_memory_n_43,u_program_memory_n_44}),
        .\acc_reg[14] ({u_bip_i_n_28,u_bip_i_n_29,u_bip_i_n_30,u_bip_i_n_31}),
        .\acc_reg[15] ({u_program_memory_n_12,u_program_memory_n_13,u_program_memory_n_14,u_program_memory_n_15}),
        .\acc_reg[15]_0 (p_0_in),
        .\acc_reg[7] ({u_bip_i_n_20,u_bip_i_n_21,u_bip_i_n_22,u_bip_i_n_23}),
        .\acc_reg[7]_0 ({u_program_memory_n_37,u_program_memory_n_38,u_program_memory_n_39,u_program_memory_n_40}),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_reset_IBUF(i_reset_IBUF),
        .i_valid_IBUF(i_valid_IBUF),
        .\pc_reg[0] (instruccion),
        .\pc_reg[1] ({u_bip_i_n_33,u_bip_i_n_34,u_bip_i_n_35,u_bip_i_n_36,u_bip_i_n_37,u_bip_i_n_38,u_bip_i_n_39}),
        .\pc_reg[1]_0 (u_program_memory_n_10),
        .state_reg(state_reg));
  data_memory u_data_memory
       (.E(u_program_memory_n_8),
        .Q({u_program_memory_n_4,u_program_memory_n_5,u_program_memory_n_6,u_program_memory_n_7}),
        .acc(acc),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .p_0_in__0(p_0_in__0),
        .\ram_data_reg[15]_0 ({u_data_memory_n_0,u_data_memory_n_1,u_data_memory_n_2,u_data_memory_n_3,u_data_memory_n_4,u_data_memory_n_5,u_data_memory_n_6,u_data_memory_n_7,u_data_memory_n_8,u_data_memory_n_9,u_data_memory_n_10,u_data_memory_n_11,u_data_memory_n_12,u_data_memory_n_13,u_data_memory_n_14,u_data_memory_n_15}));
  program_memory u_program_memory
       (.D({u_bip_i_n_33,u_bip_i_n_34,u_bip_i_n_35,u_bip_i_n_36,u_bip_i_n_37,u_bip_i_n_38,u_bip_i_n_39}),
        .DI(operacion),
        .E(u_program_memory_n_8),
        .\FSM_sequential_state_reg_reg[1] (u_tx_uart_n_3),
        .O({u_bip_i_n_0,u_bip_i_n_1,u_bip_i_n_2,u_bip_i_n_3}),
        .Q({instruccion,u_program_memory_n_4,u_program_memory_n_5,u_program_memory_n_6,u_program_memory_n_7}),
        .S({u_program_memory_n_33,u_program_memory_n_34,u_program_memory_n_35,u_program_memory_n_36}),
        .\acc_reg[11] ({u_bip_i_n_24,u_bip_i_n_25,u_bip_i_n_26,u_bip_i_n_27}),
        .\acc_reg[15] ({u_data_memory_n_0,u_data_memory_n_1,u_data_memory_n_2,u_data_memory_n_3,u_data_memory_n_4,u_data_memory_n_5,u_data_memory_n_6,u_data_memory_n_7,u_data_memory_n_8,u_data_memory_n_9,u_data_memory_n_10,u_data_memory_n_11,u_data_memory_n_12,u_data_memory_n_13,u_data_memory_n_14,u_data_memory_n_15}),
        .\acc_reg[15]_0 ({u_bip_i_n_28,u_bip_i_n_29,u_bip_i_n_30,u_bip_i_n_31}),
        .\acc_reg[7] ({u_bip_i_n_20,u_bip_i_n_21,u_bip_i_n_22,u_bip_i_n_23}),
        .alu_out0_carry__2(acc[15:1]),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_valid_IBUF(i_valid_IBUF),
        .p_0_in__0(p_0_in__0),
        .\ram_data_reg[11]_0 (u_program_memory_n_10),
        .\ram_data_reg[11]_1 ({u_program_memory_n_37,u_program_memory_n_38,u_program_memory_n_39,u_program_memory_n_40}),
        .\ram_data_reg[11]_2 ({u_program_memory_n_41,u_program_memory_n_42,u_program_memory_n_43,u_program_memory_n_44}),
        .\ram_data_reg[12]_0 (\u_datapath/acc ),
        .\ram_data_reg[13]_0 (u_program_memory_n_16),
        .\ram_data_reg[15] ({u_program_memory_n_12,u_program_memory_n_13,u_program_memory_n_14,u_program_memory_n_15}),
        .\ram_data_reg[15]_0 (p_0_in));
  tx_uart u_tx_uart
       (.D(next_buffer),
        .\FSM_sequential_state_reg_reg[0]_0 (u_tx_uart_n_3),
        .\FSM_sequential_state_reg_reg[1]_0 (state_reg),
        .\FSM_sequential_state_reg_reg[1]_1 (u_program_memory_n_16),
        .\FSM_sequential_state_reg_reg[1]_2 (u_bd_generator_n_0),
        .Q(acc[14:0]),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_reset_IBUF(i_reset_IBUF),
        .o_tx_OBUF(o_tx_OBUF),
        .o_tx_done_OBUF(o_tx_done_OBUF));
endmodule

module tx_uart
   (o_tx_OBUF,
    \FSM_sequential_state_reg_reg[1]_0 ,
    o_tx_done_OBUF,
    \FSM_sequential_state_reg_reg[0]_0 ,
    i_reset_IBUF,
    i_clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[1]_1 ,
    \FSM_sequential_state_reg_reg[1]_2 ,
    D,
    Q);
  output o_tx_OBUF;
  output [0:0]\FSM_sequential_state_reg_reg[1]_0 ;
  output o_tx_done_OBUF;
  output \FSM_sequential_state_reg_reg[0]_0 ;
  input i_reset_IBUF;
  input i_clk_IBUF_BUFG;
  input \FSM_sequential_state_reg_reg[1]_1 ;
  input \FSM_sequential_state_reg_reg[1]_2 ;
  input [0:0]D;
  input [14:0]Q;

  wire [0:0]D;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_0 ;
  wire [0:0]\FSM_sequential_state_reg_reg[1]_0 ;
  wire \FSM_sequential_state_reg_reg[1]_1 ;
  wire \FSM_sequential_state_reg_reg[1]_2 ;
  wire [14:0]Q;
  wire \bits_counter[0]_i_1_n_0 ;
  wire \bits_counter[1]_i_1_n_0 ;
  wire \bits_counter[2]_i_1_n_0 ;
  wire \bits_counter[3]_i_2_n_0 ;
  wire \bits_counter[3]_i_3_n_0 ;
  wire [0:0]buffer;
  wire \buffer[15]_i_3_n_0 ;
  wire \buffer_reg_n_0_[10] ;
  wire \buffer_reg_n_0_[11] ;
  wire \buffer_reg_n_0_[12] ;
  wire \buffer_reg_n_0_[13] ;
  wire \buffer_reg_n_0_[14] ;
  wire \buffer_reg_n_0_[15] ;
  wire \buffer_reg_n_0_[1] ;
  wire \buffer_reg_n_0_[2] ;
  wire \buffer_reg_n_0_[3] ;
  wire \buffer_reg_n_0_[4] ;
  wire \buffer_reg_n_0_[5] ;
  wire \buffer_reg_n_0_[6] ;
  wire \buffer_reg_n_0_[7] ;
  wire \buffer_reg_n_0_[8] ;
  wire \buffer_reg_n_0_[9] ;
  wire i_clk_IBUF_BUFG;
  wire i_reset_IBUF;
  wire next_bit_counter;
  wire [14:0]next_buffer;
  wire next_buffer_0;
  wire next_sampling_counter;
  wire next_tx;
  wire o_tx_OBUF;
  wire o_tx_done_OBUF;
  wire o_tx_done_OBUF_inst_i_2_n_0;
  wire [3:0]sampling_counter;
  wire \sampling_counter[0]_i_1_n_0 ;
  wire \sampling_counter[1]_i_1_n_0 ;
  wire \sampling_counter[2]_i_1_n_0 ;
  wire \sampling_counter[3]_i_2_n_0 ;
  wire [3:0]sel0;
  wire [0:0]state_reg;

  LUT6 #(
    .INIT(64'h0000000052625666)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(\FSM_sequential_state_reg_reg[1]_2 ),
        .I3(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I4(\FSM_sequential_state_reg_reg[1]_0 ),
        .I5(i_reset_IBUF),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000005666A2A2)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(\FSM_sequential_state_reg_reg[1]_2 ),
        .I3(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I4(state_reg),
        .I5(i_reset_IBUF),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000FF40)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(\bits_counter[3]_i_3_n_0 ),
        .I1(sel0[3]),
        .I2(\FSM_sequential_state_reg_reg[1]_0 ),
        .I3(state_reg),
        .I4(\buffer[15]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state_reg[1]_i_5 
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\FSM_sequential_state_reg_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_reg[1]_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \bits_counter[0]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(sel0[0]),
        .O(\bits_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bits_counter[1]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(\bits_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bits_counter[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\FSM_sequential_state_reg_reg[1]_0 ),
        .I3(sel0[2]),
        .O(\bits_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0208020800080208)) 
    \bits_counter[3]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_2 ),
        .I1(state_reg),
        .I2(\buffer[15]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg_reg[1]_0 ),
        .I4(sel0[3]),
        .I5(\bits_counter[3]_i_3_n_0 ),
        .O(next_bit_counter));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bits_counter[3]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\FSM_sequential_state_reg_reg[1]_0 ),
        .I4(sel0[3]),
        .O(\bits_counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \bits_counter[3]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\bits_counter[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_bit_counter),
        .D(\bits_counter[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_bit_counter),
        .D(\bits_counter[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_bit_counter),
        .D(\bits_counter[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_bit_counter),
        .D(\bits_counter[3]_i_2_n_0 ),
        .Q(sel0[3]),
        .R(i_reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[0]_i_1 
       (.I0(\buffer_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[0]),
        .O(next_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[10]_i_1 
       (.I0(\buffer_reg_n_0_[11] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[10]),
        .O(next_buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[11]_i_1 
       (.I0(\buffer_reg_n_0_[12] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[11]),
        .O(next_buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[12]_i_1 
       (.I0(\buffer_reg_n_0_[13] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[12]),
        .O(next_buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[13]_i_1 
       (.I0(\buffer_reg_n_0_[14] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[13]),
        .O(next_buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[14]_i_1 
       (.I0(\buffer_reg_n_0_[15] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[14]),
        .O(next_buffer[14]));
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \buffer[15]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_1 ),
        .I1(\FSM_sequential_state_reg_reg[1]_2 ),
        .I2(state_reg),
        .I3(\FSM_sequential_state_reg_reg[1]_0 ),
        .I4(\buffer[15]_i_3_n_0 ),
        .O(next_buffer_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \buffer[15]_i_3 
       (.I0(sampling_counter[2]),
        .I1(sampling_counter[0]),
        .I2(sampling_counter[1]),
        .I3(sampling_counter[3]),
        .O(\buffer[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[1]_i_1 
       (.I0(\buffer_reg_n_0_[2] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[1]),
        .O(next_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[2]_i_1 
       (.I0(\buffer_reg_n_0_[3] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[2]),
        .O(next_buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[3]_i_1 
       (.I0(\buffer_reg_n_0_[4] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[3]),
        .O(next_buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[4]_i_1 
       (.I0(\buffer_reg_n_0_[5] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[4]),
        .O(next_buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[5]_i_1 
       (.I0(\buffer_reg_n_0_[6] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[5]),
        .O(next_buffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[6]_i_1 
       (.I0(\buffer_reg_n_0_[7] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[6]),
        .O(next_buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[7]_i_1 
       (.I0(\buffer_reg_n_0_[8] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[7]),
        .O(next_buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[8]_i_1 
       (.I0(\buffer_reg_n_0_[9] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[8]),
        .O(next_buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[9]_i_1 
       (.I0(\buffer_reg_n_0_[10] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[9]),
        .O(next_buffer[9]));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[0]),
        .Q(buffer),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[10]),
        .Q(\buffer_reg_n_0_[10] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[11]),
        .Q(\buffer_reg_n_0_[11] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[12]),
        .Q(\buffer_reg_n_0_[12] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[13]),
        .Q(\buffer_reg_n_0_[13] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[14]),
        .Q(\buffer_reg_n_0_[14] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(D),
        .Q(\buffer_reg_n_0_[15] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[1]),
        .Q(\buffer_reg_n_0_[1] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[2]),
        .Q(\buffer_reg_n_0_[2] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[3]),
        .Q(\buffer_reg_n_0_[3] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[4]),
        .Q(\buffer_reg_n_0_[4] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[5]),
        .Q(\buffer_reg_n_0_[5] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[6]),
        .Q(\buffer_reg_n_0_[6] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[7]),
        .Q(\buffer_reg_n_0_[7] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[8]),
        .Q(\buffer_reg_n_0_[8] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer_0),
        .D(next_buffer[9]),
        .Q(\buffer_reg_n_0_[9] ),
        .R(i_reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    o_tx_done_OBUF_inst_i_1
       (.I0(o_tx_done_OBUF_inst_i_2_n_0),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(\FSM_sequential_state_reg_reg[1]_2 ),
        .O(o_tx_done_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    o_tx_done_OBUF_inst_i_2
       (.I0(sampling_counter[3]),
        .I1(sampling_counter[1]),
        .I2(sampling_counter[0]),
        .I3(sampling_counter[2]),
        .I4(state_reg),
        .O(o_tx_done_OBUF_inst_i_2_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    \sampling_counter[0]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(state_reg),
        .I2(sampling_counter[0]),
        .O(\sampling_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \sampling_counter[1]_i_1 
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(sampling_counter[0]),
        .I3(sampling_counter[1]),
        .O(\sampling_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h77708880)) 
    \sampling_counter[2]_i_1 
       (.I0(sampling_counter[0]),
        .I1(sampling_counter[1]),
        .I2(\FSM_sequential_state_reg_reg[1]_0 ),
        .I3(state_reg),
        .I4(sampling_counter[2]),
        .O(\sampling_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \sampling_counter[3]_i_1 
       (.I0(o_tx_done_OBUF_inst_i_2_n_0),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(state_reg),
        .I3(\FSM_sequential_state_reg_reg[1]_2 ),
        .I4(\FSM_sequential_state_reg_reg[1]_1 ),
        .O(next_sampling_counter));
  LUT6 #(
    .INIT(64'h7F7F7F0080808000)) 
    \sampling_counter[3]_i_2 
       (.I0(sampling_counter[1]),
        .I1(sampling_counter[0]),
        .I2(sampling_counter[2]),
        .I3(\FSM_sequential_state_reg_reg[1]_0 ),
        .I4(state_reg),
        .I5(sampling_counter[3]),
        .O(\sampling_counter[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_sampling_counter),
        .D(\sampling_counter[0]_i_1_n_0 ),
        .Q(sampling_counter[0]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_sampling_counter),
        .D(\sampling_counter[1]_i_1_n_0 ),
        .Q(sampling_counter[1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_sampling_counter),
        .D(\sampling_counter[2]_i_1_n_0 ),
        .Q(sampling_counter[2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_sampling_counter),
        .D(\sampling_counter[3]_i_2_n_0 ),
        .Q(sampling_counter[3]),
        .R(i_reset_IBUF));
  LUT3 #(
    .INIT(8'hD9)) 
    tx_data_i_1
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(buffer),
        .O(next_tx));
  FDSE #(
    .INIT(1'b1)) 
    tx_data_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_tx),
        .Q(o_tx_OBUF),
        .S(i_reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
