// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Jul 13 21:13:15 2021
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
    estado);
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

  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \bits_counter[0]_i_1__0_n_0 ;
  wire \bits_counter[0]_i_1_n_0 ;
  wire \bits_counter[1]_i_1__0_n_0 ;
  wire \bits_counter[1]_i_1_n_0 ;
  wire \bits_counter[2]_i_1__0_n_0 ;
  wire \bits_counter[2]_i_1_n_0 ;
  wire \bits_counter[3]_i_1__0_n_0 ;
  wire \bits_counter[3]_i_1_n_0 ;
  wire \bits_counter[4]_i_1__0_n_0 ;
  wire \bits_counter[4]_i_1_n_0 ;
  wire \bits_counter[5]_i_2__0_n_0 ;
  wire \bits_counter[5]_i_2_n_0 ;
  wire \bits_counter[5]_i_3__0_n_0 ;
  wire \bits_counter[5]_i_3_n_0 ;
  wire \bits_counter[5]_i_4_n_0 ;
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
  wire [1:0]estado;
  wire [1:0]estado_OBUF;
  (* IBUF_LOW_PWR *) wire i_clk;
  wire i_reset;
  wire i_reset_IBUF;
  wire i_rx;
  wire i_rx_IBUF;
  wire \next_state[0]__0_i_1_n_0 ;
  wire \next_state[1]__0_i_1_n_0 ;
  wire \next_state_reg[0]_i_1_n_0 ;
  wire \next_state_reg[1]_i_10_n_0 ;
  wire \next_state_reg[1]_i_11_n_0 ;
  wire \next_state_reg[1]_i_1_n_0 ;
  wire \next_state_reg[1]_i_2_n_0 ;
  wire \next_state_reg[1]_i_3_n_0 ;
  wire \next_state_reg[1]_i_4_n_0 ;
  wire \next_state_reg[1]_i_5_n_0 ;
  wire \next_state_reg[1]_i_6_n_0 ;
  wire \next_state_reg[1]_i_7_n_0 ;
  wire \next_state_reg[1]_i_8_n_0 ;
  wire \next_state_reg[1]_i_9_n_0 ;
  wire o_done;
  wire o_rx_done;
  wire o_rx_done_OBUF;
  wire o_rx_done_OBUF_BUFG;
  wire o_tx;
  wire o_tx_OBUF;
  wire o_tx_done;
  wire o_tx_done_OBUF;
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
  wire o_tx_done_OBUF_inst_i_2_n_0;
  wire o_tx_done_OBUF_inst_i_3_n_0;
  wire o_tx_done_OBUF_inst_i_4_n_0;
  wire o_tx_done_OBUF_inst_i_5_n_0;
  wire o_tx_done_OBUF_inst_i_6_n_0;
  wire o_tx_done_OBUF_inst_i_7_n_0;
  wire o_tx_done_OBUF_inst_i_8_n_0;
  wire o_tx_done_OBUF_inst_i_9_n_0;
  wire [31:0]rx_data;
  wire [31:0]rx_data_OBUF;
  wire \sampling_counter[0]_i_1__0_n_0 ;
  wire \sampling_counter[0]_i_1_n_0 ;
  wire \sampling_counter[1]_i_1__0_n_0 ;
  wire \sampling_counter[1]_i_1_n_0 ;
  wire \sampling_counter[2]_i_1__0_n_0 ;
  wire \sampling_counter[2]_i_1_n_0 ;
  wire \sampling_counter[3]_i_2__0_n_0 ;
  wire \sampling_counter[3]_i_2_n_0 ;
  wire \sampling_counter[3]_i_3_n_0 ;
  wire [5:0]sel0;
  wire [5:0]sel0__0;
  wire u_clock_n_0;
  wire [1:0]\u_interfaz_rx/next_state ;
  wire \u_interfaz_rx/rx_done ;
  wire [62:0]\u_uart/u_bd_generator/contador_reg ;
  wire [31:0]\u_uart/u_rx_uart/buffer ;
  wire \u_uart/u_rx_uart/next_bit_counter ;
  wire \u_uart/u_rx_uart/next_buffer ;
  wire \u_uart/u_rx_uart/next_sampling_counter ;
  wire [3:0]\u_uart/u_rx_uart/sampling_counter ;
  wire [1:0]\u_uart/u_rx_uart/state_reg ;
  wire \u_uart/u_tx_uart/next_bit_counter ;
  wire \u_uart/u_tx_uart/next_sampling_counter ;
  wire \u_uart/u_tx_uart/next_tx ;
  wire [3:0]\u_uart/u_tx_uart/sampling_counter ;
  wire [1:0]\u_uart/u_tx_uart/state_reg ;
  wire [3:2]\NLW_contador_reg[60]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_contador_reg[60]_i_1_O_UNCONNECTED ;
  wire NLW_u_clock_locked_UNCONNECTED;

initial begin
 $sdf_annotate("tb_top_time_synth.sdf",,,,"tool_control");
end
  LUT6 #(
    .INIT(64'h15FFEA0015FFEF0F)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I2(\u_uart/u_rx_uart/state_reg [1]),
        .I3(o_tx_done_OBUF_inst_i_3_n_0),
        .I4(\u_uart/u_rx_uart/state_reg [0]),
        .I5(i_rx_IBUF),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA2A2A6A2)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(\u_uart/u_tx_uart/state_reg [0]),
        .I1(o_tx_done_OBUF_inst_i_3_n_0),
        .I2(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .I3(\u_uart/u_tx_uart/state_reg [1]),
        .I4(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(sel0__0[4]),
        .I1(sel0__0[2]),
        .I2(sel0__0[0]),
        .I3(sel0__0[1]),
        .I4(sel0__0[3]),
        .I5(sel0__0[5]),
        .O(\FSM_sequential_state_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1AF0F0F0)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I2(\u_uart/u_rx_uart/state_reg [1]),
        .I3(o_tx_done_OBUF_inst_i_3_n_0),
        .I4(\u_uart/u_rx_uart/state_reg [0]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(\u_uart/u_tx_uart/state_reg [0]),
        .I1(o_tx_done_OBUF_inst_i_3_n_0),
        .I2(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .I3(\u_uart/u_tx_uart/state_reg [1]),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000040000000)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(\u_uart/u_rx_uart/sampling_counter [3]),
        .I1(\u_uart/u_rx_uart/sampling_counter [1]),
        .I2(\u_uart/u_rx_uart/sampling_counter [0]),
        .I3(\u_uart/u_rx_uart/sampling_counter [2]),
        .I4(\u_uart/u_rx_uart/state_reg [0]),
        .I5(\u_uart/u_rx_uart/state_reg [1]),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_reg[1]_i_2__0 
       (.I0(\u_uart/u_tx_uart/sampling_counter [2]),
        .I1(\u_uart/u_tx_uart/sampling_counter [0]),
        .I2(\u_uart/u_tx_uart/sampling_counter [1]),
        .I3(\u_uart/u_tx_uart/sampling_counter [3]),
        .O(\FSM_sequential_state_reg[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(\bits_counter[5]_i_3_n_0 ),
        .I1(\u_uart/u_rx_uart/sampling_counter [3]),
        .I2(\u_uart/u_rx_uart/sampling_counter [1]),
        .I3(\u_uart/u_rx_uart/sampling_counter [0]),
        .I4(\u_uart/u_rx_uart/sampling_counter [2]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bits_counter[0]_i_1 
       (.I0(\u_uart/u_rx_uart/state_reg [1]),
        .I1(sel0[0]),
        .O(\bits_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bits_counter[0]_i_1__0 
       (.I0(\u_uart/u_tx_uart/state_reg [1]),
        .I1(sel0__0[0]),
        .O(\bits_counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bits_counter[1]_i_1 
       (.I0(\u_uart/u_rx_uart/state_reg [1]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(\bits_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bits_counter[1]_i_1__0 
       (.I0(\u_uart/u_tx_uart/state_reg [1]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .O(\bits_counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bits_counter[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\u_uart/u_rx_uart/state_reg [1]),
        .I3(sel0[2]),
        .O(\bits_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bits_counter[2]_i_1__0 
       (.I0(sel0__0[0]),
        .I1(sel0__0[1]),
        .I2(\u_uart/u_tx_uart/state_reg [1]),
        .I3(sel0__0[2]),
        .O(\bits_counter[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bits_counter[3]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\u_uart/u_rx_uart/state_reg [1]),
        .I4(sel0[3]),
        .O(\bits_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bits_counter[3]_i_1__0 
       (.I0(sel0__0[1]),
        .I1(sel0__0[0]),
        .I2(sel0__0[2]),
        .I3(\u_uart/u_tx_uart/state_reg [1]),
        .I4(sel0__0[3]),
        .O(\bits_counter[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bits_counter[4]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(\u_uart/u_rx_uart/state_reg [1]),
        .I5(sel0[4]),
        .O(\bits_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bits_counter[4]_i_1__0 
       (.I0(sel0__0[2]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(sel0__0[3]),
        .I4(\u_uart/u_tx_uart/state_reg [1]),
        .I5(sel0__0[4]),
        .O(\bits_counter[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02080008)) 
    \bits_counter[5]_i_1 
       (.I0(o_tx_done_OBUF_inst_i_3_n_0),
        .I1(\u_uart/u_tx_uart/state_reg [0]),
        .I2(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .I3(\u_uart/u_tx_uart/state_reg [1]),
        .I4(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .O(\u_uart/u_tx_uart/next_bit_counter ));
  LUT6 #(
    .INIT(64'h0000200800000008)) 
    \bits_counter[5]_i_1__0 
       (.I0(o_tx_done_OBUF_inst_i_3_n_0),
        .I1(\u_uart/u_rx_uart/state_reg [0]),
        .I2(\u_uart/u_rx_uart/state_reg [1]),
        .I3(\u_uart/u_rx_uart/sampling_counter [3]),
        .I4(\sampling_counter[3]_i_3_n_0 ),
        .I5(\bits_counter[5]_i_3_n_0 ),
        .O(\u_uart/u_rx_uart/next_bit_counter ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hD200)) 
    \bits_counter[5]_i_2 
       (.I0(sel0[4]),
        .I1(\bits_counter[5]_i_4_n_0 ),
        .I2(sel0[5]),
        .I3(\u_uart/u_rx_uart/state_reg [1]),
        .O(\bits_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hD200)) 
    \bits_counter[5]_i_2__0 
       (.I0(sel0__0[4]),
        .I1(\bits_counter[5]_i_3__0_n_0 ),
        .I2(sel0__0[5]),
        .I3(\u_uart/u_tx_uart/state_reg [1]),
        .O(\bits_counter[5]_i_2__0_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bits_counter[5]_i_3__0 
       (.I0(sel0__0[2]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(sel0__0[3]),
        .O(\bits_counter[5]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bits_counter[5]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(\bits_counter[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \buffer[31]_i_1 
       (.I0(\u_uart/u_rx_uart/state_reg [0]),
        .I1(\sampling_counter[3]_i_3_n_0 ),
        .I2(\u_uart/u_rx_uart/sampling_counter [3]),
        .I3(\u_uart/u_rx_uart/state_reg [1]),
        .I4(o_tx_done_OBUF_inst_i_3_n_0),
        .O(\u_uart/u_rx_uart/next_buffer ));
  LUT2 #(
    .INIT(4'hE)) 
    \contador[0]_i_1 
       (.I0(o_tx_done_OBUF_inst_i_3_n_0),
        .I1(i_reset_IBUF),
        .O(\contador[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [3]),
        .O(\contador[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [2]),
        .O(\contador[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [1]),
        .O(\contador[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_6 
       (.I0(\u_uart/u_bd_generator/contador_reg [0]),
        .O(\contador[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[12]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [15]),
        .O(\contador[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[12]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [14]),
        .O(\contador[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[12]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [13]),
        .O(\contador[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[12]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [12]),
        .O(\contador[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[16]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [19]),
        .O(\contador[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[16]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [18]),
        .O(\contador[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[16]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [17]),
        .O(\contador[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[16]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [16]),
        .O(\contador[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[20]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [23]),
        .O(\contador[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[20]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [22]),
        .O(\contador[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[20]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [21]),
        .O(\contador[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[20]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [20]),
        .O(\contador[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[24]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [27]),
        .O(\contador[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[24]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [26]),
        .O(\contador[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[24]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [25]),
        .O(\contador[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[24]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [24]),
        .O(\contador[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[28]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [31]),
        .O(\contador[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[28]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [30]),
        .O(\contador[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[28]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [29]),
        .O(\contador[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[28]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [28]),
        .O(\contador[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[32]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [35]),
        .O(\contador[32]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[32]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [34]),
        .O(\contador[32]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[32]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [33]),
        .O(\contador[32]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[32]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [32]),
        .O(\contador[32]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[36]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [39]),
        .O(\contador[36]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[36]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [38]),
        .O(\contador[36]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[36]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [37]),
        .O(\contador[36]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[36]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [36]),
        .O(\contador[36]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[40]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [43]),
        .O(\contador[40]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[40]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [42]),
        .O(\contador[40]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[40]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [41]),
        .O(\contador[40]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[40]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [40]),
        .O(\contador[40]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[44]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [47]),
        .O(\contador[44]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[44]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [46]),
        .O(\contador[44]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[44]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [45]),
        .O(\contador[44]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[44]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [44]),
        .O(\contador[44]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[48]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [51]),
        .O(\contador[48]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[48]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [50]),
        .O(\contador[48]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[48]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [49]),
        .O(\contador[48]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[48]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [48]),
        .O(\contador[48]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[4]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [7]),
        .O(\contador[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[4]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [6]),
        .O(\contador[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[4]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [5]),
        .O(\contador[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[4]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [4]),
        .O(\contador[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[52]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [55]),
        .O(\contador[52]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[52]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [54]),
        .O(\contador[52]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[52]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [53]),
        .O(\contador[52]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[52]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [52]),
        .O(\contador[52]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[56]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [59]),
        .O(\contador[56]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[56]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [58]),
        .O(\contador[56]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[56]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [57]),
        .O(\contador[56]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[56]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [56]),
        .O(\contador[56]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[60]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [62]),
        .O(\contador[60]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[60]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [61]),
        .O(\contador[60]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[60]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [60]),
        .O(\contador[60]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[8]_i_2 
       (.I0(\u_uart/u_bd_generator/contador_reg [11]),
        .O(\contador[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[8]_i_3 
       (.I0(\u_uart/u_bd_generator/contador_reg [10]),
        .O(\contador[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[8]_i_4 
       (.I0(\u_uart/u_bd_generator/contador_reg [9]),
        .O(\contador[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[8]_i_5 
       (.I0(\u_uart/u_bd_generator/contador_reg [8]),
        .O(\contador[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\contador_reg[0]_i_2_n_0 ,\contador_reg[0]_i_2_n_1 ,\contador_reg[0]_i_2_n_2 ,\contador_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[0]_i_2_n_4 ,\contador_reg[0]_i_2_n_5 ,\contador_reg[0]_i_2_n_6 ,\contador_reg[0]_i_2_n_7 }),
        .S({\contador[0]_i_3_n_0 ,\contador[0]_i_4_n_0 ,\contador[0]_i_5_n_0 ,\contador[0]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[12]_i_1 
       (.CI(\contador_reg[8]_i_1_n_0 ),
        .CO({\contador_reg[12]_i_1_n_0 ,\contador_reg[12]_i_1_n_1 ,\contador_reg[12]_i_1_n_2 ,\contador_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[12]_i_1_n_4 ,\contador_reg[12]_i_1_n_5 ,\contador_reg[12]_i_1_n_6 ,\contador_reg[12]_i_1_n_7 }),
        .S({\contador[12]_i_2_n_0 ,\contador[12]_i_3_n_0 ,\contador[12]_i_4_n_0 ,\contador[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[16]_i_1 
       (.CI(\contador_reg[12]_i_1_n_0 ),
        .CO({\contador_reg[16]_i_1_n_0 ,\contador_reg[16]_i_1_n_1 ,\contador_reg[16]_i_1_n_2 ,\contador_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[16]_i_1_n_4 ,\contador_reg[16]_i_1_n_5 ,\contador_reg[16]_i_1_n_6 ,\contador_reg[16]_i_1_n_7 }),
        .S({\contador[16]_i_2_n_0 ,\contador[16]_i_3_n_0 ,\contador[16]_i_4_n_0 ,\contador[16]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[20]_i_1 
       (.CI(\contador_reg[16]_i_1_n_0 ),
        .CO({\contador_reg[20]_i_1_n_0 ,\contador_reg[20]_i_1_n_1 ,\contador_reg[20]_i_1_n_2 ,\contador_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[20]_i_1_n_4 ,\contador_reg[20]_i_1_n_5 ,\contador_reg[20]_i_1_n_6 ,\contador_reg[20]_i_1_n_7 }),
        .S({\contador[20]_i_2_n_0 ,\contador[20]_i_3_n_0 ,\contador[20]_i_4_n_0 ,\contador[20]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[24]_i_1 
       (.CI(\contador_reg[20]_i_1_n_0 ),
        .CO({\contador_reg[24]_i_1_n_0 ,\contador_reg[24]_i_1_n_1 ,\contador_reg[24]_i_1_n_2 ,\contador_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[24]_i_1_n_4 ,\contador_reg[24]_i_1_n_5 ,\contador_reg[24]_i_1_n_6 ,\contador_reg[24]_i_1_n_7 }),
        .S({\contador[24]_i_2_n_0 ,\contador[24]_i_3_n_0 ,\contador[24]_i_4_n_0 ,\contador[24]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[28]_i_1 
       (.CI(\contador_reg[24]_i_1_n_0 ),
        .CO({\contador_reg[28]_i_1_n_0 ,\contador_reg[28]_i_1_n_1 ,\contador_reg[28]_i_1_n_2 ,\contador_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[28]_i_1_n_4 ,\contador_reg[28]_i_1_n_5 ,\contador_reg[28]_i_1_n_6 ,\contador_reg[28]_i_1_n_7 }),
        .S({\contador[28]_i_2_n_0 ,\contador[28]_i_3_n_0 ,\contador[28]_i_4_n_0 ,\contador[28]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[32]_i_1 
       (.CI(\contador_reg[28]_i_1_n_0 ),
        .CO({\contador_reg[32]_i_1_n_0 ,\contador_reg[32]_i_1_n_1 ,\contador_reg[32]_i_1_n_2 ,\contador_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[32]_i_1_n_4 ,\contador_reg[32]_i_1_n_5 ,\contador_reg[32]_i_1_n_6 ,\contador_reg[32]_i_1_n_7 }),
        .S({\contador[32]_i_2_n_0 ,\contador[32]_i_3_n_0 ,\contador[32]_i_4_n_0 ,\contador[32]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[36]_i_1 
       (.CI(\contador_reg[32]_i_1_n_0 ),
        .CO({\contador_reg[36]_i_1_n_0 ,\contador_reg[36]_i_1_n_1 ,\contador_reg[36]_i_1_n_2 ,\contador_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[36]_i_1_n_4 ,\contador_reg[36]_i_1_n_5 ,\contador_reg[36]_i_1_n_6 ,\contador_reg[36]_i_1_n_7 }),
        .S({\contador[36]_i_2_n_0 ,\contador[36]_i_3_n_0 ,\contador[36]_i_4_n_0 ,\contador[36]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[40]_i_1 
       (.CI(\contador_reg[36]_i_1_n_0 ),
        .CO({\contador_reg[40]_i_1_n_0 ,\contador_reg[40]_i_1_n_1 ,\contador_reg[40]_i_1_n_2 ,\contador_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[40]_i_1_n_4 ,\contador_reg[40]_i_1_n_5 ,\contador_reg[40]_i_1_n_6 ,\contador_reg[40]_i_1_n_7 }),
        .S({\contador[40]_i_2_n_0 ,\contador[40]_i_3_n_0 ,\contador[40]_i_4_n_0 ,\contador[40]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[44]_i_1 
       (.CI(\contador_reg[40]_i_1_n_0 ),
        .CO({\contador_reg[44]_i_1_n_0 ,\contador_reg[44]_i_1_n_1 ,\contador_reg[44]_i_1_n_2 ,\contador_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[44]_i_1_n_4 ,\contador_reg[44]_i_1_n_5 ,\contador_reg[44]_i_1_n_6 ,\contador_reg[44]_i_1_n_7 }),
        .S({\contador[44]_i_2_n_0 ,\contador[44]_i_3_n_0 ,\contador[44]_i_4_n_0 ,\contador[44]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[48]_i_1 
       (.CI(\contador_reg[44]_i_1_n_0 ),
        .CO({\contador_reg[48]_i_1_n_0 ,\contador_reg[48]_i_1_n_1 ,\contador_reg[48]_i_1_n_2 ,\contador_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[48]_i_1_n_4 ,\contador_reg[48]_i_1_n_5 ,\contador_reg[48]_i_1_n_6 ,\contador_reg[48]_i_1_n_7 }),
        .S({\contador[48]_i_2_n_0 ,\contador[48]_i_3_n_0 ,\contador[48]_i_4_n_0 ,\contador[48]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[4]_i_1 
       (.CI(\contador_reg[0]_i_2_n_0 ),
        .CO({\contador_reg[4]_i_1_n_0 ,\contador_reg[4]_i_1_n_1 ,\contador_reg[4]_i_1_n_2 ,\contador_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[4]_i_1_n_4 ,\contador_reg[4]_i_1_n_5 ,\contador_reg[4]_i_1_n_6 ,\contador_reg[4]_i_1_n_7 }),
        .S({\contador[4]_i_2_n_0 ,\contador[4]_i_3_n_0 ,\contador[4]_i_4_n_0 ,\contador[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[52]_i_1 
       (.CI(\contador_reg[48]_i_1_n_0 ),
        .CO({\contador_reg[52]_i_1_n_0 ,\contador_reg[52]_i_1_n_1 ,\contador_reg[52]_i_1_n_2 ,\contador_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[52]_i_1_n_4 ,\contador_reg[52]_i_1_n_5 ,\contador_reg[52]_i_1_n_6 ,\contador_reg[52]_i_1_n_7 }),
        .S({\contador[52]_i_2_n_0 ,\contador[52]_i_3_n_0 ,\contador[52]_i_4_n_0 ,\contador[52]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[56]_i_1 
       (.CI(\contador_reg[52]_i_1_n_0 ),
        .CO({\contador_reg[56]_i_1_n_0 ,\contador_reg[56]_i_1_n_1 ,\contador_reg[56]_i_1_n_2 ,\contador_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[56]_i_1_n_4 ,\contador_reg[56]_i_1_n_5 ,\contador_reg[56]_i_1_n_6 ,\contador_reg[56]_i_1_n_7 }),
        .S({\contador[56]_i_2_n_0 ,\contador[56]_i_3_n_0 ,\contador[56]_i_4_n_0 ,\contador[56]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[60]_i_1 
       (.CI(\contador_reg[56]_i_1_n_0 ),
        .CO({\NLW_contador_reg[60]_i_1_CO_UNCONNECTED [3:2],\contador_reg[60]_i_1_n_2 ,\contador_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\NLW_contador_reg[60]_i_1_O_UNCONNECTED [3],\contador_reg[60]_i_1_n_5 ,\contador_reg[60]_i_1_n_6 ,\contador_reg[60]_i_1_n_7 }),
        .S({1'b0,\contador[60]_i_2_n_0 ,\contador[60]_i_3_n_0 ,\contador[60]_i_4_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[8]_i_1 
       (.CI(\contador_reg[4]_i_1_n_0 ),
        .CO({\contador_reg[8]_i_1_n_0 ,\contador_reg[8]_i_1_n_1 ,\contador_reg[8]_i_1_n_2 ,\contador_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\contador_reg[8]_i_1_n_4 ,\contador_reg[8]_i_1_n_5 ,\contador_reg[8]_i_1_n_6 ,\contador_reg[8]_i_1_n_7 }),
        .S({\contador[8]_i_2_n_0 ,\contador[8]_i_3_n_0 ,\contador[8]_i_4_n_0 ,\contador[8]_i_5_n_0 }));
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
  LUT2 #(
    .INIT(4'hE)) 
    \next_state[0]__0_i_1 
       (.I0(i_reset_IBUF),
        .I1(\u_interfaz_rx/next_state [0]),
        .O(\next_state[0]__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \next_state[1]__0_i_1 
       (.I0(\u_interfaz_rx/next_state [1]),
        .I1(i_reset_IBUF),
        .O(\next_state[1]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \next_state_reg[0]_i_1 
       (.I0(estado_OBUF[1]),
        .I1(\next_state_reg[1]_i_3_n_0 ),
        .I2(estado_OBUF[0]),
        .O(\next_state_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \next_state_reg[1]_i_1 
       (.I0(estado_OBUF[1]),
        .I1(\next_state_reg[1]_i_3_n_0 ),
        .I2(estado_OBUF[0]),
        .O(\next_state_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \next_state_reg[1]_i_10 
       (.I0(rx_data_OBUF[29]),
        .I1(rx_data_OBUF[28]),
        .I2(rx_data_OBUF[31]),
        .I3(rx_data_OBUF[30]),
        .O(\next_state_reg[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \next_state_reg[1]_i_11 
       (.I0(rx_data_OBUF[21]),
        .I1(rx_data_OBUF[20]),
        .I2(rx_data_OBUF[23]),
        .I3(rx_data_OBUF[22]),
        .O(\next_state_reg[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4475)) 
    \next_state_reg[1]_i_2 
       (.I0(estado_OBUF[0]),
        .I1(\next_state_reg[1]_i_3_n_0 ),
        .I2(\u_interfaz_rx/rx_done ),
        .I3(estado_OBUF[1]),
        .O(\next_state_reg[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_state_reg[1]_i_3 
       (.I0(\next_state_reg[1]_i_4_n_0 ),
        .I1(\next_state_reg[1]_i_5_n_0 ),
        .I2(\next_state_reg[1]_i_6_n_0 ),
        .I3(\next_state_reg[1]_i_7_n_0 ),
        .O(\next_state_reg[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \next_state_reg[1]_i_4 
       (.I0(rx_data_OBUF[10]),
        .I1(rx_data_OBUF[11]),
        .I2(rx_data_OBUF[8]),
        .I3(rx_data_OBUF[9]),
        .I4(\next_state_reg[1]_i_8_n_0 ),
        .O(\next_state_reg[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \next_state_reg[1]_i_5 
       (.I0(rx_data_OBUF[2]),
        .I1(rx_data_OBUF[3]),
        .I2(rx_data_OBUF[0]),
        .I3(rx_data_OBUF[1]),
        .I4(\next_state_reg[1]_i_9_n_0 ),
        .O(\next_state_reg[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \next_state_reg[1]_i_6 
       (.I0(rx_data_OBUF[26]),
        .I1(rx_data_OBUF[27]),
        .I2(rx_data_OBUF[24]),
        .I3(rx_data_OBUF[25]),
        .I4(\next_state_reg[1]_i_10_n_0 ),
        .O(\next_state_reg[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \next_state_reg[1]_i_7 
       (.I0(rx_data_OBUF[18]),
        .I1(rx_data_OBUF[19]),
        .I2(rx_data_OBUF[16]),
        .I3(rx_data_OBUF[17]),
        .I4(\next_state_reg[1]_i_11_n_0 ),
        .O(\next_state_reg[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \next_state_reg[1]_i_8 
       (.I0(rx_data_OBUF[13]),
        .I1(rx_data_OBUF[12]),
        .I2(rx_data_OBUF[15]),
        .I3(rx_data_OBUF[14]),
        .O(\next_state_reg[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \next_state_reg[1]_i_9 
       (.I0(rx_data_OBUF[5]),
        .I1(rx_data_OBUF[4]),
        .I2(rx_data_OBUF[7]),
        .I3(rx_data_OBUF[6]),
        .O(\next_state_reg[1]_i_9_n_0 ));
  OBUF o_done_OBUF_inst
       (.I(1'b0),
        .O(o_done));
  BUFG o_rx_done_OBUF_BUFG_inst
       (.I(o_rx_done_OBUF),
        .O(o_rx_done_OBUF_BUFG));
  LUT5 #(
    .INIT(32'h00800000)) 
    o_rx_done_OBUF_BUFG_inst_i_1
       (.I0(\u_uart/u_rx_uart/state_reg [1]),
        .I1(o_tx_done_OBUF_inst_i_3_n_0),
        .I2(\u_uart/u_rx_uart/state_reg [0]),
        .I3(\sampling_counter[3]_i_3_n_0 ),
        .I4(\u_uart/u_rx_uart/sampling_counter [3]),
        .O(o_rx_done_OBUF));
  OBUF o_rx_done_OBUF_inst
       (.I(o_rx_done_OBUF_BUFG),
        .O(o_rx_done));
  OBUF o_tx_OBUF_inst
       (.I(o_tx_OBUF),
        .O(o_tx));
  OBUF o_tx_done_OBUF_inst
       (.I(o_tx_done_OBUF),
        .O(o_tx_done));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    o_tx_done_OBUF_inst_i_1
       (.I0(o_tx_done_OBUF_inst_i_2_n_0),
        .I1(\u_uart/u_tx_uart/state_reg [1]),
        .I2(o_tx_done_OBUF_inst_i_3_n_0),
        .O(o_tx_done_OBUF));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_10
       (.I0(\u_uart/u_bd_generator/contador_reg [61]),
        .I1(\u_uart/u_bd_generator/contador_reg [60]),
        .I2(\u_uart/u_bd_generator/contador_reg [59]),
        .I3(\u_uart/u_bd_generator/contador_reg [58]),
        .O(o_tx_done_OBUF_inst_i_10_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_11
       (.I0(\u_uart/u_bd_generator/contador_reg [53]),
        .I1(\u_uart/u_bd_generator/contador_reg [52]),
        .I2(\u_uart/u_bd_generator/contador_reg [51]),
        .I3(\u_uart/u_bd_generator/contador_reg [50]),
        .O(o_tx_done_OBUF_inst_i_11_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_12
       (.I0(\u_uart/u_bd_generator/contador_reg [45]),
        .I1(\u_uart/u_bd_generator/contador_reg [44]),
        .I2(\u_uart/u_bd_generator/contador_reg [43]),
        .I3(\u_uart/u_bd_generator/contador_reg [42]),
        .O(o_tx_done_OBUF_inst_i_12_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_13
       (.I0(\u_uart/u_bd_generator/contador_reg [37]),
        .I1(\u_uart/u_bd_generator/contador_reg [36]),
        .I2(\u_uart/u_bd_generator/contador_reg [35]),
        .I3(\u_uart/u_bd_generator/contador_reg [34]),
        .O(o_tx_done_OBUF_inst_i_13_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_14
       (.I0(\u_uart/u_bd_generator/contador_reg [29]),
        .I1(\u_uart/u_bd_generator/contador_reg [28]),
        .I2(\u_uart/u_bd_generator/contador_reg [27]),
        .I3(\u_uart/u_bd_generator/contador_reg [26]),
        .O(o_tx_done_OBUF_inst_i_14_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_15
       (.I0(\u_uart/u_bd_generator/contador_reg [25]),
        .I1(\u_uart/u_bd_generator/contador_reg [24]),
        .I2(\u_uart/u_bd_generator/contador_reg [23]),
        .I3(\u_uart/u_bd_generator/contador_reg [22]),
        .O(o_tx_done_OBUF_inst_i_15_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_16
       (.I0(\u_uart/u_bd_generator/contador_reg [21]),
        .I1(\u_uart/u_bd_generator/contador_reg [20]),
        .I2(\u_uart/u_bd_generator/contador_reg [19]),
        .I3(\u_uart/u_bd_generator/contador_reg [18]),
        .O(o_tx_done_OBUF_inst_i_16_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_17
       (.I0(\u_uart/u_bd_generator/contador_reg [17]),
        .I1(\u_uart/u_bd_generator/contador_reg [16]),
        .I2(\u_uart/u_bd_generator/contador_reg [15]),
        .I3(\u_uart/u_bd_generator/contador_reg [14]),
        .O(o_tx_done_OBUF_inst_i_17_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_18
       (.I0(\u_uart/u_bd_generator/contador_reg [13]),
        .I1(\u_uart/u_bd_generator/contador_reg [12]),
        .I2(\u_uart/u_bd_generator/contador_reg [11]),
        .I3(\u_uart/u_bd_generator/contador_reg [10]),
        .O(o_tx_done_OBUF_inst_i_18_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_19
       (.I0(\u_uart/u_bd_generator/contador_reg [9]),
        .I1(\u_uart/u_bd_generator/contador_reg [8]),
        .I2(\u_uart/u_bd_generator/contador_reg [7]),
        .I3(\u_uart/u_bd_generator/contador_reg [6]),
        .O(o_tx_done_OBUF_inst_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    o_tx_done_OBUF_inst_i_2
       (.I0(\u_uart/u_tx_uart/sampling_counter [3]),
        .I1(\u_uart/u_tx_uart/sampling_counter [1]),
        .I2(\u_uart/u_tx_uart/sampling_counter [0]),
        .I3(\u_uart/u_tx_uart/sampling_counter [2]),
        .I4(\u_uart/u_tx_uart/state_reg [0]),
        .O(o_tx_done_OBUF_inst_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_tx_done_OBUF_inst_i_20
       (.I0(\u_uart/u_bd_generator/contador_reg [5]),
        .I1(\u_uart/u_bd_generator/contador_reg [4]),
        .I2(\u_uart/u_bd_generator/contador_reg [3]),
        .I3(\u_uart/u_bd_generator/contador_reg [2]),
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
        .O(o_tx_done_OBUF_inst_i_3_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    o_tx_done_OBUF_inst_i_4
       (.I0(\u_uart/u_bd_generator/contador_reg [54]),
        .I1(\u_uart/u_bd_generator/contador_reg [55]),
        .I2(\u_uart/u_bd_generator/contador_reg [56]),
        .I3(\u_uart/u_bd_generator/contador_reg [57]),
        .I4(o_tx_done_OBUF_inst_i_10_n_0),
        .O(o_tx_done_OBUF_inst_i_4_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    o_tx_done_OBUF_inst_i_5
       (.I0(\u_uart/u_bd_generator/contador_reg [46]),
        .I1(\u_uart/u_bd_generator/contador_reg [47]),
        .I2(\u_uart/u_bd_generator/contador_reg [48]),
        .I3(\u_uart/u_bd_generator/contador_reg [49]),
        .I4(o_tx_done_OBUF_inst_i_11_n_0),
        .O(o_tx_done_OBUF_inst_i_5_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    o_tx_done_OBUF_inst_i_6
       (.I0(\u_uart/u_bd_generator/contador_reg [38]),
        .I1(\u_uart/u_bd_generator/contador_reg [39]),
        .I2(\u_uart/u_bd_generator/contador_reg [40]),
        .I3(\u_uart/u_bd_generator/contador_reg [41]),
        .I4(o_tx_done_OBUF_inst_i_12_n_0),
        .O(o_tx_done_OBUF_inst_i_6_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    o_tx_done_OBUF_inst_i_7
       (.I0(\u_uart/u_bd_generator/contador_reg [30]),
        .I1(\u_uart/u_bd_generator/contador_reg [31]),
        .I2(\u_uart/u_bd_generator/contador_reg [32]),
        .I3(\u_uart/u_bd_generator/contador_reg [33]),
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
        .I3(\u_uart/u_bd_generator/contador_reg [1]),
        .I4(\u_uart/u_bd_generator/contador_reg [0]),
        .I5(\u_uart/u_bd_generator/contador_reg [62]),
        .O(o_tx_done_OBUF_inst_i_9_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h5754)) 
    \sampling_counter[0]_i_1 
       (.I0(\u_uart/u_rx_uart/sampling_counter [0]),
        .I1(\u_uart/u_rx_uart/state_reg [0]),
        .I2(\u_uart/u_rx_uart/state_reg [1]),
        .I3(i_rx_IBUF),
        .O(\sampling_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sampling_counter[0]_i_1__0 
       (.I0(\u_uart/u_tx_uart/state_reg [1]),
        .I1(\u_uart/u_tx_uart/state_reg [0]),
        .I2(\u_uart/u_tx_uart/sampling_counter [0]),
        .O(\sampling_counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h02FEFE02)) 
    \sampling_counter[1]_i_1 
       (.I0(i_rx_IBUF),
        .I1(\u_uart/u_rx_uart/state_reg [0]),
        .I2(\u_uart/u_rx_uart/state_reg [1]),
        .I3(\u_uart/u_rx_uart/sampling_counter [1]),
        .I4(\u_uart/u_rx_uart/sampling_counter [0]),
        .O(\sampling_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \sampling_counter[1]_i_1__0 
       (.I0(\u_uart/u_tx_uart/state_reg [0]),
        .I1(\u_uart/u_tx_uart/state_reg [1]),
        .I2(\u_uart/u_tx_uart/sampling_counter [0]),
        .I3(\u_uart/u_tx_uart/sampling_counter [1]),
        .O(\sampling_counter[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h02FEFEFEFE020202)) 
    \sampling_counter[2]_i_1 
       (.I0(i_rx_IBUF),
        .I1(\u_uart/u_rx_uart/state_reg [0]),
        .I2(\u_uart/u_rx_uart/state_reg [1]),
        .I3(\u_uart/u_rx_uart/sampling_counter [1]),
        .I4(\u_uart/u_rx_uart/sampling_counter [0]),
        .I5(\u_uart/u_rx_uart/sampling_counter [2]),
        .O(\sampling_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h77708880)) 
    \sampling_counter[2]_i_1__0 
       (.I0(\u_uart/u_tx_uart/sampling_counter [0]),
        .I1(\u_uart/u_tx_uart/sampling_counter [1]),
        .I2(\u_uart/u_tx_uart/state_reg [1]),
        .I3(\u_uart/u_tx_uart/state_reg [0]),
        .I4(\u_uart/u_tx_uart/sampling_counter [2]),
        .O(\sampling_counter[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \sampling_counter[3]_i_1 
       (.I0(o_tx_done_OBUF_inst_i_3_n_0),
        .I1(\u_uart/u_tx_uart/state_reg [0]),
        .I2(\u_uart/u_tx_uart/state_reg [1]),
        .I3(o_tx_done_OBUF_inst_i_2_n_0),
        .O(\u_uart/u_tx_uart/next_sampling_counter ));
  LUT6 #(
    .INIT(64'hD0D0F0F0F0F000FF)) 
    \sampling_counter[3]_i_1__0 
       (.I0(\u_uart/u_rx_uart/sampling_counter [3]),
        .I1(\sampling_counter[3]_i_3_n_0 ),
        .I2(o_tx_done_OBUF_inst_i_3_n_0),
        .I3(i_rx_IBUF),
        .I4(\u_uart/u_rx_uart/state_reg [0]),
        .I5(\u_uart/u_rx_uart/state_reg [1]),
        .O(\u_uart/u_rx_uart/next_sampling_counter ));
  LUT5 #(
    .INIT(32'hCCCA303A)) 
    \sampling_counter[3]_i_2 
       (.I0(i_rx_IBUF),
        .I1(\sampling_counter[3]_i_3_n_0 ),
        .I2(\u_uart/u_rx_uart/state_reg [1]),
        .I3(\u_uart/u_rx_uart/state_reg [0]),
        .I4(\u_uart/u_rx_uart/sampling_counter [3]),
        .O(\sampling_counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F0080808000)) 
    \sampling_counter[3]_i_2__0 
       (.I0(\u_uart/u_tx_uart/sampling_counter [1]),
        .I1(\u_uart/u_tx_uart/sampling_counter [0]),
        .I2(\u_uart/u_tx_uart/sampling_counter [2]),
        .I3(\u_uart/u_tx_uart/state_reg [1]),
        .I4(\u_uart/u_tx_uart/state_reg [0]),
        .I5(\u_uart/u_tx_uart/sampling_counter [3]),
        .O(\sampling_counter[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \sampling_counter[3]_i_3 
       (.I0(\u_uart/u_rx_uart/sampling_counter [1]),
        .I1(\u_uart/u_rx_uart/sampling_counter [0]),
        .I2(\u_uart/u_rx_uart/sampling_counter [2]),
        .O(\sampling_counter[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    tx_data_i_1
       (.I0(\u_uart/u_tx_uart/state_reg [1]),
        .I1(\u_uart/u_tx_uart/state_reg [0]),
        .O(\u_uart/u_tx_uart/next_tx ));
  (* IMPORTED_FROM = "t:/Repositorios/arqui2020/tp4-MIPS/tp4-mips.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 u_clock
       (.clk_in1(i_clk),
        .clk_out1(u_clock_n_0),
        .locked(NLW_u_clock_locked_UNCONNECTED),
        .reset(i_reset_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_interfaz_rx/next_state_reg[0] 
       (.CLR(1'b0),
        .D(\next_state_reg[0]_i_1_n_0 ),
        .G(\next_state_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\u_interfaz_rx/next_state [0]));
  FDRE #(
    .INIT(1'b0)) 
    \u_interfaz_rx/next_state_reg[0]__0 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\next_state[0]__0_i_1_n_0 ),
        .Q(\u_interfaz_rx/next_state [0]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_interfaz_rx/next_state_reg[1] 
       (.CLR(1'b0),
        .D(\next_state_reg[1]_i_1_n_0 ),
        .G(\next_state_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\u_interfaz_rx/next_state [1]));
  FDRE #(
    .INIT(1'b0)) 
    \u_interfaz_rx/next_state_reg[1]__0 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\next_state[1]__0_i_1_n_0 ),
        .Q(\u_interfaz_rx/next_state [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_interfaz_rx/rx_done_reg 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(o_rx_done_OBUF_BUFG),
        .Q(\u_interfaz_rx/rx_done ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \u_interfaz_rx/state_reg_reg[0] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\next_state[0]__0_i_1_n_0 ),
        .Q(estado_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \u_interfaz_rx/state_reg_reg[1] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\next_state[1]__0_i_1_n_0 ),
        .Q(estado_OBUF[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \u_uart/u_bd_generator/contador_reg[0] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [0]),
        .S(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[10] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [10]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[11] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [11]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[12] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [12]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[13] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [13]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[14] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [14]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[15] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[12]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [15]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[16] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [16]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[17] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [17]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[18] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [18]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[19] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[16]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [19]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[1] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [1]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[20] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [20]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[21] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [21]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[22] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [22]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[23] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[20]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [23]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[24] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [24]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[25] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [25]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[26] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [26]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[27] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[24]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [27]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[28] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [28]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[29] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [29]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \u_uart/u_bd_generator/contador_reg[2] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [2]),
        .S(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[30] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [30]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[31] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[28]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [31]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[32] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [32]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[33] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [33]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[34] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [34]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[35] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[32]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [35]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[36] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [36]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[37] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [37]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[38] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [38]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[39] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[36]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [39]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[3] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[0]_i_2_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [3]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[40] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [40]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[41] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [41]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[42] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [42]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[43] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[40]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [43]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[44] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [44]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[45] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [45]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[46] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [46]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[47] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[44]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [47]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[48] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [48]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[49] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [49]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[4] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [4]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[50] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [50]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[51] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[48]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [51]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[52] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [52]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[53] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [53]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[54] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [54]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[55] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[52]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [55]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[56] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [56]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[57] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [57]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[58] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [58]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[59] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[56]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [59]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[5] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [5]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[60] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[60]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [60]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[61] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[60]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [61]),
        .R(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[62] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[60]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [62]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \u_uart/u_bd_generator/contador_reg[6] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_5 ),
        .Q(\u_uart/u_bd_generator/contador_reg [6]),
        .S(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[7] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[4]_i_1_n_4 ),
        .Q(\u_uart/u_bd_generator/contador_reg [7]),
        .R(\contador[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \u_uart/u_bd_generator/contador_reg[8] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_7 ),
        .Q(\u_uart/u_bd_generator/contador_reg [8]),
        .S(\contador[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_bd_generator/contador_reg[9] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\contador_reg[8]_i_1_n_6 ),
        .Q(\u_uart/u_bd_generator/contador_reg [9]),
        .R(\contador[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/FSM_sequential_state_reg_reg[0] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(\u_uart/u_rx_uart/state_reg [0]),
        .R(i_reset_IBUF));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/FSM_sequential_state_reg_reg[1] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(\u_uart/u_rx_uart/state_reg [1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/bits_counter_reg[0] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_bit_counter ),
        .D(\bits_counter[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/bits_counter_reg[1] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_bit_counter ),
        .D(\bits_counter[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/bits_counter_reg[2] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_bit_counter ),
        .D(\bits_counter[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/bits_counter_reg[3] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_bit_counter ),
        .D(\bits_counter[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/bits_counter_reg[4] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_bit_counter ),
        .D(\bits_counter[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/bits_counter_reg[5] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_bit_counter ),
        .D(\bits_counter[5]_i_2_n_0 ),
        .Q(sel0[5]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[0] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [1]),
        .Q(\u_uart/u_rx_uart/buffer [0]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[10] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [11]),
        .Q(\u_uart/u_rx_uart/buffer [10]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[11] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [12]),
        .Q(\u_uart/u_rx_uart/buffer [11]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[12] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [13]),
        .Q(\u_uart/u_rx_uart/buffer [12]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[13] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [14]),
        .Q(\u_uart/u_rx_uart/buffer [13]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[14] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [15]),
        .Q(\u_uart/u_rx_uart/buffer [14]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[15] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [16]),
        .Q(\u_uart/u_rx_uart/buffer [15]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[16] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [17]),
        .Q(\u_uart/u_rx_uart/buffer [16]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[17] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [18]),
        .Q(\u_uart/u_rx_uart/buffer [17]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[18] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [19]),
        .Q(\u_uart/u_rx_uart/buffer [18]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[19] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [20]),
        .Q(\u_uart/u_rx_uart/buffer [19]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[1] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [2]),
        .Q(\u_uart/u_rx_uart/buffer [1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[20] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [21]),
        .Q(\u_uart/u_rx_uart/buffer [20]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[21] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [22]),
        .Q(\u_uart/u_rx_uart/buffer [21]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[22] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [23]),
        .Q(\u_uart/u_rx_uart/buffer [22]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[23] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [24]),
        .Q(\u_uart/u_rx_uart/buffer [23]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[24] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [25]),
        .Q(\u_uart/u_rx_uart/buffer [24]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[25] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [26]),
        .Q(\u_uart/u_rx_uart/buffer [25]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[26] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [27]),
        .Q(\u_uart/u_rx_uart/buffer [26]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[27] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [28]),
        .Q(\u_uart/u_rx_uart/buffer [27]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[28] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [29]),
        .Q(\u_uart/u_rx_uart/buffer [28]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[29] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [30]),
        .Q(\u_uart/u_rx_uart/buffer [29]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[2] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [3]),
        .Q(\u_uart/u_rx_uart/buffer [2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[30] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [31]),
        .Q(\u_uart/u_rx_uart/buffer [30]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[31] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(i_rx_IBUF),
        .Q(\u_uart/u_rx_uart/buffer [31]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[3] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [4]),
        .Q(\u_uart/u_rx_uart/buffer [3]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[4] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [5]),
        .Q(\u_uart/u_rx_uart/buffer [4]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[5] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [6]),
        .Q(\u_uart/u_rx_uart/buffer [5]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[6] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [7]),
        .Q(\u_uart/u_rx_uart/buffer [6]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[7] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [8]),
        .Q(\u_uart/u_rx_uart/buffer [7]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[8] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [9]),
        .Q(\u_uart/u_rx_uart/buffer [8]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/buffer_reg[9] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_buffer ),
        .D(\u_uart/u_rx_uart/buffer [10]),
        .Q(\u_uart/u_rx_uart/buffer [9]),
        .R(i_reset_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[0] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [0]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[10] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [10]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[11] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [11]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[12] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [12]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[13] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [13]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[14] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [14]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[15] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [15]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[16] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [16]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[17] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [17]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[18] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [18]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[19] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [19]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[1] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [1]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[20] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [20]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[21] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [21]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[22] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [22]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[23] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [23]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[24] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [24]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[25] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [25]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[26] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [26]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[27] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [27]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[28] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [28]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[29] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [29]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[2] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [2]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[30] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [30]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[31] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [31]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[3] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [3]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[4] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [4]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[5] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [5]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[6] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [6]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[7] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [7]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[8] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [8]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/data_out_reg[9] 
       (.CLR(1'b0),
        .D(\u_uart/u_rx_uart/buffer [9]),
        .G(o_rx_done_OBUF_BUFG),
        .GE(1'b1),
        .Q(rx_data_OBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/sampling_counter_reg[0] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_sampling_counter ),
        .D(\sampling_counter[0]_i_1_n_0 ),
        .Q(\u_uart/u_rx_uart/sampling_counter [0]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/sampling_counter_reg[1] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_sampling_counter ),
        .D(\sampling_counter[1]_i_1_n_0 ),
        .Q(\u_uart/u_rx_uart/sampling_counter [1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/sampling_counter_reg[2] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_sampling_counter ),
        .D(\sampling_counter[2]_i_1_n_0 ),
        .Q(\u_uart/u_rx_uart/sampling_counter [2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_rx_uart/sampling_counter_reg[3] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_rx_uart/next_sampling_counter ),
        .D(\sampling_counter[3]_i_2_n_0 ),
        .Q(\u_uart/u_rx_uart/sampling_counter [3]),
        .R(i_reset_IBUF));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/FSM_sequential_state_reg_reg[0] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_0 ),
        .Q(\u_uart/u_tx_uart/state_reg [0]),
        .R(i_reset_IBUF));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/FSM_sequential_state_reg_reg[1] 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(\u_uart/u_tx_uart/state_reg [1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/bits_counter_reg[0] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_tx_uart/next_bit_counter ),
        .D(\bits_counter[0]_i_1__0_n_0 ),
        .Q(sel0__0[0]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/bits_counter_reg[1] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_tx_uart/next_bit_counter ),
        .D(\bits_counter[1]_i_1__0_n_0 ),
        .Q(sel0__0[1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/bits_counter_reg[2] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_tx_uart/next_bit_counter ),
        .D(\bits_counter[2]_i_1__0_n_0 ),
        .Q(sel0__0[2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/bits_counter_reg[3] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_tx_uart/next_bit_counter ),
        .D(\bits_counter[3]_i_1__0_n_0 ),
        .Q(sel0__0[3]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/bits_counter_reg[4] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_tx_uart/next_bit_counter ),
        .D(\bits_counter[4]_i_1__0_n_0 ),
        .Q(sel0__0[4]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/bits_counter_reg[5] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_tx_uart/next_bit_counter ),
        .D(\bits_counter[5]_i_2__0_n_0 ),
        .Q(sel0__0[5]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/sampling_counter_reg[0] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_tx_uart/next_sampling_counter ),
        .D(\sampling_counter[0]_i_1__0_n_0 ),
        .Q(\u_uart/u_tx_uart/sampling_counter [0]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/sampling_counter_reg[1] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_tx_uart/next_sampling_counter ),
        .D(\sampling_counter[1]_i_1__0_n_0 ),
        .Q(\u_uart/u_tx_uart/sampling_counter [1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/sampling_counter_reg[2] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_tx_uart/next_sampling_counter ),
        .D(\sampling_counter[2]_i_1__0_n_0 ),
        .Q(\u_uart/u_tx_uart/sampling_counter [2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_uart/u_tx_uart/sampling_counter_reg[3] 
       (.C(u_clock_n_0),
        .CE(\u_uart/u_tx_uart/next_sampling_counter ),
        .D(\sampling_counter[3]_i_2__0_n_0 ),
        .Q(\u_uart/u_tx_uart/sampling_counter [3]),
        .R(i_reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \u_uart/u_tx_uart/tx_data_reg 
       (.C(u_clock_n_0),
        .CE(1'b1),
        .D(\u_uart/u_tx_uart/next_tx ),
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
