// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Jul 16 21:47:57 2021
// Host        : Archimedes running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               T:/Repositorios/arqui2020/tp4-MIPS/tp4-mips.sim/sim_1/synth/timing/xsim/tb_top_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* BAUDRATE = "9600" *) (* CUENTA = "325.520833" *) (* F_CLOCK = "50000000.000000" *) 
(* N_BITS = "63" *) (* SAMPLING = "16" *) 
module baudrate_generator
   (i_clk,
    i_reset,
    o_tick);
  input i_clk;
  input i_reset;
  output o_tick;

  wire \contador[0]_i_1_n_0 ;
  wire \contador[0]_i_3_n_0 ;
  wire \contador[0]_i_4_n_0 ;
  wire \contador[0]_i_5_n_0 ;
  wire \contador[0]_i_6_n_0 ;
  wire \contador[0]_i_7_n_0 ;
  wire \contador[0]_i_8_n_0 ;
  wire \contador[0]_i_9_n_0 ;
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
  wire i_clk;
  wire i_reset;
  wire o_tick;
  wire o_tick_INST_0_i_10_n_0;
  wire o_tick_INST_0_i_11_n_0;
  wire o_tick_INST_0_i_12_n_0;
  wire o_tick_INST_0_i_13_n_0;
  wire o_tick_INST_0_i_14_n_0;
  wire o_tick_INST_0_i_15_n_0;
  wire o_tick_INST_0_i_16_n_0;
  wire o_tick_INST_0_i_17_n_0;
  wire o_tick_INST_0_i_1_n_0;
  wire o_tick_INST_0_i_2_n_0;
  wire o_tick_INST_0_i_3_n_0;
  wire o_tick_INST_0_i_4_n_0;
  wire o_tick_INST_0_i_5_n_0;
  wire o_tick_INST_0_i_6_n_0;
  wire o_tick_INST_0_i_7_n_0;
  wire o_tick_INST_0_i_8_n_0;
  wire o_tick_INST_0_i_9_n_0;
  wire [3:2]\NLW_contador_reg[60]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_contador_reg[60]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \contador[0]_i_1 
       (.I0(i_reset),
        .I1(\contador[0]_i_3_n_0 ),
        .I2(o_tick_INST_0_i_3_n_0),
        .I3(o_tick_INST_0_i_4_n_0),
        .I4(o_tick_INST_0_i_5_n_0),
        .I5(o_tick_INST_0_i_6_n_0),
        .O(\contador[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \contador[0]_i_3 
       (.I0(o_tick_INST_0_i_8_n_0),
        .I1(\contador[0]_i_8_n_0 ),
        .I2(o_tick_INST_0_i_7_n_0),
        .I3(\contador[0]_i_9_n_0 ),
        .O(\contador[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_4 
       (.I0(contador_reg[3]),
        .O(\contador[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_5 
       (.I0(contador_reg[2]),
        .O(\contador[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_6 
       (.I0(contador_reg[1]),
        .O(\contador[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_7 
       (.I0(contador_reg[0]),
        .O(\contador[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \contador[0]_i_8 
       (.I0(contador_reg[32]),
        .I1(contador_reg[31]),
        .I2(contador_reg[34]),
        .I3(contador_reg[33]),
        .O(\contador[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \contador[0]_i_9 
       (.I0(contador_reg[40]),
        .I1(contador_reg[39]),
        .I2(contador_reg[42]),
        .I3(contador_reg[41]),
        .O(\contador[0]_i_9_n_0 ));
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_7 ),
        .Q(contador_reg[0]),
        .S(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\contador_reg[0]_i_2_n_0 ,\contador_reg[0]_i_2_n_1 ,\contador_reg[0]_i_2_n_2 ,\contador_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[0]_i_2_n_4 ,\contador_reg[0]_i_2_n_5 ,\contador_reg[0]_i_2_n_6 ,\contador_reg[0]_i_2_n_7 }),
        .S({\contador[0]_i_4_n_0 ,\contador[0]_i_5_n_0 ,\contador[0]_i_6_n_0 ,\contador[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_5 ),
        .Q(contador_reg[10]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_4 ),
        .Q(contador_reg[11]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_7 ),
        .Q(contador_reg[12]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_6 ),
        .Q(contador_reg[13]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_5 ),
        .Q(contador_reg[14]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_4 ),
        .Q(contador_reg[15]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_7 ),
        .Q(contador_reg[16]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_6 ),
        .Q(contador_reg[17]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_5 ),
        .Q(contador_reg[18]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_4 ),
        .Q(contador_reg[19]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_6 ),
        .Q(contador_reg[1]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_7 ),
        .Q(contador_reg[20]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_6 ),
        .Q(contador_reg[21]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_5 ),
        .Q(contador_reg[22]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_4 ),
        .Q(contador_reg[23]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_7 ),
        .Q(contador_reg[24]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_6 ),
        .Q(contador_reg[25]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_5 ),
        .Q(contador_reg[26]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_4 ),
        .Q(contador_reg[27]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_7 ),
        .Q(contador_reg[28]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_6 ),
        .Q(contador_reg[29]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \contador_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_5 ),
        .Q(contador_reg[2]),
        .S(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_5 ),
        .Q(contador_reg[30]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_4 ),
        .Q(contador_reg[31]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_7 ),
        .Q(contador_reg[32]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_6 ),
        .Q(contador_reg[33]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_5 ),
        .Q(contador_reg[34]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_4 ),
        .Q(contador_reg[35]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_7 ),
        .Q(contador_reg[36]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_6 ),
        .Q(contador_reg[37]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_5 ),
        .Q(contador_reg[38]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_4 ),
        .Q(contador_reg[39]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_4 ),
        .Q(contador_reg[3]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_7 ),
        .Q(contador_reg[40]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_6 ),
        .Q(contador_reg[41]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_5 ),
        .Q(contador_reg[42]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_4 ),
        .Q(contador_reg[43]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_7 ),
        .Q(contador_reg[44]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_6 ),
        .Q(contador_reg[45]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_5 ),
        .Q(contador_reg[46]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_4 ),
        .Q(contador_reg[47]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_7 ),
        .Q(contador_reg[48]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_6 ),
        .Q(contador_reg[49]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_7 ),
        .Q(contador_reg[4]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_5 ),
        .Q(contador_reg[50]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_4 ),
        .Q(contador_reg[51]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_7 ),
        .Q(contador_reg[52]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_6 ),
        .Q(contador_reg[53]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_5 ),
        .Q(contador_reg[54]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_4 ),
        .Q(contador_reg[55]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_7 ),
        .Q(contador_reg[56]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_6 ),
        .Q(contador_reg[57]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_5 ),
        .Q(contador_reg[58]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_4 ),
        .Q(contador_reg[59]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_6 ),
        .Q(contador_reg[5]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[60]_i_1_n_7 ),
        .Q(contador_reg[60]),
        .R(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[60]_i_1_n_6 ),
        .Q(contador_reg[61]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[60]_i_1_n_5 ),
        .Q(contador_reg[62]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \contador_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_5 ),
        .Q(contador_reg[6]),
        .S(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_4 ),
        .Q(contador_reg[7]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \contador_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_7 ),
        .Q(contador_reg[8]),
        .S(\contador[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
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
       (.C(i_clk),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_6 ),
        .Q(contador_reg[9]),
        .R(\contador[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    o_tick_INST_0
       (.I0(o_tick_INST_0_i_1_n_0),
        .I1(o_tick_INST_0_i_2_n_0),
        .I2(o_tick_INST_0_i_3_n_0),
        .I3(o_tick_INST_0_i_4_n_0),
        .I4(o_tick_INST_0_i_5_n_0),
        .I5(o_tick_INST_0_i_6_n_0),
        .O(o_tick));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_tick_INST_0_i_1
       (.I0(contador_reg[41]),
        .I1(contador_reg[42]),
        .I2(contador_reg[39]),
        .I3(contador_reg[40]),
        .I4(o_tick_INST_0_i_7_n_0),
        .O(o_tick_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_10
       (.I0(contador_reg[48]),
        .I1(contador_reg[47]),
        .I2(contador_reg[50]),
        .I3(contador_reg[49]),
        .O(o_tick_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_11
       (.I0(contador_reg[60]),
        .I1(contador_reg[59]),
        .I2(contador_reg[62]),
        .I3(contador_reg[61]),
        .O(o_tick_INST_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_12
       (.I0(contador_reg[56]),
        .I1(contador_reg[55]),
        .I2(contador_reg[58]),
        .I3(contador_reg[57]),
        .O(o_tick_INST_0_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_13
       (.I0(contador_reg[4]),
        .I1(contador_reg[3]),
        .I2(contador_reg[6]),
        .I3(contador_reg[5]),
        .O(o_tick_INST_0_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_14
       (.I0(contador_reg[12]),
        .I1(contador_reg[11]),
        .I2(contador_reg[14]),
        .I3(contador_reg[13]),
        .O(o_tick_INST_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_15
       (.I0(contador_reg[8]),
        .I1(contador_reg[7]),
        .I2(contador_reg[10]),
        .I3(contador_reg[9]),
        .O(o_tick_INST_0_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_16
       (.I0(contador_reg[28]),
        .I1(contador_reg[27]),
        .I2(contador_reg[30]),
        .I3(contador_reg[29]),
        .O(o_tick_INST_0_i_16_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_17
       (.I0(contador_reg[20]),
        .I1(contador_reg[19]),
        .I2(contador_reg[22]),
        .I3(contador_reg[21]),
        .O(o_tick_INST_0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_tick_INST_0_i_2
       (.I0(contador_reg[33]),
        .I1(contador_reg[34]),
        .I2(contador_reg[31]),
        .I3(contador_reg[32]),
        .I4(o_tick_INST_0_i_8_n_0),
        .O(o_tick_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_3
       (.I0(o_tick_INST_0_i_9_n_0),
        .I1(o_tick_INST_0_i_10_n_0),
        .I2(o_tick_INST_0_i_11_n_0),
        .I3(o_tick_INST_0_i_12_n_0),
        .O(o_tick_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    o_tick_INST_0_i_4
       (.I0(o_tick_INST_0_i_13_n_0),
        .I1(contador_reg[0]),
        .I2(contador_reg[2]),
        .I3(contador_reg[1]),
        .I4(o_tick_INST_0_i_14_n_0),
        .I5(o_tick_INST_0_i_15_n_0),
        .O(o_tick_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_tick_INST_0_i_5
       (.I0(contador_reg[25]),
        .I1(contador_reg[26]),
        .I2(contador_reg[23]),
        .I3(contador_reg[24]),
        .I4(o_tick_INST_0_i_16_n_0),
        .O(o_tick_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_tick_INST_0_i_6
       (.I0(contador_reg[17]),
        .I1(contador_reg[18]),
        .I2(contador_reg[15]),
        .I3(contador_reg[16]),
        .I4(o_tick_INST_0_i_17_n_0),
        .O(o_tick_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_7
       (.I0(contador_reg[44]),
        .I1(contador_reg[43]),
        .I2(contador_reg[46]),
        .I3(contador_reg[45]),
        .O(o_tick_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_8
       (.I0(contador_reg[36]),
        .I1(contador_reg[35]),
        .I2(contador_reg[38]),
        .I3(contador_reg[37]),
        .O(o_tick_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_tick_INST_0_i_9
       (.I0(contador_reg[52]),
        .I1(contador_reg[51]),
        .I2(contador_reg[54]),
        .I3(contador_reg[53]),
        .O(o_tick_INST_0_i_9_n_0));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(20.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* EXEC_MODE = "2'b10" *) (* IDLE = "2'b00" *) (* INSTRUCTIONS = "2'b01" *) 
(* N_BITS = "32" *) (* N_BITS_REG = "5" *) (* STEP = "2'b11" *) 
module interface_rx
   (i_clk,
    i_reset,
    i_rx_data,
    i_rx_done,
    estado,
    o_exec_mode,
    o_step);
  input i_clk;
  input i_reset;
  input [31:0]i_rx_data;
  input i_rx_done;
  output [1:0]estado;
  output o_exec_mode;
  output o_step;

  wire \<const0> ;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_10_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_7_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_8_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_9_n_0 ;
  wire [1:0]estado;
  wire i_clk;
  wire i_reset;
  wire [31:0]i_rx_data;
  wire i_rx_done;
  wire rx_done;

  assign o_exec_mode = \<const0> ;
  assign o_step = \<const0> ;
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFDFFFF)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(estado[0]),
        .I1(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I4(rx_done),
        .I5(estado[1]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(estado[0]),
        .I1(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I4(rx_done),
        .I5(estado[1]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_reg[1]_i_10 
       (.I0(i_rx_data[25]),
        .I1(i_rx_data[24]),
        .I2(i_rx_data[27]),
        .I3(i_rx_data[26]),
        .O(\FSM_sequential_state_reg[1]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(i_rx_data[10]),
        .I1(i_rx_data[11]),
        .I2(i_rx_data[8]),
        .I3(i_rx_data[9]),
        .I4(\FSM_sequential_state_reg[1]_i_5_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(i_rx_data[2]),
        .I1(i_rx_data[3]),
        .I2(i_rx_data[0]),
        .I3(i_rx_data[1]),
        .I4(\FSM_sequential_state_reg[1]_i_6_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(\FSM_sequential_state_reg[1]_i_7_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_i_8_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_i_10_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_reg[1]_i_5 
       (.I0(i_rx_data[13]),
        .I1(i_rx_data[12]),
        .I2(i_rx_data[15]),
        .I3(i_rx_data[14]),
        .O(\FSM_sequential_state_reg[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_reg[1]_i_6 
       (.I0(i_rx_data[5]),
        .I1(i_rx_data[4]),
        .I2(i_rx_data[7]),
        .I3(i_rx_data[6]),
        .O(\FSM_sequential_state_reg[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_reg[1]_i_7 
       (.I0(i_rx_data[21]),
        .I1(i_rx_data[20]),
        .I2(i_rx_data[23]),
        .I3(i_rx_data[22]),
        .O(\FSM_sequential_state_reg[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_reg[1]_i_8 
       (.I0(i_rx_data[17]),
        .I1(i_rx_data[16]),
        .I2(i_rx_data[19]),
        .I3(i_rx_data[18]),
        .O(\FSM_sequential_state_reg[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_reg[1]_i_9 
       (.I0(i_rx_data[29]),
        .I1(i_rx_data[28]),
        .I2(i_rx_data[31]),
        .I3(i_rx_data[30]),
        .O(\FSM_sequential_state_reg[1]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "INSTRUCTIONS:01,EXEC_MODE:10,IDLE:00,STEP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(estado[0]),
        .R(i_reset));
  (* FSM_ENCODED_STATES = "INSTRUCTIONS:01,EXEC_MODE:10,IDLE:00,STEP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(estado[1]),
        .R(i_reset));
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    rx_done_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(i_rx_done),
        .Q(rx_done),
        .R(1'b0));
endmodule

(* DATA = "2'b10" *) (* DATA_BITS = "32" *) (* IDLE = "2'b00" *) 
(* N_TICKS = "16" *) (* START = "2'b01" *) (* STOP = "2'b11" *) 
module rx_uart
   (i_clk,
    i_reset,
    i_rx,
    i_ticks,
    o_rx_done,
    o_data_out);
  input i_clk;
  input i_reset;
  input i_rx;
  input i_ticks;
  output o_rx_done;
  output [31:0]o_data_out;

  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \bits_counter[0]_i_1_n_0 ;
  wire \bits_counter[1]_i_1_n_0 ;
  wire \bits_counter[2]_i_1_n_0 ;
  wire \bits_counter[3]_i_1_n_0 ;
  wire \bits_counter[4]_i_1_n_0 ;
  wire \bits_counter[5]_i_2_n_0 ;
  wire \bits_counter[5]_i_3_n_0 ;
  wire \bits_counter[5]_i_4_n_0 ;
  wire [31:0]buffer;
  wire i_clk;
  wire i_reset;
  wire i_rx;
  wire i_ticks;
  wire next_bit_counter;
  wire next_buffer;
  wire next_sampling_counter;
  wire [31:0]o_data_out;
  wire o_rx_done;
  wire o_rx_done_BUFG_inst_i_2_n_0;
  wire o_rx_done__0;
  wire [3:0]sampling_counter;
  wire \sampling_counter[0]_i_1_n_0 ;
  wire \sampling_counter[1]_i_1_n_0 ;
  wire \sampling_counter[2]_i_1_n_0 ;
  wire \sampling_counter[3]_i_2_n_0 ;
  wire \sampling_counter[3]_i_3_n_0 ;
  wire [5:0]sel0;
  wire [1:0]state_reg;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(i_ticks),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2FC0)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(i_ticks),
        .I1(state_reg[0]),
        .I2(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I3(state_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEFFAEAEAEAE)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I2(\sampling_counter[3]_i_3_n_0 ),
        .I3(\bits_counter[5]_i_3_n_0 ),
        .I4(state_reg[0]),
        .I5(o_rx_done_BUFG_inst_i_2_n_0),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(i_rx),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(sampling_counter[3]),
        .I1(i_ticks),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(i_reset));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(i_reset));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bits_counter[0]_i_1 
       (.I0(state_reg[1]),
        .I1(sel0[0]),
        .O(\bits_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bits_counter[1]_i_1 
       (.I0(state_reg[1]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(\bits_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bits_counter[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(state_reg[1]),
        .I3(sel0[2]),
        .O(\bits_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bits_counter[3]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(state_reg[1]),
        .I4(sel0[3]),
        .O(\bits_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bits_counter[4]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(state_reg[1]),
        .I5(sel0[4]),
        .O(\bits_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000030020000000)) 
    \bits_counter[5]_i_1 
       (.I0(\bits_counter[5]_i_3_n_0 ),
        .I1(\sampling_counter[3]_i_3_n_0 ),
        .I2(sampling_counter[3]),
        .I3(i_ticks),
        .I4(state_reg[1]),
        .I5(state_reg[0]),
        .O(next_bit_counter));
  LUT4 #(
    .INIT(16'hD200)) 
    \bits_counter[5]_i_2 
       (.I0(sel0[4]),
        .I1(\bits_counter[5]_i_4_n_0 ),
        .I2(sel0[5]),
        .I3(state_reg[1]),
        .O(\bits_counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \bits_counter[5]_i_3 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\bits_counter[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bits_counter[5]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(\bits_counter[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[0] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[1] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[2] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[3] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[4] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[5] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[5]_i_2_n_0 ),
        .Q(sel0[5]),
        .R(i_reset));
  LUT2 #(
    .INIT(4'h2)) 
    \buffer[31]_i_1 
       (.I0(o_rx_done_BUFG_inst_i_2_n_0),
        .I1(state_reg[0]),
        .O(next_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[1]),
        .Q(buffer[0]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[10] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[11]),
        .Q(buffer[10]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[11] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[12]),
        .Q(buffer[11]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[12] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[13]),
        .Q(buffer[12]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[13] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[14]),
        .Q(buffer[13]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[14] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[15]),
        .Q(buffer[14]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[15] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[16]),
        .Q(buffer[15]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[16] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[17]),
        .Q(buffer[16]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[17] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[18]),
        .Q(buffer[17]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[18] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[19]),
        .Q(buffer[18]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[19] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[20]),
        .Q(buffer[19]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[2]),
        .Q(buffer[1]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[20] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[21]),
        .Q(buffer[20]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[21] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[22]),
        .Q(buffer[21]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[22] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[23]),
        .Q(buffer[22]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[23] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[24]),
        .Q(buffer[23]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[24] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[25]),
        .Q(buffer[24]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[25] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[26]),
        .Q(buffer[25]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[26] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[27]),
        .Q(buffer[26]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[27] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[28]),
        .Q(buffer[27]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[28] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[29]),
        .Q(buffer[28]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[29] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[30]),
        .Q(buffer[29]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[3]),
        .Q(buffer[2]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[30] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[31]),
        .Q(buffer[30]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[31] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(i_rx),
        .Q(buffer[31]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[4]),
        .Q(buffer[3]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[4] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[5]),
        .Q(buffer[4]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[5] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[6]),
        .Q(buffer[5]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[6] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[7]),
        .Q(buffer[6]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[7] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[8]),
        .Q(buffer[7]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[8] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[9]),
        .Q(buffer[8]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[9] 
       (.C(i_clk),
        .CE(next_buffer),
        .D(buffer[10]),
        .Q(buffer[9]),
        .R(i_reset));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.CLR(1'b0),
        .D(buffer[0]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.CLR(1'b0),
        .D(buffer[10]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.CLR(1'b0),
        .D(buffer[11]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.CLR(1'b0),
        .D(buffer[12]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.CLR(1'b0),
        .D(buffer[13]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.CLR(1'b0),
        .D(buffer[14]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.CLR(1'b0),
        .D(buffer[15]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[16] 
       (.CLR(1'b0),
        .D(buffer[16]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[17] 
       (.CLR(1'b0),
        .D(buffer[17]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[18] 
       (.CLR(1'b0),
        .D(buffer[18]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[19] 
       (.CLR(1'b0),
        .D(buffer[19]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.CLR(1'b0),
        .D(buffer[1]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[20] 
       (.CLR(1'b0),
        .D(buffer[20]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[21] 
       (.CLR(1'b0),
        .D(buffer[21]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[22] 
       (.CLR(1'b0),
        .D(buffer[22]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[23] 
       (.CLR(1'b0),
        .D(buffer[23]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[24] 
       (.CLR(1'b0),
        .D(buffer[24]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[25] 
       (.CLR(1'b0),
        .D(buffer[25]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[26] 
       (.CLR(1'b0),
        .D(buffer[26]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[27] 
       (.CLR(1'b0),
        .D(buffer[27]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[28] 
       (.CLR(1'b0),
        .D(buffer[28]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[29] 
       (.CLR(1'b0),
        .D(buffer[29]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.CLR(1'b0),
        .D(buffer[2]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[30] 
       (.CLR(1'b0),
        .D(buffer[30]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[31] 
       (.CLR(1'b0),
        .D(buffer[31]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.CLR(1'b0),
        .D(buffer[3]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.CLR(1'b0),
        .D(buffer[4]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.CLR(1'b0),
        .D(buffer[5]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.CLR(1'b0),
        .D(buffer[6]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.CLR(1'b0),
        .D(buffer[7]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.CLR(1'b0),
        .D(buffer[8]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.CLR(1'b0),
        .D(buffer[9]),
        .G(o_rx_done),
        .GE(1'b1),
        .Q(o_data_out[9]));
  BUFG o_rx_done_BUFG_inst
       (.I(o_rx_done__0),
        .O(o_rx_done));
  LUT2 #(
    .INIT(4'h8)) 
    o_rx_done_BUFG_inst_i_1
       (.I0(o_rx_done_BUFG_inst_i_2_n_0),
        .I1(state_reg[0]),
        .O(o_rx_done__0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    o_rx_done_BUFG_inst_i_2
       (.I0(i_ticks),
        .I1(state_reg[1]),
        .I2(sampling_counter[3]),
        .I3(sampling_counter[1]),
        .I4(sampling_counter[0]),
        .I5(sampling_counter[2]),
        .O(o_rx_done_BUFG_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5754)) 
    \sampling_counter[0]_i_1 
       (.I0(sampling_counter[0]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(i_rx),
        .O(\sampling_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02FEFE02)) 
    \sampling_counter[1]_i_1 
       (.I0(i_rx),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(sampling_counter[1]),
        .I4(sampling_counter[0]),
        .O(\sampling_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FEFEFEFE020202)) 
    \sampling_counter[2]_i_1 
       (.I0(i_rx),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(sampling_counter[1]),
        .I4(sampling_counter[0]),
        .I5(sampling_counter[2]),
        .O(\sampling_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC50CC5CCC5CCC5)) 
    \sampling_counter[3]_i_1 
       (.I0(i_rx),
        .I1(i_ticks),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\sampling_counter[3]_i_3_n_0 ),
        .I5(sampling_counter[3]),
        .O(next_sampling_counter));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCCA303A)) 
    \sampling_counter[3]_i_2 
       (.I0(i_rx),
        .I1(\sampling_counter[3]_i_3_n_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(sampling_counter[3]),
        .O(\sampling_counter[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \sampling_counter[3]_i_3 
       (.I0(sampling_counter[1]),
        .I1(sampling_counter[0]),
        .I2(sampling_counter[2]),
        .O(\sampling_counter[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[0] 
       (.C(i_clk),
        .CE(next_sampling_counter),
        .D(\sampling_counter[0]_i_1_n_0 ),
        .Q(sampling_counter[0]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[1] 
       (.C(i_clk),
        .CE(next_sampling_counter),
        .D(\sampling_counter[1]_i_1_n_0 ),
        .Q(sampling_counter[1]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[2] 
       (.C(i_clk),
        .CE(next_sampling_counter),
        .D(\sampling_counter[2]_i_1_n_0 ),
        .Q(sampling_counter[2]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[3] 
       (.C(i_clk),
        .CE(next_sampling_counter),
        .D(\sampling_counter[3]_i_2_n_0 ),
        .Q(sampling_counter[3]),
        .R(i_reset));
endmodule

(* NotValidForBitStream *)
module top
   (i_clk,
    i_reset,
    i_valid,
    i_rx,
    o_rx_done,
    o_tx_done,
    o_done,
    o_tx,
    rx_data,
    estado,
    estadoT,
    ohalt);
  input i_clk;
  input i_reset;
  input i_valid;
  input i_rx;
  output o_rx_done;
  output o_tx_done;
  output o_done;
  output o_tx;
  output [31:0]rx_data;
  output [1:0]estado;
  output [2:0]estadoT;
  output ohalt;

  wire clk_out;
  wire [1:0]estado;
  wire [2:0]estadoT;
  wire [1:0]estado_OBUF;
  (* IBUF_LOW_PWR *) wire i_clk;
  wire i_reset;
  wire i_reset_IBUF;
  wire i_rx;
  wire i_rx_IBUF;
  wire o_done;
  wire o_rx_done;
  wire o_rx_done_OBUF;
  wire o_tx;
  wire o_tx_OBUF;
  wire o_tx_done;
  wire o_tx_done_OBUF;
  wire ohalt;
  wire [31:0]rx_data;
  wire [31:0]rx_data_OBUF;
  wire NLW_u_clock_locked_UNCONNECTED;
  wire NLW_u_interfaz_rx_o_exec_mode_UNCONNECTED;
  wire NLW_u_interfaz_rx_o_step_UNCONNECTED;

initial begin
 $sdf_annotate("tb_top_time_synth.sdf",,,,"tool_control");
end
  OBUF \estadoT_OBUF[0]_inst 
       (.I(1'b0),
        .O(estadoT[0]));
  OBUF \estadoT_OBUF[1]_inst 
       (.I(1'b0),
        .O(estadoT[1]));
  OBUF \estadoT_OBUF[2]_inst 
       (.I(1'b0),
        .O(estadoT[2]));
  OBUF \estado_OBUF[0]_inst 
       (.I(estado_OBUF[0]),
        .O(estado[0]));
  OBUF \estado_OBUF[1]_inst 
       (.I(estado_OBUF[1]),
        .O(estado[1]));
  IBUF i_reset_IBUF_inst
       (.I(i_reset),
        .O(i_reset_IBUF));
  IBUF i_rx_IBUF_inst
       (.I(i_rx),
        .O(i_rx_IBUF));
  OBUF o_done_OBUF_inst
       (.I(1'b0),
        .O(o_done));
  OBUF o_rx_done_OBUF_inst
       (.I(o_rx_done_OBUF),
        .O(o_rx_done));
  OBUF o_tx_OBUF_inst
       (.I(o_tx_OBUF),
        .O(o_tx));
  OBUF o_tx_done_OBUF_inst
       (.I(o_tx_done_OBUF),
        .O(o_tx_done));
  OBUF ohalt_OBUF_inst
       (.I(1'b0),
        .O(ohalt));
  OBUF \rx_data_OBUF[0]_inst 
       (.I(rx_data_OBUF[0]),
        .O(rx_data[0]));
  OBUF \rx_data_OBUF[10]_inst 
       (.I(rx_data_OBUF[10]),
        .O(rx_data[10]));
  OBUF \rx_data_OBUF[11]_inst 
       (.I(rx_data_OBUF[11]),
        .O(rx_data[11]));
  OBUF \rx_data_OBUF[12]_inst 
       (.I(rx_data_OBUF[12]),
        .O(rx_data[12]));
  OBUF \rx_data_OBUF[13]_inst 
       (.I(rx_data_OBUF[13]),
        .O(rx_data[13]));
  OBUF \rx_data_OBUF[14]_inst 
       (.I(rx_data_OBUF[14]),
        .O(rx_data[14]));
  OBUF \rx_data_OBUF[15]_inst 
       (.I(rx_data_OBUF[15]),
        .O(rx_data[15]));
  OBUF \rx_data_OBUF[16]_inst 
       (.I(rx_data_OBUF[16]),
        .O(rx_data[16]));
  OBUF \rx_data_OBUF[17]_inst 
       (.I(rx_data_OBUF[17]),
        .O(rx_data[17]));
  OBUF \rx_data_OBUF[18]_inst 
       (.I(rx_data_OBUF[18]),
        .O(rx_data[18]));
  OBUF \rx_data_OBUF[19]_inst 
       (.I(rx_data_OBUF[19]),
        .O(rx_data[19]));
  OBUF \rx_data_OBUF[1]_inst 
       (.I(rx_data_OBUF[1]),
        .O(rx_data[1]));
  OBUF \rx_data_OBUF[20]_inst 
       (.I(rx_data_OBUF[20]),
        .O(rx_data[20]));
  OBUF \rx_data_OBUF[21]_inst 
       (.I(rx_data_OBUF[21]),
        .O(rx_data[21]));
  OBUF \rx_data_OBUF[22]_inst 
       (.I(rx_data_OBUF[22]),
        .O(rx_data[22]));
  OBUF \rx_data_OBUF[23]_inst 
       (.I(rx_data_OBUF[23]),
        .O(rx_data[23]));
  OBUF \rx_data_OBUF[24]_inst 
       (.I(rx_data_OBUF[24]),
        .O(rx_data[24]));
  OBUF \rx_data_OBUF[25]_inst 
       (.I(rx_data_OBUF[25]),
        .O(rx_data[25]));
  OBUF \rx_data_OBUF[26]_inst 
       (.I(rx_data_OBUF[26]),
        .O(rx_data[26]));
  OBUF \rx_data_OBUF[27]_inst 
       (.I(rx_data_OBUF[27]),
        .O(rx_data[27]));
  OBUF \rx_data_OBUF[28]_inst 
       (.I(rx_data_OBUF[28]),
        .O(rx_data[28]));
  OBUF \rx_data_OBUF[29]_inst 
       (.I(rx_data_OBUF[29]),
        .O(rx_data[29]));
  OBUF \rx_data_OBUF[2]_inst 
       (.I(rx_data_OBUF[2]),
        .O(rx_data[2]));
  OBUF \rx_data_OBUF[30]_inst 
       (.I(rx_data_OBUF[30]),
        .O(rx_data[30]));
  OBUF \rx_data_OBUF[31]_inst 
       (.I(rx_data_OBUF[31]),
        .O(rx_data[31]));
  OBUF \rx_data_OBUF[3]_inst 
       (.I(rx_data_OBUF[3]),
        .O(rx_data[3]));
  OBUF \rx_data_OBUF[4]_inst 
       (.I(rx_data_OBUF[4]),
        .O(rx_data[4]));
  OBUF \rx_data_OBUF[5]_inst 
       (.I(rx_data_OBUF[5]),
        .O(rx_data[5]));
  OBUF \rx_data_OBUF[6]_inst 
       (.I(rx_data_OBUF[6]),
        .O(rx_data[6]));
  OBUF \rx_data_OBUF[7]_inst 
       (.I(rx_data_OBUF[7]),
        .O(rx_data[7]));
  OBUF \rx_data_OBUF[8]_inst 
       (.I(rx_data_OBUF[8]),
        .O(rx_data[8]));
  OBUF \rx_data_OBUF[9]_inst 
       (.I(rx_data_OBUF[9]),
        .O(rx_data[9]));
  (* IMPORTED_FROM = "t:/Repositorios/arqui2020/tp4-MIPS/tp4-mips.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 u_clock
       (.clk_in1(i_clk),
        .clk_out1(clk_out),
        .locked(NLW_u_clock_locked_UNCONNECTED),
        .reset(i_reset_IBUF));
  (* EXEC_MODE = "2'b10" *) 
  (* IDLE = "2'b00" *) 
  (* INSTRUCTIONS = "2'b01" *) 
  (* N_BITS = "32" *) 
  (* N_BITS_REG = "5" *) 
  (* STEP = "2'b11" *) 
  interface_rx u_interfaz_rx
       (.estado(estado_OBUF),
        .i_clk(clk_out),
        .i_reset(i_reset_IBUF),
        .i_rx_data(rx_data_OBUF),
        .i_rx_done(o_rx_done_OBUF),
        .o_exec_mode(NLW_u_interfaz_rx_o_exec_mode_UNCONNECTED),
        .o_step(NLW_u_interfaz_rx_o_step_UNCONNECTED));
  (* BAUDRATE = "9600" *) 
  (* F_CLOCK = "50000000.000000" *) 
  (* N_BITS = "32" *) 
  (* SAMPLING = "16" *) 
  top_uart u_uart
       (.i_clk(clk_out),
        .i_reset(i_reset_IBUF),
        .i_rx_top(i_rx_IBUF),
        .i_tx_data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_tx_start(1'b0),
        .o_rx_data(rx_data_OBUF),
        .o_rx_done(o_rx_done_OBUF),
        .o_tx_done(o_tx_done_OBUF),
        .o_tx_top(o_tx_OBUF));
endmodule

(* BAUDRATE = "9600" *) (* F_CLOCK = "50000000.000000" *) (* N_BITS = "32" *) 
(* SAMPLING = "16" *) 
module top_uart
   (i_clk,
    i_reset,
    i_rx_top,
    i_tx_data_in,
    i_tx_start,
    o_tx_top,
    o_rx_done,
    o_rx_data,
    o_tx_done);
  input i_clk;
  input i_reset;
  input i_rx_top;
  input [31:0]i_tx_data_in;
  input i_tx_start;
  output o_tx_top;
  output o_rx_done;
  output [31:0]o_rx_data;
  output o_tx_done;

  wire i_clk;
  wire i_reset;
  wire i_rx_top;
  wire [31:0]o_rx_data;
  wire o_rx_done;
  wire o_tx_done;
  wire o_tx_top;
  wire tick;

  (* BAUDRATE = "9600" *) 
  (* CUENTA = "325.520833" *) 
  (* F_CLOCK = "50000000.000000" *) 
  (* N_BITS = "63" *) 
  (* SAMPLING = "16" *) 
  baudrate_generator u_bd_generator
       (.i_clk(i_clk),
        .i_reset(i_reset),
        .o_tick(tick));
  (* DATA = "2'b10" *) 
  (* DATA_BITS = "32" *) 
  (* IDLE = "2'b00" *) 
  (* N_TICKS = "16" *) 
  (* START = "2'b01" *) 
  (* STOP = "2'b11" *) 
  rx_uart u_rx_uart
       (.i_clk(i_clk),
        .i_reset(i_reset),
        .i_rx(i_rx_top),
        .i_ticks(tick),
        .o_data_out(o_rx_data),
        .o_rx_done(o_rx_done));
  (* DATA = "2'b10" *) 
  (* DATA_BITS = "32" *) 
  (* IDLE = "2'b00" *) 
  (* N_TICKS = "16" *) 
  (* START = "2'b01" *) 
  (* STOP = "2'b11" *) 
  tx_uart u_tx_uart
       (.i_clk(i_clk),
        .i_data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_reset(i_reset),
        .i_ticks(tick),
        .i_tx_start(1'b0),
        .o_data_out(o_tx_top),
        .o_tx_done(o_tx_done));
endmodule

(* DATA = "2'b10" *) (* DATA_BITS = "32" *) (* IDLE = "2'b00" *) 
(* N_TICKS = "16" *) (* START = "2'b01" *) (* STOP = "2'b11" *) 
module tx_uart
   (i_clk,
    i_reset,
    i_tx_start,
    i_ticks,
    i_data_in,
    o_tx_done,
    o_data_out);
  input i_clk;
  input i_reset;
  input i_tx_start;
  input i_ticks;
  input [31:0]i_data_in;
  output o_tx_done;
  output o_data_out;

  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \bits_counter[0]_i_1_n_0 ;
  wire \bits_counter[1]_i_1_n_0 ;
  wire \bits_counter[2]_i_1_n_0 ;
  wire \bits_counter[3]_i_1_n_0 ;
  wire \bits_counter[4]_i_1_n_0 ;
  wire \bits_counter[5]_i_2_n_0 ;
  wire \bits_counter[5]_i_3_n_0 ;
  wire i_clk;
  wire i_reset;
  wire i_ticks;
  wire next_bit_counter;
  wire next_sampling_counter;
  wire o_data_out;
  wire o_tx_done;
  wire o_tx_done_INST_0_i_1_n_0;
  wire [3:0]sampling_counter;
  wire \sampling_counter[0]_i_1_n_0 ;
  wire \sampling_counter[1]_i_1_n_0 ;
  wire \sampling_counter[2]_i_1_n_0 ;
  wire \sampling_counter[3]_i_2_n_0 ;
  wire [5:0]sel0;
  wire [1:0]state_reg;
  wire tx_data_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h98CC88CC)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(o_tx_done_INST_0_i_1_n_0),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(i_ticks),
        .I4(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[4]),
        .I5(sel0[5]),
        .O(\FSM_sequential_state_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB4F0)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(o_tx_done_INST_0_i_1_n_0),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(i_ticks),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(i_reset));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(i_reset));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bits_counter[0]_i_1 
       (.I0(state_reg[1]),
        .I1(sel0[0]),
        .O(\bits_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \bits_counter[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(state_reg[1]),
        .O(\bits_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \bits_counter[2]_i_1 
       (.I0(state_reg[1]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(\bits_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \bits_counter[3]_i_1 
       (.I0(state_reg[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .O(\bits_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \bits_counter[4]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(state_reg[1]),
        .O(\bits_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00301000)) 
    \bits_counter[5]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I1(o_tx_done_INST_0_i_1_n_0),
        .I2(i_ticks),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(next_bit_counter));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \bits_counter[5]_i_2 
       (.I0(state_reg[1]),
        .I1(sel0[4]),
        .I2(\bits_counter[5]_i_3_n_0 ),
        .I3(sel0[5]),
        .O(\bits_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \bits_counter[5]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\bits_counter[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[0] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[1] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[2] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[3] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[4] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \bits_counter_reg[5] 
       (.C(i_clk),
        .CE(next_bit_counter),
        .D(\bits_counter[5]_i_2_n_0 ),
        .Q(sel0[5]),
        .R(i_reset));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    o_tx_done_INST_0
       (.I0(o_tx_done_INST_0_i_1_n_0),
        .I1(i_ticks),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .O(o_tx_done));
  LUT4 #(
    .INIT(16'h7FFF)) 
    o_tx_done_INST_0_i_1
       (.I0(sampling_counter[1]),
        .I1(sampling_counter[0]),
        .I2(sampling_counter[2]),
        .I3(sampling_counter[3]),
        .O(o_tx_done_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \sampling_counter[0]_i_1 
       (.I0(sampling_counter[0]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .O(\sampling_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    \sampling_counter[1]_i_1 
       (.I0(sampling_counter[1]),
        .I1(sampling_counter[0]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .O(\sampling_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h78787800)) 
    \sampling_counter[2]_i_1 
       (.I0(sampling_counter[1]),
        .I1(sampling_counter[0]),
        .I2(sampling_counter[2]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(\sampling_counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8AA0)) 
    \sampling_counter[3]_i_1 
       (.I0(i_ticks),
        .I1(o_tx_done_INST_0_i_1_n_0),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(next_sampling_counter));
  LUT6 #(
    .INIT(64'h0EEEEEEEE0000000)) 
    \sampling_counter[3]_i_2 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(sampling_counter[2]),
        .I3(sampling_counter[0]),
        .I4(sampling_counter[1]),
        .I5(sampling_counter[3]),
        .O(\sampling_counter[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[0] 
       (.C(i_clk),
        .CE(next_sampling_counter),
        .D(\sampling_counter[0]_i_1_n_0 ),
        .Q(sampling_counter[0]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[1] 
       (.C(i_clk),
        .CE(next_sampling_counter),
        .D(\sampling_counter[1]_i_1_n_0 ),
        .Q(sampling_counter[1]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[2] 
       (.C(i_clk),
        .CE(next_sampling_counter),
        .D(\sampling_counter[2]_i_1_n_0 ),
        .Q(sampling_counter[2]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[3] 
       (.C(i_clk),
        .CE(next_sampling_counter),
        .D(\sampling_counter[3]_i_2_n_0 ),
        .Q(sampling_counter[3]),
        .R(i_reset));
  LUT2 #(
    .INIT(4'h9)) 
    tx_data_i_1
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .O(tx_data_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    tx_data_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(tx_data_i_1_n_0),
        .Q(o_data_out),
        .S(i_reset));
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
