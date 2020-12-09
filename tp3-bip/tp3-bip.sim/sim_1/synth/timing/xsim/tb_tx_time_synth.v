// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Dec  8 19:29:48 2020
// Host        : Archimedes running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/Arqui/tp3-bip/tp3-bip.sim/sim_1/synth/timing/xsim/tb_tx_time_synth.v
// Design      : tx_uart
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* DATA = "2'b10" *) (* DATA_BITS = "16" *) (* IDLE = "2'b00" *) 
(* N_TICKS = "16" *) (* START = "2'b01" *) (* STOP = "2'b11" *) 
(* NotValidForBitStream *)
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
  input [15:0]i_data_in;
  output o_tx_done;
  output o_data_out;

  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \bits_counter[0]_i_1_n_0 ;
  wire \bits_counter[1]_i_1_n_0 ;
  wire \bits_counter[2]_i_1_n_0 ;
  wire \bits_counter[3]_i_2_n_0 ;
  wire \bits_counter[3]_i_3_n_0 ;
  wire [0:0]buffer;
  wire \buffer[0]_i_1_n_0 ;
  wire \buffer[10]_i_1_n_0 ;
  wire \buffer[11]_i_1_n_0 ;
  wire \buffer[12]_i_1_n_0 ;
  wire \buffer[13]_i_1_n_0 ;
  wire \buffer[14]_i_1_n_0 ;
  wire \buffer[15]_i_2_n_0 ;
  wire \buffer[1]_i_1_n_0 ;
  wire \buffer[2]_i_1_n_0 ;
  wire \buffer[3]_i_1_n_0 ;
  wire \buffer[4]_i_1_n_0 ;
  wire \buffer[5]_i_1_n_0 ;
  wire \buffer[6]_i_1_n_0 ;
  wire \buffer[7]_i_1_n_0 ;
  wire \buffer[8]_i_1_n_0 ;
  wire \buffer[9]_i_1_n_0 ;
  wire [15:1]buffer__0;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [15:0]i_data_in;
  wire [15:0]i_data_in_IBUF;
  wire i_reset;
  wire i_reset_IBUF;
  wire i_ticks;
  wire i_ticks_IBUF;
  wire i_tx_start;
  wire i_tx_start_IBUF;
  wire next_bit_counter;
  wire next_buffer;
  wire next_sampling_counter;
  wire next_tx;
  wire o_data_out;
  wire o_data_out_OBUF;
  wire o_tx_done;
  wire o_tx_done_OBUF;
  wire o_tx_done_OBUF_inst_i_2_n_0;
  wire [3:0]sampling_counter;
  wire \sampling_counter[0]_i_1_n_0 ;
  wire \sampling_counter[1]_i_1_n_0 ;
  wire \sampling_counter[2]_i_1_n_0 ;
  wire \sampling_counter[3]_i_2_n_0 ;
  wire [3:0]sel0;
  wire [1:0]state_reg;

initial begin
 $sdf_annotate("tb_tx_time_synth.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006626)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I2(state_reg[1]),
        .I3(i_ticks_IBUF),
        .I4(i_reset_IBUF),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006A62)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(i_ticks_IBUF),
        .I4(i_reset_IBUF),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h303000AA303030AA)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(i_tx_start_IBUF),
        .I1(o_tx_done_OBUF_inst_i_2_n_0),
        .I2(i_ticks_IBUF),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .I5(\bits_counter[3]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \bits_counter[0]_i_1 
       (.I0(state_reg[1]),
        .I1(sel0[0]),
        .O(\bits_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bits_counter[1]_i_1 
       (.I0(state_reg[1]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\bits_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \bits_counter[2]_i_1 
       (.I0(state_reg[1]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\bits_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000C80)) 
    \bits_counter[3]_i_1 
       (.I0(\bits_counter[3]_i_3_n_0 ),
        .I1(i_ticks_IBUF),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(o_tx_done_OBUF_inst_i_2_n_0),
        .O(next_bit_counter));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \bits_counter[3]_i_2 
       (.I0(state_reg[1]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(\bits_counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bits_counter[3]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[0]_i_1 
       (.I0(buffer__0[1]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[0]),
        .O(\buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[10]_i_1 
       (.I0(buffer__0[11]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[10]),
        .O(\buffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[11]_i_1 
       (.I0(buffer__0[12]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[11]),
        .O(\buffer[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[12]_i_1 
       (.I0(buffer__0[13]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[12]),
        .O(\buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[13]_i_1 
       (.I0(buffer__0[14]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[13]),
        .O(\buffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[14]_i_1 
       (.I0(buffer__0[15]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[14]),
        .O(\buffer[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h030A000A)) 
    \buffer[15]_i_1 
       (.I0(i_tx_start_IBUF),
        .I1(o_tx_done_OBUF_inst_i_2_n_0),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(i_ticks_IBUF),
        .O(next_buffer));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buffer[15]_i_2 
       (.I0(i_data_in_IBUF[15]),
        .I1(state_reg[1]),
        .O(\buffer[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[1]_i_1 
       (.I0(buffer__0[2]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[1]),
        .O(\buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[2]_i_1 
       (.I0(buffer__0[3]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[2]),
        .O(\buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[3]_i_1 
       (.I0(buffer__0[4]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[3]),
        .O(\buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[4]_i_1 
       (.I0(buffer__0[5]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[4]),
        .O(\buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[5]_i_1 
       (.I0(buffer__0[6]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[5]),
        .O(\buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[6]_i_1 
       (.I0(buffer__0[7]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[6]),
        .O(\buffer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[7]_i_1 
       (.I0(buffer__0[8]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[7]),
        .O(\buffer[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[8]_i_1 
       (.I0(buffer__0[9]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[8]),
        .O(\buffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[9]_i_1 
       (.I0(buffer__0[10]),
        .I1(state_reg[1]),
        .I2(i_data_in_IBUF[9]),
        .O(\buffer[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[0]_i_1_n_0 ),
        .Q(buffer),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[10]_i_1_n_0 ),
        .Q(buffer__0[10]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[11]_i_1_n_0 ),
        .Q(buffer__0[11]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[12]_i_1_n_0 ),
        .Q(buffer__0[12]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[13]_i_1_n_0 ),
        .Q(buffer__0[13]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[14]_i_1_n_0 ),
        .Q(buffer__0[14]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[15]_i_2_n_0 ),
        .Q(buffer__0[15]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[1]_i_1_n_0 ),
        .Q(buffer__0[1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[2]_i_1_n_0 ),
        .Q(buffer__0[2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[3]_i_1_n_0 ),
        .Q(buffer__0[3]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[4]_i_1_n_0 ),
        .Q(buffer__0[4]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[5]_i_1_n_0 ),
        .Q(buffer__0[5]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[6]_i_1_n_0 ),
        .Q(buffer__0[6]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[7]_i_1_n_0 ),
        .Q(buffer__0[7]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[8]_i_1_n_0 ),
        .Q(buffer__0[8]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(next_buffer),
        .D(\buffer[9]_i_1_n_0 ),
        .Q(buffer__0[9]),
        .R(i_reset_IBUF));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_data_in_IBUF[0]_inst 
       (.I(i_data_in[0]),
        .O(i_data_in_IBUF[0]));
  IBUF \i_data_in_IBUF[10]_inst 
       (.I(i_data_in[10]),
        .O(i_data_in_IBUF[10]));
  IBUF \i_data_in_IBUF[11]_inst 
       (.I(i_data_in[11]),
        .O(i_data_in_IBUF[11]));
  IBUF \i_data_in_IBUF[12]_inst 
       (.I(i_data_in[12]),
        .O(i_data_in_IBUF[12]));
  IBUF \i_data_in_IBUF[13]_inst 
       (.I(i_data_in[13]),
        .O(i_data_in_IBUF[13]));
  IBUF \i_data_in_IBUF[14]_inst 
       (.I(i_data_in[14]),
        .O(i_data_in_IBUF[14]));
  IBUF \i_data_in_IBUF[15]_inst 
       (.I(i_data_in[15]),
        .O(i_data_in_IBUF[15]));
  IBUF \i_data_in_IBUF[1]_inst 
       (.I(i_data_in[1]),
        .O(i_data_in_IBUF[1]));
  IBUF \i_data_in_IBUF[2]_inst 
       (.I(i_data_in[2]),
        .O(i_data_in_IBUF[2]));
  IBUF \i_data_in_IBUF[3]_inst 
       (.I(i_data_in[3]),
        .O(i_data_in_IBUF[3]));
  IBUF \i_data_in_IBUF[4]_inst 
       (.I(i_data_in[4]),
        .O(i_data_in_IBUF[4]));
  IBUF \i_data_in_IBUF[5]_inst 
       (.I(i_data_in[5]),
        .O(i_data_in_IBUF[5]));
  IBUF \i_data_in_IBUF[6]_inst 
       (.I(i_data_in[6]),
        .O(i_data_in_IBUF[6]));
  IBUF \i_data_in_IBUF[7]_inst 
       (.I(i_data_in[7]),
        .O(i_data_in_IBUF[7]));
  IBUF \i_data_in_IBUF[8]_inst 
       (.I(i_data_in[8]),
        .O(i_data_in_IBUF[8]));
  IBUF \i_data_in_IBUF[9]_inst 
       (.I(i_data_in[9]),
        .O(i_data_in_IBUF[9]));
  IBUF i_reset_IBUF_inst
       (.I(i_reset),
        .O(i_reset_IBUF));
  IBUF i_ticks_IBUF_inst
       (.I(i_ticks),
        .O(i_ticks_IBUF));
  IBUF i_tx_start_IBUF_inst
       (.I(i_tx_start),
        .O(i_tx_start_IBUF));
  OBUF o_data_out_OBUF_inst
       (.I(o_data_out_OBUF),
        .O(o_data_out));
  OBUF o_tx_done_OBUF_inst
       (.I(o_tx_done_OBUF),
        .O(o_tx_done));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    o_tx_done_OBUF_inst_i_1
       (.I0(state_reg[1]),
        .I1(i_ticks_IBUF),
        .I2(state_reg[0]),
        .I3(o_tx_done_OBUF_inst_i_2_n_0),
        .O(o_tx_done_OBUF));
  LUT4 #(
    .INIT(16'h7FFF)) 
    o_tx_done_OBUF_inst_i_2
       (.I0(sampling_counter[0]),
        .I1(sampling_counter[1]),
        .I2(sampling_counter[2]),
        .I3(sampling_counter[3]),
        .O(o_tx_done_OBUF_inst_i_2_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    \sampling_counter[0]_i_1 
       (.I0(sampling_counter[0]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .O(\sampling_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    \sampling_counter[1]_i_1 
       (.I0(sampling_counter[1]),
        .I1(sampling_counter[0]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\sampling_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h78787800)) 
    \sampling_counter[2]_i_1 
       (.I0(sampling_counter[0]),
        .I1(sampling_counter[1]),
        .I2(sampling_counter[2]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(\sampling_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8CCF8CC0)) 
    \sampling_counter[3]_i_1 
       (.I0(o_tx_done_OBUF_inst_i_2_n_0),
        .I1(i_ticks_IBUF),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(i_tx_start_IBUF),
        .O(next_sampling_counter));
  LUT6 #(
    .INIT(64'h7F807F807F800000)) 
    \sampling_counter[3]_i_2 
       (.I0(sampling_counter[2]),
        .I1(sampling_counter[1]),
        .I2(sampling_counter[0]),
        .I3(sampling_counter[3]),
        .I4(state_reg[1]),
        .I5(state_reg[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE5)) 
    tx_data_i_1
       (.I0(state_reg[0]),
        .I1(buffer),
        .I2(state_reg[1]),
        .O(next_tx));
  FDSE #(
    .INIT(1'b1)) 
    tx_data_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_tx),
        .Q(o_data_out_OBUF),
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
