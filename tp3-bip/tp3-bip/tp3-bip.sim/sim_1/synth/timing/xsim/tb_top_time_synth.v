// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Dec  7 19:23:14 2020
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

module baudrate_generator
   (tick,
    CLK,
    i_reset_IBUF);
  output tick;
  input CLK;
  input i_reset_IBUF;

  wire CLK;
  wire \FSM_onehot_state_reg[2]_i_10_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_11_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_12_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_13_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_14_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_15_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_16_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_17_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_18_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_19_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_5_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_6_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_7_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_8_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_9_n_0 ;
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
  wire i_reset_IBUF;
  wire tick;
  wire [3:2]\NLW_contador_reg[60]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_contador_reg[60]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state_reg[2]_i_10 
       (.I0(\FSM_onehot_state_reg[2]_i_18_n_0 ),
        .I1(contador_reg[5]),
        .I2(contador_reg[8]),
        .I3(contador_reg[7]),
        .I4(contador_reg[10]),
        .I5(\FSM_onehot_state_reg[2]_i_19_n_0 ),
        .O(\FSM_onehot_state_reg[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state_reg[2]_i_11 
       (.I0(contador_reg[54]),
        .I1(contador_reg[53]),
        .I2(contador_reg[52]),
        .I3(contador_reg[51]),
        .O(\FSM_onehot_state_reg[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state_reg[2]_i_12 
       (.I0(contador_reg[58]),
        .I1(contador_reg[57]),
        .I2(contador_reg[56]),
        .I3(contador_reg[55]),
        .O(\FSM_onehot_state_reg[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state_reg[2]_i_13 
       (.I0(contador_reg[38]),
        .I1(contador_reg[37]),
        .I2(contador_reg[36]),
        .I3(contador_reg[35]),
        .O(\FSM_onehot_state_reg[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state_reg[2]_i_14 
       (.I0(contador_reg[42]),
        .I1(contador_reg[41]),
        .I2(contador_reg[40]),
        .I3(contador_reg[39]),
        .O(\FSM_onehot_state_reg[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state_reg[2]_i_15 
       (.I0(contador_reg[0]),
        .I1(contador_reg[4]),
        .I2(contador_reg[3]),
        .I3(contador_reg[6]),
        .O(\FSM_onehot_state_reg[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state_reg[2]_i_16 
       (.I0(contador_reg[19]),
        .I1(contador_reg[20]),
        .I2(contador_reg[17]),
        .I3(contador_reg[18]),
        .I4(contador_reg[26]),
        .I5(contador_reg[25]),
        .O(\FSM_onehot_state_reg[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state_reg[2]_i_17 
       (.I0(contador_reg[28]),
        .I1(contador_reg[27]),
        .I2(contador_reg[30]),
        .I3(contador_reg[29]),
        .O(\FSM_onehot_state_reg[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state_reg[2]_i_18 
       (.I0(contador_reg[11]),
        .I1(contador_reg[14]),
        .I2(contador_reg[23]),
        .I3(contador_reg[24]),
        .I4(contador_reg[21]),
        .I5(contador_reg[22]),
        .O(\FSM_onehot_state_reg[2]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state_reg[2]_i_19 
       (.I0(contador_reg[13]),
        .I1(contador_reg[15]),
        .I2(contador_reg[16]),
        .I3(contador_reg[2]),
        .I4(contador_reg[1]),
        .O(\FSM_onehot_state_reg[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_onehot_state_reg[2]_i_4 
       (.I0(\FSM_onehot_state_reg[2]_i_5_n_0 ),
        .I1(\FSM_onehot_state_reg[2]_i_6_n_0 ),
        .I2(\FSM_onehot_state_reg[2]_i_7_n_0 ),
        .I3(\FSM_onehot_state_reg[2]_i_8_n_0 ),
        .I4(\FSM_onehot_state_reg[2]_i_9_n_0 ),
        .I5(\FSM_onehot_state_reg[2]_i_10_n_0 ),
        .O(tick));
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_state_reg[2]_i_5 
       (.I0(contador_reg[49]),
        .I1(contador_reg[50]),
        .I2(contador_reg[47]),
        .I3(contador_reg[48]),
        .I4(\FSM_onehot_state_reg[2]_i_11_n_0 ),
        .O(\FSM_onehot_state_reg[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_state_reg[2]_i_6 
       (.I0(contador_reg[59]),
        .I1(contador_reg[60]),
        .I2(contador_reg[61]),
        .I3(contador_reg[62]),
        .I4(\FSM_onehot_state_reg[2]_i_12_n_0 ),
        .O(\FSM_onehot_state_reg[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_state_reg[2]_i_7 
       (.I0(contador_reg[33]),
        .I1(contador_reg[34]),
        .I2(contador_reg[31]),
        .I3(contador_reg[32]),
        .I4(\FSM_onehot_state_reg[2]_i_13_n_0 ),
        .O(\FSM_onehot_state_reg[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_state_reg[2]_i_8 
       (.I0(contador_reg[43]),
        .I1(contador_reg[44]),
        .I2(contador_reg[45]),
        .I3(contador_reg[46]),
        .I4(\FSM_onehot_state_reg[2]_i_14_n_0 ),
        .O(\FSM_onehot_state_reg[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state_reg[2]_i_9 
       (.I0(\FSM_onehot_state_reg[2]_i_15_n_0 ),
        .I1(\FSM_onehot_state_reg[2]_i_16_n_0 ),
        .I2(\FSM_onehot_state_reg[2]_i_17_n_0 ),
        .I3(contador_reg[12]),
        .I4(contador_reg[9]),
        .O(\FSM_onehot_state_reg[2]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \contador[0]_i_1 
       (.I0(i_reset_IBUF),
        .I1(tick),
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
       (.C(CLK),
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
        .S({\contador[0]_i_3_n_0 ,\contador[0]_i_4_n_0 ,\contador[0]_i_5_n_0 ,\contador[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_5 ),
        .Q(contador_reg[10]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_4 ),
        .Q(contador_reg[11]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[12] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_6 ),
        .Q(contador_reg[13]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_5 ),
        .Q(contador_reg[14]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_4 ),
        .Q(contador_reg[15]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[16] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_6 ),
        .Q(contador_reg[17]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_5 ),
        .Q(contador_reg[18]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_4 ),
        .Q(contador_reg[19]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_6 ),
        .Q(contador_reg[1]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[20] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_6 ),
        .Q(contador_reg[21]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_5 ),
        .Q(contador_reg[22]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_4 ),
        .Q(contador_reg[23]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[24] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_6 ),
        .Q(contador_reg[25]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_5 ),
        .Q(contador_reg[26]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_4 ),
        .Q(contador_reg[27]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[28] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_6 ),
        .Q(contador_reg[29]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \contador_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_5 ),
        .Q(contador_reg[2]),
        .S(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_5 ),
        .Q(contador_reg[30]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_4 ),
        .Q(contador_reg[31]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[32] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_6 ),
        .Q(contador_reg[33]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[34] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_5 ),
        .Q(contador_reg[34]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[35] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_4 ),
        .Q(contador_reg[35]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[36] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_6 ),
        .Q(contador_reg[37]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[38] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_5 ),
        .Q(contador_reg[38]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[39] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_4 ),
        .Q(contador_reg[39]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_4 ),
        .Q(contador_reg[3]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[40] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_6 ),
        .Q(contador_reg[41]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[42] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_5 ),
        .Q(contador_reg[42]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[43] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_4 ),
        .Q(contador_reg[43]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[44] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_6 ),
        .Q(contador_reg[45]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[46] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_5 ),
        .Q(contador_reg[46]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[47] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_4 ),
        .Q(contador_reg[47]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[48] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_6 ),
        .Q(contador_reg[49]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[4] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_5 ),
        .Q(contador_reg[50]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[51] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_4 ),
        .Q(contador_reg[51]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[52] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_6 ),
        .Q(contador_reg[53]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[54] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_5 ),
        .Q(contador_reg[54]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[55] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_4 ),
        .Q(contador_reg[55]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[56] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_6 ),
        .Q(contador_reg[57]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[58] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_5 ),
        .Q(contador_reg[58]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[59] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_4 ),
        .Q(contador_reg[59]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_6 ),
        .Q(contador_reg[5]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[60] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[60]_i_1_n_6 ),
        .Q(contador_reg[61]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[62] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[60]_i_1_n_5 ),
        .Q(contador_reg[62]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \contador_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_5 ),
        .Q(contador_reg[6]),
        .S(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_4 ),
        .Q(contador_reg[7]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \contador_reg[8] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_6 ),
        .Q(contador_reg[9]),
        .R(\contador[0]_i_1_n_0 ));
endmodule

module bip_i
   (Q,
    \pc_reg[10] ,
    i_valid_IBUF_BUFG,
    i_valid_IBUF,
    i_reset_IBUF,
    CLK);
  output [10:0]Q;
  input \pc_reg[10] ;
  input i_valid_IBUF_BUFG;
  input i_valid_IBUF;
  input i_reset_IBUF;
  input CLK;

  wire CLK;
  wire [10:0]Q;
  wire i_reset_IBUF;
  wire i_valid_IBUF;
  wire i_valid_IBUF_BUFG;
  wire \pc_reg[10] ;

  control u_control_blk
       (.CLK(CLK),
        .Q(Q),
        .i_reset_IBUF(i_reset_IBUF),
        .i_valid_IBUF(i_valid_IBUF),
        .i_valid_IBUF_BUFG(i_valid_IBUF_BUFG),
        .\pc_reg[10]_0 (\pc_reg[10] ));
endmodule

module control
   (Q,
    \pc_reg[10]_0 ,
    i_valid_IBUF_BUFG,
    i_valid_IBUF,
    i_reset_IBUF,
    CLK);
  output [10:0]Q;
  input \pc_reg[10]_0 ;
  input i_valid_IBUF_BUFG;
  input i_valid_IBUF;
  input i_reset_IBUF;
  input CLK;

  wire CLK;
  wire [10:0]Q;
  wire i_reset_IBUF;
  wire i_valid_IBUF;
  wire i_valid_IBUF_BUFG;
  wire [10:0]p_0_in__0;
  wire \pc[10]_i_3_n_0 ;
  wire \pc_reg[10]_0 ;
  wire u_op_decoder_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \pc[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \pc[10]_i_2 
       (.I0(Q[9]),
        .I1(Q[6]),
        .I2(\pc[10]_i_3_n_0 ),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(Q[10]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pc[10]_i_3 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\pc[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pc[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pc[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pc[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pc[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pc[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pc[6]_i_1 
       (.I0(\pc[10]_i_3_n_0 ),
        .I1(Q[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \pc[7]_i_1 
       (.I0(\pc[10]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \pc[8]_i_1 
       (.I0(Q[6]),
        .I1(\pc[10]_i_3_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \pc[9]_i_1 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(\pc[10]_i_3_n_0 ),
        .I3(Q[6]),
        .I4(Q[9]),
        .O(p_0_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(CLK),
        .CE(u_op_decoder_n_0),
        .D(p_0_in__0[0]),
        .Q(Q[0]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(CLK),
        .CE(u_op_decoder_n_0),
        .D(p_0_in__0[10]),
        .Q(Q[10]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(CLK),
        .CE(u_op_decoder_n_0),
        .D(p_0_in__0[1]),
        .Q(Q[1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(CLK),
        .CE(u_op_decoder_n_0),
        .D(p_0_in__0[2]),
        .Q(Q[2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(CLK),
        .CE(u_op_decoder_n_0),
        .D(p_0_in__0[3]),
        .Q(Q[3]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(CLK),
        .CE(u_op_decoder_n_0),
        .D(p_0_in__0[4]),
        .Q(Q[4]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(CLK),
        .CE(u_op_decoder_n_0),
        .D(p_0_in__0[5]),
        .Q(Q[5]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(CLK),
        .CE(u_op_decoder_n_0),
        .D(p_0_in__0[6]),
        .Q(Q[6]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(CLK),
        .CE(u_op_decoder_n_0),
        .D(p_0_in__0[7]),
        .Q(Q[7]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(CLK),
        .CE(u_op_decoder_n_0),
        .D(p_0_in__0[8]),
        .Q(Q[8]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(CLK),
        .CE(u_op_decoder_n_0),
        .D(p_0_in__0[9]),
        .Q(Q[9]),
        .R(i_reset_IBUF));
  op_decoder u_op_decoder
       (.E(u_op_decoder_n_0),
        .i_valid_IBUF(i_valid_IBUF),
        .i_valid_IBUF_BUFG(i_valid_IBUF_BUFG),
        .\pc_reg[10] (\pc_reg[10]_0 ));
endmodule

module interfaz_uart
   (tx_start,
    tx_start_reg_0,
    CLK,
    D,
    \FSM_onehot_state_reg_reg[2] );
  output tx_start;
  output tx_start_reg_0;
  input CLK;
  input [10:0]D;
  input \FSM_onehot_state_reg_reg[2] ;

  wire CLK;
  wire [10:0]D;
  wire \FSM_onehot_state_reg_reg[2] ;
  wire [10:0]old_pc;
  wire p_0_in;
  wire tx_start;
  wire tx_start0_carry_i_1_n_0;
  wire tx_start0_carry_i_2_n_0;
  wire tx_start0_carry_i_3_n_0;
  wire tx_start0_carry_i_4_n_0;
  wire tx_start0_carry_n_0;
  wire tx_start0_carry_n_1;
  wire tx_start0_carry_n_2;
  wire tx_start0_carry_n_3;
  wire tx_start_reg_0;
  wire [3:0]NLW_tx_start0_carry_O_UNCONNECTED;
  wire [3:0]NLW_tx_start0_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_tx_start0_carry__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state_reg[2]_i_2 
       (.I0(tx_start),
        .I1(\FSM_onehot_state_reg_reg[2] ),
        .O(tx_start_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \old_pc_reg[0] 
       (.C(CLK),
        .CE(p_0_in),
        .D(D[0]),
        .Q(old_pc[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_pc_reg[10] 
       (.C(CLK),
        .CE(p_0_in),
        .D(D[10]),
        .Q(old_pc[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_pc_reg[1] 
       (.C(CLK),
        .CE(p_0_in),
        .D(D[1]),
        .Q(old_pc[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_pc_reg[2] 
       (.C(CLK),
        .CE(p_0_in),
        .D(D[2]),
        .Q(old_pc[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_pc_reg[3] 
       (.C(CLK),
        .CE(p_0_in),
        .D(D[3]),
        .Q(old_pc[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_pc_reg[4] 
       (.C(CLK),
        .CE(p_0_in),
        .D(D[4]),
        .Q(old_pc[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_pc_reg[5] 
       (.C(CLK),
        .CE(p_0_in),
        .D(D[5]),
        .Q(old_pc[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_pc_reg[6] 
       (.C(CLK),
        .CE(p_0_in),
        .D(D[6]),
        .Q(old_pc[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_pc_reg[7] 
       (.C(CLK),
        .CE(p_0_in),
        .D(D[7]),
        .Q(old_pc[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_pc_reg[8] 
       (.C(CLK),
        .CE(p_0_in),
        .D(D[8]),
        .Q(old_pc[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_pc_reg[9] 
       (.C(CLK),
        .CE(p_0_in),
        .D(D[9]),
        .Q(old_pc[9]),
        .R(1'b0));
  CARRY4 tx_start0_carry
       (.CI(1'b0),
        .CO({tx_start0_carry_n_0,tx_start0_carry_n_1,tx_start0_carry_n_2,tx_start0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_start0_carry_O_UNCONNECTED[3:0]),
        .S({tx_start0_carry_i_1_n_0,tx_start0_carry_i_2_n_0,tx_start0_carry_i_3_n_0,tx_start0_carry_i_4_n_0}));
  CARRY4 tx_start0_carry__0
       (.CI(tx_start0_carry_n_0),
        .CO(NLW_tx_start0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tx_start0_carry__0_O_UNCONNECTED[3:1],p_0_in}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h9009)) 
    tx_start0_carry_i_1
       (.I0(old_pc[9]),
        .I1(D[9]),
        .I2(old_pc[10]),
        .I3(D[10]),
        .O(tx_start0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_start0_carry_i_2
       (.I0(old_pc[7]),
        .I1(D[7]),
        .I2(old_pc[6]),
        .I3(D[6]),
        .I4(old_pc[8]),
        .I5(D[8]),
        .O(tx_start0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_start0_carry_i_3
       (.I0(old_pc[4]),
        .I1(D[4]),
        .I2(old_pc[3]),
        .I3(D[3]),
        .I4(old_pc[5]),
        .I5(D[5]),
        .O(tx_start0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_start0_carry_i_4
       (.I0(old_pc[1]),
        .I1(D[1]),
        .I2(old_pc[0]),
        .I3(D[0]),
        .I4(old_pc[2]),
        .I5(D[2]),
        .O(tx_start0_carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_start_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_start0_carry_n_0),
        .Q(tx_start),
        .R(1'b0));
endmodule

module op_decoder
   (E,
    \pc_reg[10] ,
    i_valid_IBUF_BUFG,
    i_valid_IBUF);
  output [0:0]E;
  input \pc_reg[10] ;
  input i_valid_IBUF_BUFG;
  input i_valid_IBUF;

  wire [0:0]E;
  wire i_valid_IBUF;
  wire i_valid_IBUF_BUFG;
  wire \pc_reg[10] ;
  wire write_pc;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    o_write_pc_reg
       (.CLR(1'b0),
        .D(\pc_reg[10] ),
        .G(i_valid_IBUF_BUFG),
        .GE(1'b1),
        .Q(write_pc));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[10]_i_1 
       (.I0(write_pc),
        .I1(i_valid_IBUF),
        .O(E));
endmodule

module program_memory
   (\ram_data_reg[13]_0 ,
    i_reset_IBUF,
    Q,
    i_valid_IBUF,
    CLK);
  output \ram_data_reg[13]_0 ;
  input i_reset_IBUF;
  input [2:0]Q;
  input i_valid_IBUF;
  input CLK;

  wire CLK;
  wire [2:0]Q;
  wire i_reset_IBUF;
  wire i_valid_IBUF;
  wire [13:11]instruccion;
  wire \ram_data[11]_i_1_n_0 ;
  wire \ram_data[12]_i_1_n_0 ;
  wire \ram_data[13]_i_1_n_0 ;
  wire \ram_data_reg[13]_0 ;

  LUT4 #(
    .INIT(16'h0F0E)) 
    o_write_pc_reg_i_1
       (.I0(instruccion[13]),
        .I1(instruccion[11]),
        .I2(i_reset_IBUF),
        .I3(instruccion[12]),
        .O(\ram_data_reg[13]_0 ));
  LUT5 #(
    .INIT(32'h5CFF5C00)) 
    \ram_data[11]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(i_valid_IBUF),
        .I4(instruccion[11]),
        .O(\ram_data[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h59FF5900)) 
    \ram_data[12]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(i_valid_IBUF),
        .I4(instruccion[12]),
        .O(\ram_data[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5CFF5C00)) 
    \ram_data[13]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(i_valid_IBUF),
        .I4(instruccion[13]),
        .O(\ram_data[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ram_data_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ram_data[11]_i_1_n_0 ),
        .Q(instruccion[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ram_data_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ram_data[12]_i_1_n_0 ),
        .Q(instruccion[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ram_data_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ram_data[13]_i_1_n_0 ),
        .Q(instruccion[13]),
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

  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_reset;
  wire i_reset_IBUF;
  wire i_valid;
  wire i_valid_IBUF;
  wire i_valid_IBUF_BUFG;
  wire o_tx;
  wire o_tx_OBUF;
  wire o_tx_done;
  wire [2:0]program_addr;
  wire tick;
  wire tx_start;
  wire [10:3]\u_control_blk/pc_reg ;
  wire u_interfaz_uart_n_1;
  wire u_program_memory_n_0;
  wire u_tx_n_1;

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
  BUFG i_valid_IBUF_BUFG_inst
       (.I(i_valid_IBUF),
        .O(i_valid_IBUF_BUFG));
  IBUF i_valid_IBUF_inst
       (.I(i_valid),
        .O(i_valid_IBUF));
  OBUF o_tx_OBUF_inst
       (.I(o_tx_OBUF),
        .O(o_tx));
  OBUF o_tx_done_OBUF_inst
       (.I(1'b0),
        .O(o_tx_done));
  baudrate_generator u_bd_generator
       (.CLK(i_clk_IBUF_BUFG),
        .i_reset_IBUF(i_reset_IBUF),
        .tick(tick));
  bip_i u_bip_i
       (.CLK(i_clk_IBUF_BUFG),
        .Q({\u_control_blk/pc_reg ,program_addr}),
        .i_reset_IBUF(i_reset_IBUF),
        .i_valid_IBUF(i_valid_IBUF),
        .i_valid_IBUF_BUFG(i_valid_IBUF_BUFG),
        .\pc_reg[10] (u_program_memory_n_0));
  interfaz_uart u_interfaz_uart
       (.CLK(i_clk_IBUF_BUFG),
        .D({\u_control_blk/pc_reg ,program_addr}),
        .\FSM_onehot_state_reg_reg[2] (u_tx_n_1),
        .tx_start(tx_start),
        .tx_start_reg_0(u_interfaz_uart_n_1));
  program_memory u_program_memory
       (.CLK(i_clk_IBUF_BUFG),
        .Q(program_addr),
        .i_reset_IBUF(i_reset_IBUF),
        .i_valid_IBUF(i_valid_IBUF),
        .\ram_data_reg[13]_0 (u_program_memory_n_0));
  tx_uart u_tx
       (.CLK(i_clk_IBUF_BUFG),
        .\FSM_onehot_state_reg_reg[0]_0 (u_tx_n_1),
        .\FSM_onehot_state_reg_reg[2]_0 (u_interfaz_uart_n_1),
        .Q({\u_control_blk/pc_reg ,program_addr}),
        .i_reset_IBUF(i_reset_IBUF),
        .o_tx_OBUF(o_tx_OBUF),
        .tick(tick),
        .tx_start(tx_start));
endmodule

module tx_uart
   (o_tx_OBUF,
    \FSM_onehot_state_reg_reg[0]_0 ,
    i_reset_IBUF,
    CLK,
    tick,
    tx_start,
    Q,
    \FSM_onehot_state_reg_reg[2]_0 );
  output o_tx_OBUF;
  output \FSM_onehot_state_reg_reg[0]_0 ;
  input i_reset_IBUF;
  input CLK;
  input tick;
  input tx_start;
  input [10:0]Q;
  input \FSM_onehot_state_reg_reg[2]_0 ;

  wire CLK;
  wire \FSM_onehot_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_reg[0]_0 ;
  wire \FSM_onehot_state_reg_reg[2]_0 ;
  wire \FSM_onehot_state_reg_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_reg_n_0_[2] ;
  wire [10:0]Q;
  wire [0:0]buffer;
  wire \buffer[0]_i_1_n_0 ;
  wire \buffer[10]_i_2_n_0 ;
  wire \buffer[1]_i_1_n_0 ;
  wire \buffer[2]_i_1_n_0 ;
  wire \buffer[3]_i_1_n_0 ;
  wire \buffer[4]_i_1_n_0 ;
  wire \buffer[5]_i_1_n_0 ;
  wire \buffer[6]_i_1_n_0 ;
  wire \buffer[7]_i_1_n_0 ;
  wire \buffer[8]_i_1_n_0 ;
  wire \buffer[9]_i_1_n_0 ;
  wire \buffer_reg_n_0_[10] ;
  wire \buffer_reg_n_0_[1] ;
  wire \buffer_reg_n_0_[2] ;
  wire \buffer_reg_n_0_[3] ;
  wire \buffer_reg_n_0_[4] ;
  wire \buffer_reg_n_0_[5] ;
  wire \buffer_reg_n_0_[6] ;
  wire \buffer_reg_n_0_[7] ;
  wire \buffer_reg_n_0_[8] ;
  wire \buffer_reg_n_0_[9] ;
  wire i_reset_IBUF;
  wire next_buffer;
  wire next_sampling_counter;
  wire next_tx;
  wire o_tx_OBUF;
  wire [3:0]sampling_counter;
  wire \sampling_counter[0]_i_1_n_0 ;
  wire \sampling_counter[1]_i_1_n_0 ;
  wire \sampling_counter[2]_i_1_n_0 ;
  wire \sampling_counter[3]_i_2_n_0 ;
  wire tick;
  wire tx_start;

  LUT6 #(
    .INIT(64'hFFFFFFFF20222222)) 
    \FSM_onehot_state_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_reg[0]_0 ),
        .I1(tx_start),
        .I2(\FSM_onehot_state_reg[2]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I4(tick),
        .I5(i_reset_IBUF),
        .O(\FSM_onehot_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FC88FF88)) 
    \FSM_onehot_state_reg[1]_i_1 
       (.I0(tx_start),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(\FSM_onehot_state_reg[2]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I4(tick),
        .I5(i_reset_IBUF),
        .O(\FSM_onehot_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EF22EE22)) 
    \FSM_onehot_state_reg[2]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_reg[2]_0 ),
        .I2(\FSM_onehot_state_reg[2]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I4(tick),
        .I5(i_reset_IBUF),
        .O(\FSM_onehot_state_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state_reg[2]_i_3 
       (.I0(sampling_counter[2]),
        .I1(sampling_counter[1]),
        .I2(sampling_counter[0]),
        .I3(sampling_counter[3]),
        .O(\FSM_onehot_state_reg[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,START:010,DATA:100,STOP:11" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg[0]_0 ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,START:010,DATA:100,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,START:010,DATA:100,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \buffer[0]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(Q[0]),
        .I3(\buffer_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\buffer[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \buffer[10]_i_1 
       (.I0(tick),
        .I1(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg[2]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_reg[0]_0 ),
        .I4(tx_start),
        .O(next_buffer));
  LUT2 #(
    .INIT(4'h8)) 
    \buffer[10]_i_2 
       (.I0(\FSM_onehot_state_reg_reg[0]_0 ),
        .I1(Q[10]),
        .O(\buffer[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \buffer[1]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(Q[1]),
        .I3(\buffer_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\buffer[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \buffer[2]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(Q[2]),
        .I3(\buffer_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\buffer[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \buffer[3]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(Q[3]),
        .I3(\buffer_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\buffer[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \buffer[4]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(Q[4]),
        .I3(\buffer_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\buffer[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \buffer[5]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(Q[5]),
        .I3(\buffer_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\buffer[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \buffer[6]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(Q[6]),
        .I3(\buffer_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\buffer[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \buffer[7]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(Q[7]),
        .I3(\buffer_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\buffer[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \buffer[8]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(Q[8]),
        .I3(\buffer_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\buffer[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \buffer[9]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(Q[9]),
        .I3(\buffer_reg_n_0_[10] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\buffer[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0] 
       (.C(CLK),
        .CE(next_buffer),
        .D(\buffer[0]_i_1_n_0 ),
        .Q(buffer),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[10] 
       (.C(CLK),
        .CE(next_buffer),
        .D(\buffer[10]_i_2_n_0 ),
        .Q(\buffer_reg_n_0_[10] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1] 
       (.C(CLK),
        .CE(next_buffer),
        .D(\buffer[1]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[1] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2] 
       (.C(CLK),
        .CE(next_buffer),
        .D(\buffer[2]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[2] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3] 
       (.C(CLK),
        .CE(next_buffer),
        .D(\buffer[3]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[3] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[4] 
       (.C(CLK),
        .CE(next_buffer),
        .D(\buffer[4]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[4] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[5] 
       (.C(CLK),
        .CE(next_buffer),
        .D(\buffer[5]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[5] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[6] 
       (.C(CLK),
        .CE(next_buffer),
        .D(\buffer[6]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[6] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[7] 
       (.C(CLK),
        .CE(next_buffer),
        .D(\buffer[7]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[7] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[8] 
       (.C(CLK),
        .CE(next_buffer),
        .D(\buffer[8]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[8] ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[9] 
       (.C(CLK),
        .CE(next_buffer),
        .D(\buffer[9]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[9] ),
        .R(i_reset_IBUF));
  LUT3 #(
    .INIT(8'h0E)) 
    \sampling_counter[0]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I2(sampling_counter[0]),
        .O(\sampling_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    \sampling_counter[1]_i_1 
       (.I0(sampling_counter[0]),
        .I1(sampling_counter[1]),
        .I2(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .O(\sampling_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h78787800)) 
    \sampling_counter[2]_i_1 
       (.I0(sampling_counter[0]),
        .I1(sampling_counter[1]),
        .I2(sampling_counter[2]),
        .I3(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .O(\sampling_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \sampling_counter[3]_i_1 
       (.I0(tick),
        .I1(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_reg[0]_0 ),
        .I4(tx_start),
        .O(next_sampling_counter));
  LUT6 #(
    .INIT(64'h6AAA6AAA6AAA0000)) 
    \sampling_counter[3]_i_2 
       (.I0(sampling_counter[3]),
        .I1(sampling_counter[0]),
        .I2(sampling_counter[1]),
        .I3(sampling_counter[2]),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .O(\sampling_counter[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[0] 
       (.C(CLK),
        .CE(next_sampling_counter),
        .D(\sampling_counter[0]_i_1_n_0 ),
        .Q(sampling_counter[0]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[1] 
       (.C(CLK),
        .CE(next_sampling_counter),
        .D(\sampling_counter[1]_i_1_n_0 ),
        .Q(sampling_counter[1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[2] 
       (.C(CLK),
        .CE(next_sampling_counter),
        .D(\sampling_counter[2]_i_1_n_0 ),
        .Q(sampling_counter[2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_counter_reg[3] 
       (.C(CLK),
        .CE(next_sampling_counter),
        .D(\sampling_counter[3]_i_2_n_0 ),
        .Q(sampling_counter[3]),
        .R(i_reset_IBUF));
  LUT3 #(
    .INIT(8'hF8)) 
    tx_data_i_1
       (.I0(buffer),
        .I1(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_reg[0]_0 ),
        .O(next_tx));
  FDSE #(
    .INIT(1'b1)) 
    tx_data_reg
       (.C(CLK),
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
