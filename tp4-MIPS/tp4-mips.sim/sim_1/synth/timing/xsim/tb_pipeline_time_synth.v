// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Jul 16 21:11:14 2021
// Host        : Archimedes running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               T:/Repositorios/arqui2020/tp4-MIPS/tp4-mips.sim/sim_1/synth/timing/xsim/tb_pipeline_time_synth.v
// Design      : top_pipeline
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NB_REG = "5" *) (* N_BITS = "32" *) 
(* NotValidForBitStream *)
module top_pipeline
   (i_clk,
    i_reset,
    i_valid,
    i_exec_mode,
    i_step,
    o_pc,
    o_registros,
    o_data_memory,
    o_ciclos,
    o_halt);
  input i_clk;
  input i_reset;
  input i_valid;
  input i_exec_mode;
  input i_step;
  output [31:0]o_pc;
  output [1023:0]o_registros;
  output [31:0]o_data_memory;
  output [31:0]o_ciclos;
  output o_halt;

  wire \count[0]_i_3_n_0 ;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_exec_mode;
  wire i_exec_mode_IBUF;
  wire i_reset;
  wire i_reset_IBUF;
  wire i_step;
  wire i_step_IBUF;
  wire i_valid;
  wire i_valid_IBUF;
  wire [31:0]o_ciclos;
  wire [31:0]o_ciclos_OBUF;
  wire [31:0]o_data_memory;
  wire [1:0]o_data_memory_OBUF;
  wire o_halt;
  wire [31:0]o_pc;
  wire \o_pc_4[31]_i_1_n_0 ;
  wire \o_pc_4_reg[12]_i_1_n_0 ;
  wire \o_pc_4_reg[12]_i_1_n_1 ;
  wire \o_pc_4_reg[12]_i_1_n_2 ;
  wire \o_pc_4_reg[12]_i_1_n_3 ;
  wire \o_pc_4_reg[16]_i_1_n_0 ;
  wire \o_pc_4_reg[16]_i_1_n_1 ;
  wire \o_pc_4_reg[16]_i_1_n_2 ;
  wire \o_pc_4_reg[16]_i_1_n_3 ;
  wire \o_pc_4_reg[20]_i_1_n_0 ;
  wire \o_pc_4_reg[20]_i_1_n_1 ;
  wire \o_pc_4_reg[20]_i_1_n_2 ;
  wire \o_pc_4_reg[20]_i_1_n_3 ;
  wire \o_pc_4_reg[24]_i_1_n_0 ;
  wire \o_pc_4_reg[24]_i_1_n_1 ;
  wire \o_pc_4_reg[24]_i_1_n_2 ;
  wire \o_pc_4_reg[24]_i_1_n_3 ;
  wire \o_pc_4_reg[28]_i_1_n_0 ;
  wire \o_pc_4_reg[28]_i_1_n_1 ;
  wire \o_pc_4_reg[28]_i_1_n_2 ;
  wire \o_pc_4_reg[28]_i_1_n_3 ;
  wire \o_pc_4_reg[31]_i_2_n_2 ;
  wire \o_pc_4_reg[31]_i_2_n_3 ;
  wire \o_pc_4_reg[4]_i_1_n_0 ;
  wire \o_pc_4_reg[4]_i_1_n_1 ;
  wire \o_pc_4_reg[4]_i_1_n_2 ;
  wire \o_pc_4_reg[4]_i_1_n_3 ;
  wire \o_pc_4_reg[8]_i_1_n_0 ;
  wire \o_pc_4_reg[8]_i_1_n_1 ;
  wire \o_pc_4_reg[8]_i_1_n_2 ;
  wire \o_pc_4_reg[8]_i_1_n_3 ;
  wire [31:0]o_pc_OBUF;
  wire \o_pc_OBUF[12]_inst_i_1_n_0 ;
  wire \o_pc_OBUF[12]_inst_i_1_n_1 ;
  wire \o_pc_OBUF[12]_inst_i_1_n_2 ;
  wire \o_pc_OBUF[12]_inst_i_1_n_3 ;
  wire \o_pc_OBUF[12]_inst_i_2_n_0 ;
  wire \o_pc_OBUF[12]_inst_i_3_n_0 ;
  wire \o_pc_OBUF[12]_inst_i_4_n_0 ;
  wire \o_pc_OBUF[12]_inst_i_5_n_0 ;
  wire \o_pc_OBUF[16]_inst_i_1_n_0 ;
  wire \o_pc_OBUF[16]_inst_i_1_n_1 ;
  wire \o_pc_OBUF[16]_inst_i_1_n_2 ;
  wire \o_pc_OBUF[16]_inst_i_1_n_3 ;
  wire \o_pc_OBUF[16]_inst_i_2_n_0 ;
  wire \o_pc_OBUF[16]_inst_i_3_n_0 ;
  wire \o_pc_OBUF[16]_inst_i_4_n_0 ;
  wire \o_pc_OBUF[16]_inst_i_5_n_0 ;
  wire \o_pc_OBUF[20]_inst_i_1_n_0 ;
  wire \o_pc_OBUF[20]_inst_i_1_n_1 ;
  wire \o_pc_OBUF[20]_inst_i_1_n_2 ;
  wire \o_pc_OBUF[20]_inst_i_1_n_3 ;
  wire \o_pc_OBUF[20]_inst_i_2_n_0 ;
  wire \o_pc_OBUF[20]_inst_i_3_n_0 ;
  wire \o_pc_OBUF[20]_inst_i_4_n_0 ;
  wire \o_pc_OBUF[20]_inst_i_5_n_0 ;
  wire \o_pc_OBUF[24]_inst_i_1_n_0 ;
  wire \o_pc_OBUF[24]_inst_i_1_n_1 ;
  wire \o_pc_OBUF[24]_inst_i_1_n_2 ;
  wire \o_pc_OBUF[24]_inst_i_1_n_3 ;
  wire \o_pc_OBUF[24]_inst_i_2_n_0 ;
  wire \o_pc_OBUF[24]_inst_i_3_n_0 ;
  wire \o_pc_OBUF[24]_inst_i_4_n_0 ;
  wire \o_pc_OBUF[24]_inst_i_5_n_0 ;
  wire \o_pc_OBUF[28]_inst_i_1_n_0 ;
  wire \o_pc_OBUF[28]_inst_i_1_n_1 ;
  wire \o_pc_OBUF[28]_inst_i_1_n_2 ;
  wire \o_pc_OBUF[28]_inst_i_1_n_3 ;
  wire \o_pc_OBUF[28]_inst_i_2_n_0 ;
  wire \o_pc_OBUF[28]_inst_i_3_n_0 ;
  wire \o_pc_OBUF[28]_inst_i_4_n_0 ;
  wire \o_pc_OBUF[28]_inst_i_5_n_0 ;
  wire \o_pc_OBUF[31]_inst_i_1_n_2 ;
  wire \o_pc_OBUF[31]_inst_i_1_n_3 ;
  wire \o_pc_OBUF[31]_inst_i_2_n_0 ;
  wire \o_pc_OBUF[31]_inst_i_3_n_0 ;
  wire \o_pc_OBUF[31]_inst_i_4_n_0 ;
  wire \o_pc_OBUF[4]_inst_i_1_n_0 ;
  wire \o_pc_OBUF[4]_inst_i_1_n_1 ;
  wire \o_pc_OBUF[4]_inst_i_1_n_2 ;
  wire \o_pc_OBUF[4]_inst_i_1_n_3 ;
  wire \o_pc_OBUF[4]_inst_i_2_n_0 ;
  wire \o_pc_OBUF[4]_inst_i_3_n_0 ;
  wire \o_pc_OBUF[4]_inst_i_4_n_0 ;
  wire \o_pc_OBUF[4]_inst_i_5_n_0 ;
  wire \o_pc_OBUF[8]_inst_i_1_n_0 ;
  wire \o_pc_OBUF[8]_inst_i_1_n_1 ;
  wire \o_pc_OBUF[8]_inst_i_1_n_2 ;
  wire \o_pc_OBUF[8]_inst_i_1_n_3 ;
  wire \o_pc_OBUF[8]_inst_i_2_n_0 ;
  wire \o_pc_OBUF[8]_inst_i_3_n_0 ;
  wire \o_pc_OBUF[8]_inst_i_4_n_0 ;
  wire \o_pc_OBUF[8]_inst_i_5_n_0 ;
  wire [1023:0]o_registros;
  wire [160:160]o_registros_OBUF;
  wire [31:0]pc0;
  wire [31:0]pc_4;
  wire \pc_reg[13]_i_1_n_0 ;
  wire \pc_reg[13]_i_1_n_1 ;
  wire \pc_reg[13]_i_1_n_2 ;
  wire \pc_reg[13]_i_1_n_3 ;
  wire \pc_reg[13]_i_1_n_4 ;
  wire \pc_reg[13]_i_1_n_5 ;
  wire \pc_reg[13]_i_1_n_6 ;
  wire \pc_reg[13]_i_1_n_7 ;
  wire \pc_reg[17]_i_1_n_0 ;
  wire \pc_reg[17]_i_1_n_1 ;
  wire \pc_reg[17]_i_1_n_2 ;
  wire \pc_reg[17]_i_1_n_3 ;
  wire \pc_reg[17]_i_1_n_4 ;
  wire \pc_reg[17]_i_1_n_5 ;
  wire \pc_reg[17]_i_1_n_6 ;
  wire \pc_reg[17]_i_1_n_7 ;
  wire \pc_reg[1]_i_1_n_0 ;
  wire \pc_reg[1]_i_1_n_1 ;
  wire \pc_reg[1]_i_1_n_2 ;
  wire \pc_reg[1]_i_1_n_3 ;
  wire \pc_reg[1]_i_1_n_4 ;
  wire \pc_reg[1]_i_1_n_5 ;
  wire \pc_reg[1]_i_1_n_6 ;
  wire \pc_reg[1]_i_1_n_7 ;
  wire \pc_reg[21]_i_1_n_0 ;
  wire \pc_reg[21]_i_1_n_1 ;
  wire \pc_reg[21]_i_1_n_2 ;
  wire \pc_reg[21]_i_1_n_3 ;
  wire \pc_reg[21]_i_1_n_4 ;
  wire \pc_reg[21]_i_1_n_5 ;
  wire \pc_reg[21]_i_1_n_6 ;
  wire \pc_reg[21]_i_1_n_7 ;
  wire \pc_reg[25]_i_1_n_0 ;
  wire \pc_reg[25]_i_1_n_1 ;
  wire \pc_reg[25]_i_1_n_2 ;
  wire \pc_reg[25]_i_1_n_3 ;
  wire \pc_reg[25]_i_1_n_4 ;
  wire \pc_reg[25]_i_1_n_5 ;
  wire \pc_reg[25]_i_1_n_6 ;
  wire \pc_reg[25]_i_1_n_7 ;
  wire \pc_reg[29]_i_1_n_2 ;
  wire \pc_reg[29]_i_1_n_3 ;
  wire \pc_reg[29]_i_1_n_5 ;
  wire \pc_reg[29]_i_1_n_6 ;
  wire \pc_reg[29]_i_1_n_7 ;
  wire \pc_reg[5]_i_1_n_0 ;
  wire \pc_reg[5]_i_1_n_1 ;
  wire \pc_reg[5]_i_1_n_2 ;
  wire \pc_reg[5]_i_1_n_3 ;
  wire \pc_reg[5]_i_1_n_4 ;
  wire \pc_reg[5]_i_1_n_5 ;
  wire \pc_reg[5]_i_1_n_6 ;
  wire \pc_reg[5]_i_1_n_7 ;
  wire \pc_reg[9]_i_1_n_0 ;
  wire \pc_reg[9]_i_1_n_1 ;
  wire \pc_reg[9]_i_1_n_2 ;
  wire \pc_reg[9]_i_1_n_3 ;
  wire \pc_reg[9]_i_1_n_4 ;
  wire \pc_reg[9]_i_1_n_5 ;
  wire \pc_reg[9]_i_1_n_6 ;
  wire \pc_reg[9]_i_1_n_7 ;
  wire \u_clk_cntr/count ;
  wire [0:0]\u_fetch/pc_reg ;
  wire [31:1]\u_fetch/pc_reg__0 ;
  wire [1:0]\u_mem/read_data ;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_o_pc_4_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_o_pc_4_reg[31]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_o_pc_4_reg[4]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_o_pc_OBUF[31]_inst_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_o_pc_OBUF[31]_inst_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_pc_reg[29]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pc_reg[29]_i_1_O_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_pipeline_time_synth.sdf",,,,"tool_control");
end
  LUT3 #(
    .INIT(8'hD0)) 
    \count[0]_i_1 
       (.I0(i_exec_mode_IBUF),
        .I1(i_step_IBUF),
        .I2(i_valid_IBUF),
        .O(\u_clk_cntr/count ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3 
       (.I0(o_ciclos_OBUF[0]),
        .O(\count[0]_i_3_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({o_ciclos_OBUF[3:1],\count[0]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(o_ciclos_OBUF[15:12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(o_ciclos_OBUF[19:16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(o_ciclos_OBUF[23:20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(o_ciclos_OBUF[27:24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(o_ciclos_OBUF[31:28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(o_ciclos_OBUF[7:4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(o_ciclos_OBUF[11:8]));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF i_exec_mode_IBUF_inst
       (.I(i_exec_mode),
        .O(i_exec_mode_IBUF));
  IBUF i_reset_IBUF_inst
       (.I(i_reset),
        .O(i_reset_IBUF));
  IBUF i_step_IBUF_inst
       (.I(i_step),
        .O(i_step_IBUF));
  IBUF i_valid_IBUF_inst
       (.I(i_valid),
        .O(i_valid_IBUF));
  OBUF \o_ciclos_OBUF[0]_inst 
       (.I(o_ciclos_OBUF[0]),
        .O(o_ciclos[0]));
  OBUF \o_ciclos_OBUF[10]_inst 
       (.I(o_ciclos_OBUF[10]),
        .O(o_ciclos[10]));
  OBUF \o_ciclos_OBUF[11]_inst 
       (.I(o_ciclos_OBUF[11]),
        .O(o_ciclos[11]));
  OBUF \o_ciclos_OBUF[12]_inst 
       (.I(o_ciclos_OBUF[12]),
        .O(o_ciclos[12]));
  OBUF \o_ciclos_OBUF[13]_inst 
       (.I(o_ciclos_OBUF[13]),
        .O(o_ciclos[13]));
  OBUF \o_ciclos_OBUF[14]_inst 
       (.I(o_ciclos_OBUF[14]),
        .O(o_ciclos[14]));
  OBUF \o_ciclos_OBUF[15]_inst 
       (.I(o_ciclos_OBUF[15]),
        .O(o_ciclos[15]));
  OBUF \o_ciclos_OBUF[16]_inst 
       (.I(o_ciclos_OBUF[16]),
        .O(o_ciclos[16]));
  OBUF \o_ciclos_OBUF[17]_inst 
       (.I(o_ciclos_OBUF[17]),
        .O(o_ciclos[17]));
  OBUF \o_ciclos_OBUF[18]_inst 
       (.I(o_ciclos_OBUF[18]),
        .O(o_ciclos[18]));
  OBUF \o_ciclos_OBUF[19]_inst 
       (.I(o_ciclos_OBUF[19]),
        .O(o_ciclos[19]));
  OBUF \o_ciclos_OBUF[1]_inst 
       (.I(o_ciclos_OBUF[1]),
        .O(o_ciclos[1]));
  OBUF \o_ciclos_OBUF[20]_inst 
       (.I(o_ciclos_OBUF[20]),
        .O(o_ciclos[20]));
  OBUF \o_ciclos_OBUF[21]_inst 
       (.I(o_ciclos_OBUF[21]),
        .O(o_ciclos[21]));
  OBUF \o_ciclos_OBUF[22]_inst 
       (.I(o_ciclos_OBUF[22]),
        .O(o_ciclos[22]));
  OBUF \o_ciclos_OBUF[23]_inst 
       (.I(o_ciclos_OBUF[23]),
        .O(o_ciclos[23]));
  OBUF \o_ciclos_OBUF[24]_inst 
       (.I(o_ciclos_OBUF[24]),
        .O(o_ciclos[24]));
  OBUF \o_ciclos_OBUF[25]_inst 
       (.I(o_ciclos_OBUF[25]),
        .O(o_ciclos[25]));
  OBUF \o_ciclos_OBUF[26]_inst 
       (.I(o_ciclos_OBUF[26]),
        .O(o_ciclos[26]));
  OBUF \o_ciclos_OBUF[27]_inst 
       (.I(o_ciclos_OBUF[27]),
        .O(o_ciclos[27]));
  OBUF \o_ciclos_OBUF[28]_inst 
       (.I(o_ciclos_OBUF[28]),
        .O(o_ciclos[28]));
  OBUF \o_ciclos_OBUF[29]_inst 
       (.I(o_ciclos_OBUF[29]),
        .O(o_ciclos[29]));
  OBUF \o_ciclos_OBUF[2]_inst 
       (.I(o_ciclos_OBUF[2]),
        .O(o_ciclos[2]));
  OBUF \o_ciclos_OBUF[30]_inst 
       (.I(o_ciclos_OBUF[30]),
        .O(o_ciclos[30]));
  OBUF \o_ciclos_OBUF[31]_inst 
       (.I(o_ciclos_OBUF[31]),
        .O(o_ciclos[31]));
  OBUF \o_ciclos_OBUF[3]_inst 
       (.I(o_ciclos_OBUF[3]),
        .O(o_ciclos[3]));
  OBUF \o_ciclos_OBUF[4]_inst 
       (.I(o_ciclos_OBUF[4]),
        .O(o_ciclos[4]));
  OBUF \o_ciclos_OBUF[5]_inst 
       (.I(o_ciclos_OBUF[5]),
        .O(o_ciclos[5]));
  OBUF \o_ciclos_OBUF[6]_inst 
       (.I(o_ciclos_OBUF[6]),
        .O(o_ciclos[6]));
  OBUF \o_ciclos_OBUF[7]_inst 
       (.I(o_ciclos_OBUF[7]),
        .O(o_ciclos[7]));
  OBUF \o_ciclos_OBUF[8]_inst 
       (.I(o_ciclos_OBUF[8]),
        .O(o_ciclos[8]));
  OBUF \o_ciclos_OBUF[9]_inst 
       (.I(o_ciclos_OBUF[9]),
        .O(o_ciclos[9]));
  OBUF \o_data_memory_OBUF[0]_inst 
       (.I(o_data_memory_OBUF[0]),
        .O(o_data_memory[0]));
  OBUF \o_data_memory_OBUF[10]_inst 
       (.I(1'b0),
        .O(o_data_memory[10]));
  OBUF \o_data_memory_OBUF[11]_inst 
       (.I(1'b0),
        .O(o_data_memory[11]));
  OBUF \o_data_memory_OBUF[12]_inst 
       (.I(1'b0),
        .O(o_data_memory[12]));
  OBUF \o_data_memory_OBUF[13]_inst 
       (.I(1'b0),
        .O(o_data_memory[13]));
  OBUF \o_data_memory_OBUF[14]_inst 
       (.I(1'b0),
        .O(o_data_memory[14]));
  OBUF \o_data_memory_OBUF[15]_inst 
       (.I(1'b0),
        .O(o_data_memory[15]));
  OBUF \o_data_memory_OBUF[16]_inst 
       (.I(1'b0),
        .O(o_data_memory[16]));
  OBUF \o_data_memory_OBUF[17]_inst 
       (.I(1'b0),
        .O(o_data_memory[17]));
  OBUF \o_data_memory_OBUF[18]_inst 
       (.I(1'b0),
        .O(o_data_memory[18]));
  OBUF \o_data_memory_OBUF[19]_inst 
       (.I(1'b0),
        .O(o_data_memory[19]));
  OBUF \o_data_memory_OBUF[1]_inst 
       (.I(o_data_memory_OBUF[1]),
        .O(o_data_memory[1]));
  OBUF \o_data_memory_OBUF[20]_inst 
       (.I(1'b0),
        .O(o_data_memory[20]));
  OBUF \o_data_memory_OBUF[21]_inst 
       (.I(1'b0),
        .O(o_data_memory[21]));
  OBUF \o_data_memory_OBUF[22]_inst 
       (.I(1'b0),
        .O(o_data_memory[22]));
  OBUF \o_data_memory_OBUF[23]_inst 
       (.I(1'b0),
        .O(o_data_memory[23]));
  OBUF \o_data_memory_OBUF[24]_inst 
       (.I(1'b0),
        .O(o_data_memory[24]));
  OBUF \o_data_memory_OBUF[25]_inst 
       (.I(1'b0),
        .O(o_data_memory[25]));
  OBUF \o_data_memory_OBUF[26]_inst 
       (.I(1'b0),
        .O(o_data_memory[26]));
  OBUF \o_data_memory_OBUF[27]_inst 
       (.I(1'b0),
        .O(o_data_memory[27]));
  OBUF \o_data_memory_OBUF[28]_inst 
       (.I(1'b0),
        .O(o_data_memory[28]));
  OBUF \o_data_memory_OBUF[29]_inst 
       (.I(1'b0),
        .O(o_data_memory[29]));
  OBUF \o_data_memory_OBUF[2]_inst 
       (.I(1'b0),
        .O(o_data_memory[2]));
  OBUF \o_data_memory_OBUF[30]_inst 
       (.I(1'b0),
        .O(o_data_memory[30]));
  OBUF \o_data_memory_OBUF[31]_inst 
       (.I(1'b0),
        .O(o_data_memory[31]));
  OBUF \o_data_memory_OBUF[3]_inst 
       (.I(1'b0),
        .O(o_data_memory[3]));
  OBUF \o_data_memory_OBUF[4]_inst 
       (.I(1'b0),
        .O(o_data_memory[4]));
  OBUF \o_data_memory_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_data_memory[5]));
  OBUF \o_data_memory_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_data_memory[6]));
  OBUF \o_data_memory_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_data_memory[7]));
  OBUF \o_data_memory_OBUF[8]_inst 
       (.I(1'b0),
        .O(o_data_memory[8]));
  OBUF \o_data_memory_OBUF[9]_inst 
       (.I(1'b0),
        .O(o_data_memory[9]));
  OBUF o_halt_OBUF_inst
       (.I(1'b0),
        .O(o_halt));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_4[0]_i_1 
       (.I0(\u_fetch/pc_reg ),
        .O(pc0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_pc_4[1]_i_1 
       (.I0(\u_fetch/pc_reg ),
        .I1(\u_fetch/pc_reg__0 [1]),
        .O(pc0[1]));
  LUT3 #(
    .INIT(8'hA2)) 
    \o_pc_4[31]_i_1 
       (.I0(i_valid_IBUF),
        .I1(i_exec_mode_IBUF),
        .I2(i_step_IBUF),
        .O(\o_pc_4[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_4_reg[12]_i_1 
       (.CI(\o_pc_4_reg[8]_i_1_n_0 ),
        .CO({\o_pc_4_reg[12]_i_1_n_0 ,\o_pc_4_reg[12]_i_1_n_1 ,\o_pc_4_reg[12]_i_1_n_2 ,\o_pc_4_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[12:9]),
        .S(\u_fetch/pc_reg__0 [12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_4_reg[16]_i_1 
       (.CI(\o_pc_4_reg[12]_i_1_n_0 ),
        .CO({\o_pc_4_reg[16]_i_1_n_0 ,\o_pc_4_reg[16]_i_1_n_1 ,\o_pc_4_reg[16]_i_1_n_2 ,\o_pc_4_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[16:13]),
        .S(\u_fetch/pc_reg__0 [16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_4_reg[20]_i_1 
       (.CI(\o_pc_4_reg[16]_i_1_n_0 ),
        .CO({\o_pc_4_reg[20]_i_1_n_0 ,\o_pc_4_reg[20]_i_1_n_1 ,\o_pc_4_reg[20]_i_1_n_2 ,\o_pc_4_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[20:17]),
        .S(\u_fetch/pc_reg__0 [20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_4_reg[24]_i_1 
       (.CI(\o_pc_4_reg[20]_i_1_n_0 ),
        .CO({\o_pc_4_reg[24]_i_1_n_0 ,\o_pc_4_reg[24]_i_1_n_1 ,\o_pc_4_reg[24]_i_1_n_2 ,\o_pc_4_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[24:21]),
        .S(\u_fetch/pc_reg__0 [24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_4_reg[28]_i_1 
       (.CI(\o_pc_4_reg[24]_i_1_n_0 ),
        .CO({\o_pc_4_reg[28]_i_1_n_0 ,\o_pc_4_reg[28]_i_1_n_1 ,\o_pc_4_reg[28]_i_1_n_2 ,\o_pc_4_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[28:25]),
        .S(\u_fetch/pc_reg__0 [28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_4_reg[31]_i_2 
       (.CI(\o_pc_4_reg[28]_i_1_n_0 ),
        .CO({\NLW_o_pc_4_reg[31]_i_2_CO_UNCONNECTED [3:2],\o_pc_4_reg[31]_i_2_n_2 ,\o_pc_4_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_o_pc_4_reg[31]_i_2_O_UNCONNECTED [3],pc0[31:29]}),
        .S({1'b0,\u_fetch/pc_reg__0 [31:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_4_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\o_pc_4_reg[4]_i_1_n_0 ,\o_pc_4_reg[4]_i_1_n_1 ,\o_pc_4_reg[4]_i_1_n_2 ,\o_pc_4_reg[4]_i_1_n_3 }),
        .CYINIT(\u_fetch/pc_reg ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pc0[4:2],\NLW_o_pc_4_reg[4]_i_1_O_UNCONNECTED [0]}),
        .S(\u_fetch/pc_reg__0 [4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_4_reg[8]_i_1 
       (.CI(\o_pc_4_reg[4]_i_1_n_0 ),
        .CO({\o_pc_4_reg[8]_i_1_n_0 ,\o_pc_4_reg[8]_i_1_n_1 ,\o_pc_4_reg[8]_i_1_n_2 ,\o_pc_4_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[8:5]),
        .S(\u_fetch/pc_reg__0 [8:5]));
  OBUF \o_pc_OBUF[0]_inst 
       (.I(o_pc_OBUF[0]),
        .O(o_pc[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[0]_inst_i_1 
       (.I0(pc_4[0]),
        .O(o_pc_OBUF[0]));
  OBUF \o_pc_OBUF[10]_inst 
       (.I(o_pc_OBUF[10]),
        .O(o_pc[10]));
  OBUF \o_pc_OBUF[11]_inst 
       (.I(o_pc_OBUF[11]),
        .O(o_pc[11]));
  OBUF \o_pc_OBUF[12]_inst 
       (.I(o_pc_OBUF[12]),
        .O(o_pc[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_OBUF[12]_inst_i_1 
       (.CI(\o_pc_OBUF[8]_inst_i_1_n_0 ),
        .CO({\o_pc_OBUF[12]_inst_i_1_n_0 ,\o_pc_OBUF[12]_inst_i_1_n_1 ,\o_pc_OBUF[12]_inst_i_1_n_2 ,\o_pc_OBUF[12]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(pc_4[12:9]),
        .O(o_pc_OBUF[12:9]),
        .S({\o_pc_OBUF[12]_inst_i_2_n_0 ,\o_pc_OBUF[12]_inst_i_3_n_0 ,\o_pc_OBUF[12]_inst_i_4_n_0 ,\o_pc_OBUF[12]_inst_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[12]_inst_i_2 
       (.I0(pc_4[12]),
        .O(\o_pc_OBUF[12]_inst_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[12]_inst_i_3 
       (.I0(pc_4[11]),
        .O(\o_pc_OBUF[12]_inst_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[12]_inst_i_4 
       (.I0(pc_4[10]),
        .O(\o_pc_OBUF[12]_inst_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[12]_inst_i_5 
       (.I0(pc_4[9]),
        .O(\o_pc_OBUF[12]_inst_i_5_n_0 ));
  OBUF \o_pc_OBUF[13]_inst 
       (.I(o_pc_OBUF[13]),
        .O(o_pc[13]));
  OBUF \o_pc_OBUF[14]_inst 
       (.I(o_pc_OBUF[14]),
        .O(o_pc[14]));
  OBUF \o_pc_OBUF[15]_inst 
       (.I(o_pc_OBUF[15]),
        .O(o_pc[15]));
  OBUF \o_pc_OBUF[16]_inst 
       (.I(o_pc_OBUF[16]),
        .O(o_pc[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_OBUF[16]_inst_i_1 
       (.CI(\o_pc_OBUF[12]_inst_i_1_n_0 ),
        .CO({\o_pc_OBUF[16]_inst_i_1_n_0 ,\o_pc_OBUF[16]_inst_i_1_n_1 ,\o_pc_OBUF[16]_inst_i_1_n_2 ,\o_pc_OBUF[16]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(pc_4[16:13]),
        .O(o_pc_OBUF[16:13]),
        .S({\o_pc_OBUF[16]_inst_i_2_n_0 ,\o_pc_OBUF[16]_inst_i_3_n_0 ,\o_pc_OBUF[16]_inst_i_4_n_0 ,\o_pc_OBUF[16]_inst_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[16]_inst_i_2 
       (.I0(pc_4[16]),
        .O(\o_pc_OBUF[16]_inst_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[16]_inst_i_3 
       (.I0(pc_4[15]),
        .O(\o_pc_OBUF[16]_inst_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[16]_inst_i_4 
       (.I0(pc_4[14]),
        .O(\o_pc_OBUF[16]_inst_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[16]_inst_i_5 
       (.I0(pc_4[13]),
        .O(\o_pc_OBUF[16]_inst_i_5_n_0 ));
  OBUF \o_pc_OBUF[17]_inst 
       (.I(o_pc_OBUF[17]),
        .O(o_pc[17]));
  OBUF \o_pc_OBUF[18]_inst 
       (.I(o_pc_OBUF[18]),
        .O(o_pc[18]));
  OBUF \o_pc_OBUF[19]_inst 
       (.I(o_pc_OBUF[19]),
        .O(o_pc[19]));
  OBUF \o_pc_OBUF[1]_inst 
       (.I(o_pc_OBUF[1]),
        .O(o_pc[1]));
  OBUF \o_pc_OBUF[20]_inst 
       (.I(o_pc_OBUF[20]),
        .O(o_pc[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_OBUF[20]_inst_i_1 
       (.CI(\o_pc_OBUF[16]_inst_i_1_n_0 ),
        .CO({\o_pc_OBUF[20]_inst_i_1_n_0 ,\o_pc_OBUF[20]_inst_i_1_n_1 ,\o_pc_OBUF[20]_inst_i_1_n_2 ,\o_pc_OBUF[20]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(pc_4[20:17]),
        .O(o_pc_OBUF[20:17]),
        .S({\o_pc_OBUF[20]_inst_i_2_n_0 ,\o_pc_OBUF[20]_inst_i_3_n_0 ,\o_pc_OBUF[20]_inst_i_4_n_0 ,\o_pc_OBUF[20]_inst_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[20]_inst_i_2 
       (.I0(pc_4[20]),
        .O(\o_pc_OBUF[20]_inst_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[20]_inst_i_3 
       (.I0(pc_4[19]),
        .O(\o_pc_OBUF[20]_inst_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[20]_inst_i_4 
       (.I0(pc_4[18]),
        .O(\o_pc_OBUF[20]_inst_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[20]_inst_i_5 
       (.I0(pc_4[17]),
        .O(\o_pc_OBUF[20]_inst_i_5_n_0 ));
  OBUF \o_pc_OBUF[21]_inst 
       (.I(o_pc_OBUF[21]),
        .O(o_pc[21]));
  OBUF \o_pc_OBUF[22]_inst 
       (.I(o_pc_OBUF[22]),
        .O(o_pc[22]));
  OBUF \o_pc_OBUF[23]_inst 
       (.I(o_pc_OBUF[23]),
        .O(o_pc[23]));
  OBUF \o_pc_OBUF[24]_inst 
       (.I(o_pc_OBUF[24]),
        .O(o_pc[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_OBUF[24]_inst_i_1 
       (.CI(\o_pc_OBUF[20]_inst_i_1_n_0 ),
        .CO({\o_pc_OBUF[24]_inst_i_1_n_0 ,\o_pc_OBUF[24]_inst_i_1_n_1 ,\o_pc_OBUF[24]_inst_i_1_n_2 ,\o_pc_OBUF[24]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(pc_4[24:21]),
        .O(o_pc_OBUF[24:21]),
        .S({\o_pc_OBUF[24]_inst_i_2_n_0 ,\o_pc_OBUF[24]_inst_i_3_n_0 ,\o_pc_OBUF[24]_inst_i_4_n_0 ,\o_pc_OBUF[24]_inst_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[24]_inst_i_2 
       (.I0(pc_4[24]),
        .O(\o_pc_OBUF[24]_inst_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[24]_inst_i_3 
       (.I0(pc_4[23]),
        .O(\o_pc_OBUF[24]_inst_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[24]_inst_i_4 
       (.I0(pc_4[22]),
        .O(\o_pc_OBUF[24]_inst_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[24]_inst_i_5 
       (.I0(pc_4[21]),
        .O(\o_pc_OBUF[24]_inst_i_5_n_0 ));
  OBUF \o_pc_OBUF[25]_inst 
       (.I(o_pc_OBUF[25]),
        .O(o_pc[25]));
  OBUF \o_pc_OBUF[26]_inst 
       (.I(o_pc_OBUF[26]),
        .O(o_pc[26]));
  OBUF \o_pc_OBUF[27]_inst 
       (.I(o_pc_OBUF[27]),
        .O(o_pc[27]));
  OBUF \o_pc_OBUF[28]_inst 
       (.I(o_pc_OBUF[28]),
        .O(o_pc[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_OBUF[28]_inst_i_1 
       (.CI(\o_pc_OBUF[24]_inst_i_1_n_0 ),
        .CO({\o_pc_OBUF[28]_inst_i_1_n_0 ,\o_pc_OBUF[28]_inst_i_1_n_1 ,\o_pc_OBUF[28]_inst_i_1_n_2 ,\o_pc_OBUF[28]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(pc_4[28:25]),
        .O(o_pc_OBUF[28:25]),
        .S({\o_pc_OBUF[28]_inst_i_2_n_0 ,\o_pc_OBUF[28]_inst_i_3_n_0 ,\o_pc_OBUF[28]_inst_i_4_n_0 ,\o_pc_OBUF[28]_inst_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[28]_inst_i_2 
       (.I0(pc_4[28]),
        .O(\o_pc_OBUF[28]_inst_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[28]_inst_i_3 
       (.I0(pc_4[27]),
        .O(\o_pc_OBUF[28]_inst_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[28]_inst_i_4 
       (.I0(pc_4[26]),
        .O(\o_pc_OBUF[28]_inst_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[28]_inst_i_5 
       (.I0(pc_4[25]),
        .O(\o_pc_OBUF[28]_inst_i_5_n_0 ));
  OBUF \o_pc_OBUF[29]_inst 
       (.I(o_pc_OBUF[29]),
        .O(o_pc[29]));
  OBUF \o_pc_OBUF[2]_inst 
       (.I(o_pc_OBUF[2]),
        .O(o_pc[2]));
  OBUF \o_pc_OBUF[30]_inst 
       (.I(o_pc_OBUF[30]),
        .O(o_pc[30]));
  OBUF \o_pc_OBUF[31]_inst 
       (.I(o_pc_OBUF[31]),
        .O(o_pc[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_OBUF[31]_inst_i_1 
       (.CI(\o_pc_OBUF[28]_inst_i_1_n_0 ),
        .CO({\NLW_o_pc_OBUF[31]_inst_i_1_CO_UNCONNECTED [3:2],\o_pc_OBUF[31]_inst_i_1_n_2 ,\o_pc_OBUF[31]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pc_4[30:29]}),
        .O({\NLW_o_pc_OBUF[31]_inst_i_1_O_UNCONNECTED [3],o_pc_OBUF[31:29]}),
        .S({1'b0,\o_pc_OBUF[31]_inst_i_2_n_0 ,\o_pc_OBUF[31]_inst_i_3_n_0 ,\o_pc_OBUF[31]_inst_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[31]_inst_i_2 
       (.I0(pc_4[31]),
        .O(\o_pc_OBUF[31]_inst_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[31]_inst_i_3 
       (.I0(pc_4[30]),
        .O(\o_pc_OBUF[31]_inst_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[31]_inst_i_4 
       (.I0(pc_4[29]),
        .O(\o_pc_OBUF[31]_inst_i_4_n_0 ));
  OBUF \o_pc_OBUF[3]_inst 
       (.I(o_pc_OBUF[3]),
        .O(o_pc[3]));
  OBUF \o_pc_OBUF[4]_inst 
       (.I(o_pc_OBUF[4]),
        .O(o_pc[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_OBUF[4]_inst_i_1 
       (.CI(1'b0),
        .CO({\o_pc_OBUF[4]_inst_i_1_n_0 ,\o_pc_OBUF[4]_inst_i_1_n_1 ,\o_pc_OBUF[4]_inst_i_1_n_2 ,\o_pc_OBUF[4]_inst_i_1_n_3 }),
        .CYINIT(pc_4[0]),
        .DI(pc_4[4:1]),
        .O(o_pc_OBUF[4:1]),
        .S({\o_pc_OBUF[4]_inst_i_2_n_0 ,\o_pc_OBUF[4]_inst_i_3_n_0 ,\o_pc_OBUF[4]_inst_i_4_n_0 ,\o_pc_OBUF[4]_inst_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[4]_inst_i_2 
       (.I0(pc_4[4]),
        .O(\o_pc_OBUF[4]_inst_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[4]_inst_i_3 
       (.I0(pc_4[3]),
        .O(\o_pc_OBUF[4]_inst_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[4]_inst_i_4 
       (.I0(pc_4[2]),
        .O(\o_pc_OBUF[4]_inst_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[4]_inst_i_5 
       (.I0(pc_4[1]),
        .O(\o_pc_OBUF[4]_inst_i_5_n_0 ));
  OBUF \o_pc_OBUF[5]_inst 
       (.I(o_pc_OBUF[5]),
        .O(o_pc[5]));
  OBUF \o_pc_OBUF[6]_inst 
       (.I(o_pc_OBUF[6]),
        .O(o_pc[6]));
  OBUF \o_pc_OBUF[7]_inst 
       (.I(o_pc_OBUF[7]),
        .O(o_pc[7]));
  OBUF \o_pc_OBUF[8]_inst 
       (.I(o_pc_OBUF[8]),
        .O(o_pc[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_pc_OBUF[8]_inst_i_1 
       (.CI(\o_pc_OBUF[4]_inst_i_1_n_0 ),
        .CO({\o_pc_OBUF[8]_inst_i_1_n_0 ,\o_pc_OBUF[8]_inst_i_1_n_1 ,\o_pc_OBUF[8]_inst_i_1_n_2 ,\o_pc_OBUF[8]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(pc_4[8:5]),
        .O(o_pc_OBUF[8:5]),
        .S({\o_pc_OBUF[8]_inst_i_2_n_0 ,\o_pc_OBUF[8]_inst_i_3_n_0 ,\o_pc_OBUF[8]_inst_i_4_n_0 ,\o_pc_OBUF[8]_inst_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[8]_inst_i_2 
       (.I0(pc_4[8]),
        .O(\o_pc_OBUF[8]_inst_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[8]_inst_i_3 
       (.I0(pc_4[7]),
        .O(\o_pc_OBUF[8]_inst_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[8]_inst_i_4 
       (.I0(pc_4[6]),
        .O(\o_pc_OBUF[8]_inst_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_pc_OBUF[8]_inst_i_5 
       (.I0(pc_4[5]),
        .O(\o_pc_OBUF[8]_inst_i_5_n_0 ));
  OBUF \o_pc_OBUF[9]_inst 
       (.I(o_pc_OBUF[9]),
        .O(o_pc[9]));
  OBUF \o_registros_OBUF[0]_inst 
       (.I(1'b0),
        .O(o_registros[0]));
  OBUF \o_registros_OBUF[1000]_inst 
       (.I(1'b0),
        .O(o_registros[1000]));
  OBUF \o_registros_OBUF[1001]_inst 
       (.I(1'b0),
        .O(o_registros[1001]));
  OBUF \o_registros_OBUF[1002]_inst 
       (.I(1'b0),
        .O(o_registros[1002]));
  OBUF \o_registros_OBUF[1003]_inst 
       (.I(1'b0),
        .O(o_registros[1003]));
  OBUF \o_registros_OBUF[1004]_inst 
       (.I(1'b0),
        .O(o_registros[1004]));
  OBUF \o_registros_OBUF[1005]_inst 
       (.I(1'b0),
        .O(o_registros[1005]));
  OBUF \o_registros_OBUF[1006]_inst 
       (.I(1'b0),
        .O(o_registros[1006]));
  OBUF \o_registros_OBUF[1007]_inst 
       (.I(1'b0),
        .O(o_registros[1007]));
  OBUF \o_registros_OBUF[1008]_inst 
       (.I(1'b0),
        .O(o_registros[1008]));
  OBUF \o_registros_OBUF[1009]_inst 
       (.I(1'b0),
        .O(o_registros[1009]));
  OBUF \o_registros_OBUF[100]_inst 
       (.I(1'b0),
        .O(o_registros[100]));
  OBUF \o_registros_OBUF[1010]_inst 
       (.I(1'b0),
        .O(o_registros[1010]));
  OBUF \o_registros_OBUF[1011]_inst 
       (.I(1'b0),
        .O(o_registros[1011]));
  OBUF \o_registros_OBUF[1012]_inst 
       (.I(1'b0),
        .O(o_registros[1012]));
  OBUF \o_registros_OBUF[1013]_inst 
       (.I(1'b0),
        .O(o_registros[1013]));
  OBUF \o_registros_OBUF[1014]_inst 
       (.I(1'b0),
        .O(o_registros[1014]));
  OBUF \o_registros_OBUF[1015]_inst 
       (.I(1'b0),
        .O(o_registros[1015]));
  OBUF \o_registros_OBUF[1016]_inst 
       (.I(1'b0),
        .O(o_registros[1016]));
  OBUF \o_registros_OBUF[1017]_inst 
       (.I(1'b0),
        .O(o_registros[1017]));
  OBUF \o_registros_OBUF[1018]_inst 
       (.I(1'b0),
        .O(o_registros[1018]));
  OBUF \o_registros_OBUF[1019]_inst 
       (.I(1'b0),
        .O(o_registros[1019]));
  OBUF \o_registros_OBUF[101]_inst 
       (.I(1'b0),
        .O(o_registros[101]));
  OBUF \o_registros_OBUF[1020]_inst 
       (.I(1'b0),
        .O(o_registros[1020]));
  OBUF \o_registros_OBUF[1021]_inst 
       (.I(1'b0),
        .O(o_registros[1021]));
  OBUF \o_registros_OBUF[1022]_inst 
       (.I(1'b0),
        .O(o_registros[1022]));
  OBUF \o_registros_OBUF[1023]_inst 
       (.I(1'b0),
        .O(o_registros[1023]));
  OBUF \o_registros_OBUF[102]_inst 
       (.I(1'b0),
        .O(o_registros[102]));
  OBUF \o_registros_OBUF[103]_inst 
       (.I(1'b0),
        .O(o_registros[103]));
  OBUF \o_registros_OBUF[104]_inst 
       (.I(1'b0),
        .O(o_registros[104]));
  OBUF \o_registros_OBUF[105]_inst 
       (.I(1'b0),
        .O(o_registros[105]));
  OBUF \o_registros_OBUF[106]_inst 
       (.I(1'b0),
        .O(o_registros[106]));
  OBUF \o_registros_OBUF[107]_inst 
       (.I(1'b0),
        .O(o_registros[107]));
  OBUF \o_registros_OBUF[108]_inst 
       (.I(1'b0),
        .O(o_registros[108]));
  OBUF \o_registros_OBUF[109]_inst 
       (.I(1'b0),
        .O(o_registros[109]));
  OBUF \o_registros_OBUF[10]_inst 
       (.I(1'b0),
        .O(o_registros[10]));
  OBUF \o_registros_OBUF[110]_inst 
       (.I(1'b0),
        .O(o_registros[110]));
  OBUF \o_registros_OBUF[111]_inst 
       (.I(1'b0),
        .O(o_registros[111]));
  OBUF \o_registros_OBUF[112]_inst 
       (.I(1'b0),
        .O(o_registros[112]));
  OBUF \o_registros_OBUF[113]_inst 
       (.I(1'b0),
        .O(o_registros[113]));
  OBUF \o_registros_OBUF[114]_inst 
       (.I(1'b0),
        .O(o_registros[114]));
  OBUF \o_registros_OBUF[115]_inst 
       (.I(1'b0),
        .O(o_registros[115]));
  OBUF \o_registros_OBUF[116]_inst 
       (.I(1'b0),
        .O(o_registros[116]));
  OBUF \o_registros_OBUF[117]_inst 
       (.I(1'b0),
        .O(o_registros[117]));
  OBUF \o_registros_OBUF[118]_inst 
       (.I(1'b0),
        .O(o_registros[118]));
  OBUF \o_registros_OBUF[119]_inst 
       (.I(1'b0),
        .O(o_registros[119]));
  OBUF \o_registros_OBUF[11]_inst 
       (.I(1'b0),
        .O(o_registros[11]));
  OBUF \o_registros_OBUF[120]_inst 
       (.I(1'b0),
        .O(o_registros[120]));
  OBUF \o_registros_OBUF[121]_inst 
       (.I(1'b0),
        .O(o_registros[121]));
  OBUF \o_registros_OBUF[122]_inst 
       (.I(1'b0),
        .O(o_registros[122]));
  OBUF \o_registros_OBUF[123]_inst 
       (.I(1'b0),
        .O(o_registros[123]));
  OBUF \o_registros_OBUF[124]_inst 
       (.I(1'b0),
        .O(o_registros[124]));
  OBUF \o_registros_OBUF[125]_inst 
       (.I(1'b0),
        .O(o_registros[125]));
  OBUF \o_registros_OBUF[126]_inst 
       (.I(1'b0),
        .O(o_registros[126]));
  OBUF \o_registros_OBUF[127]_inst 
       (.I(1'b0),
        .O(o_registros[127]));
  OBUF \o_registros_OBUF[128]_inst 
       (.I(1'b0),
        .O(o_registros[128]));
  OBUF \o_registros_OBUF[129]_inst 
       (.I(1'b0),
        .O(o_registros[129]));
  OBUF \o_registros_OBUF[12]_inst 
       (.I(1'b0),
        .O(o_registros[12]));
  OBUF \o_registros_OBUF[130]_inst 
       (.I(1'b0),
        .O(o_registros[130]));
  OBUF \o_registros_OBUF[131]_inst 
       (.I(1'b0),
        .O(o_registros[131]));
  OBUF \o_registros_OBUF[132]_inst 
       (.I(1'b0),
        .O(o_registros[132]));
  OBUF \o_registros_OBUF[133]_inst 
       (.I(1'b0),
        .O(o_registros[133]));
  OBUF \o_registros_OBUF[134]_inst 
       (.I(1'b0),
        .O(o_registros[134]));
  OBUF \o_registros_OBUF[135]_inst 
       (.I(1'b0),
        .O(o_registros[135]));
  OBUF \o_registros_OBUF[136]_inst 
       (.I(1'b0),
        .O(o_registros[136]));
  OBUF \o_registros_OBUF[137]_inst 
       (.I(1'b0),
        .O(o_registros[137]));
  OBUF \o_registros_OBUF[138]_inst 
       (.I(1'b0),
        .O(o_registros[138]));
  OBUF \o_registros_OBUF[139]_inst 
       (.I(1'b0),
        .O(o_registros[139]));
  OBUF \o_registros_OBUF[13]_inst 
       (.I(1'b0),
        .O(o_registros[13]));
  OBUF \o_registros_OBUF[140]_inst 
       (.I(1'b0),
        .O(o_registros[140]));
  OBUF \o_registros_OBUF[141]_inst 
       (.I(1'b0),
        .O(o_registros[141]));
  OBUF \o_registros_OBUF[142]_inst 
       (.I(1'b0),
        .O(o_registros[142]));
  OBUF \o_registros_OBUF[143]_inst 
       (.I(1'b0),
        .O(o_registros[143]));
  OBUF \o_registros_OBUF[144]_inst 
       (.I(1'b0),
        .O(o_registros[144]));
  OBUF \o_registros_OBUF[145]_inst 
       (.I(1'b0),
        .O(o_registros[145]));
  OBUF \o_registros_OBUF[146]_inst 
       (.I(1'b0),
        .O(o_registros[146]));
  OBUF \o_registros_OBUF[147]_inst 
       (.I(1'b0),
        .O(o_registros[147]));
  OBUF \o_registros_OBUF[148]_inst 
       (.I(1'b0),
        .O(o_registros[148]));
  OBUF \o_registros_OBUF[149]_inst 
       (.I(1'b0),
        .O(o_registros[149]));
  OBUF \o_registros_OBUF[14]_inst 
       (.I(1'b0),
        .O(o_registros[14]));
  OBUF \o_registros_OBUF[150]_inst 
       (.I(1'b0),
        .O(o_registros[150]));
  OBUF \o_registros_OBUF[151]_inst 
       (.I(1'b0),
        .O(o_registros[151]));
  OBUF \o_registros_OBUF[152]_inst 
       (.I(1'b0),
        .O(o_registros[152]));
  OBUF \o_registros_OBUF[153]_inst 
       (.I(1'b0),
        .O(o_registros[153]));
  OBUF \o_registros_OBUF[154]_inst 
       (.I(1'b0),
        .O(o_registros[154]));
  OBUF \o_registros_OBUF[155]_inst 
       (.I(1'b0),
        .O(o_registros[155]));
  OBUF \o_registros_OBUF[156]_inst 
       (.I(1'b0),
        .O(o_registros[156]));
  OBUF \o_registros_OBUF[157]_inst 
       (.I(1'b0),
        .O(o_registros[157]));
  OBUF \o_registros_OBUF[158]_inst 
       (.I(1'b0),
        .O(o_registros[158]));
  OBUF \o_registros_OBUF[159]_inst 
       (.I(1'b0),
        .O(o_registros[159]));
  OBUF \o_registros_OBUF[15]_inst 
       (.I(1'b0),
        .O(o_registros[15]));
  OBUF \o_registros_OBUF[160]_inst 
       (.I(o_registros_OBUF),
        .O(o_registros[160]));
  OBUF \o_registros_OBUF[161]_inst 
       (.I(1'b0),
        .O(o_registros[161]));
  OBUF \o_registros_OBUF[162]_inst 
       (.I(1'b0),
        .O(o_registros[162]));
  OBUF \o_registros_OBUF[163]_inst 
       (.I(1'b0),
        .O(o_registros[163]));
  OBUF \o_registros_OBUF[164]_inst 
       (.I(1'b0),
        .O(o_registros[164]));
  OBUF \o_registros_OBUF[165]_inst 
       (.I(1'b0),
        .O(o_registros[165]));
  OBUF \o_registros_OBUF[166]_inst 
       (.I(1'b0),
        .O(o_registros[166]));
  OBUF \o_registros_OBUF[167]_inst 
       (.I(1'b0),
        .O(o_registros[167]));
  OBUF \o_registros_OBUF[168]_inst 
       (.I(1'b0),
        .O(o_registros[168]));
  OBUF \o_registros_OBUF[169]_inst 
       (.I(1'b0),
        .O(o_registros[169]));
  OBUF \o_registros_OBUF[16]_inst 
       (.I(1'b0),
        .O(o_registros[16]));
  OBUF \o_registros_OBUF[170]_inst 
       (.I(1'b0),
        .O(o_registros[170]));
  OBUF \o_registros_OBUF[171]_inst 
       (.I(1'b0),
        .O(o_registros[171]));
  OBUF \o_registros_OBUF[172]_inst 
       (.I(1'b0),
        .O(o_registros[172]));
  OBUF \o_registros_OBUF[173]_inst 
       (.I(1'b0),
        .O(o_registros[173]));
  OBUF \o_registros_OBUF[174]_inst 
       (.I(1'b0),
        .O(o_registros[174]));
  OBUF \o_registros_OBUF[175]_inst 
       (.I(1'b0),
        .O(o_registros[175]));
  OBUF \o_registros_OBUF[176]_inst 
       (.I(1'b0),
        .O(o_registros[176]));
  OBUF \o_registros_OBUF[177]_inst 
       (.I(1'b0),
        .O(o_registros[177]));
  OBUF \o_registros_OBUF[178]_inst 
       (.I(1'b0),
        .O(o_registros[178]));
  OBUF \o_registros_OBUF[179]_inst 
       (.I(1'b0),
        .O(o_registros[179]));
  OBUF \o_registros_OBUF[17]_inst 
       (.I(1'b0),
        .O(o_registros[17]));
  OBUF \o_registros_OBUF[180]_inst 
       (.I(1'b0),
        .O(o_registros[180]));
  OBUF \o_registros_OBUF[181]_inst 
       (.I(1'b0),
        .O(o_registros[181]));
  OBUF \o_registros_OBUF[182]_inst 
       (.I(1'b0),
        .O(o_registros[182]));
  OBUF \o_registros_OBUF[183]_inst 
       (.I(1'b0),
        .O(o_registros[183]));
  OBUF \o_registros_OBUF[184]_inst 
       (.I(1'b0),
        .O(o_registros[184]));
  OBUF \o_registros_OBUF[185]_inst 
       (.I(1'b0),
        .O(o_registros[185]));
  OBUF \o_registros_OBUF[186]_inst 
       (.I(1'b0),
        .O(o_registros[186]));
  OBUF \o_registros_OBUF[187]_inst 
       (.I(1'b0),
        .O(o_registros[187]));
  OBUF \o_registros_OBUF[188]_inst 
       (.I(1'b0),
        .O(o_registros[188]));
  OBUF \o_registros_OBUF[189]_inst 
       (.I(1'b0),
        .O(o_registros[189]));
  OBUF \o_registros_OBUF[18]_inst 
       (.I(1'b0),
        .O(o_registros[18]));
  OBUF \o_registros_OBUF[190]_inst 
       (.I(1'b0),
        .O(o_registros[190]));
  OBUF \o_registros_OBUF[191]_inst 
       (.I(1'b0),
        .O(o_registros[191]));
  OBUF \o_registros_OBUF[192]_inst 
       (.I(1'b0),
        .O(o_registros[192]));
  OBUF \o_registros_OBUF[193]_inst 
       (.I(o_registros_OBUF),
        .O(o_registros[193]));
  OBUF \o_registros_OBUF[194]_inst 
       (.I(1'b0),
        .O(o_registros[194]));
  OBUF \o_registros_OBUF[195]_inst 
       (.I(1'b0),
        .O(o_registros[195]));
  OBUF \o_registros_OBUF[196]_inst 
       (.I(1'b0),
        .O(o_registros[196]));
  OBUF \o_registros_OBUF[197]_inst 
       (.I(1'b0),
        .O(o_registros[197]));
  OBUF \o_registros_OBUF[198]_inst 
       (.I(1'b0),
        .O(o_registros[198]));
  OBUF \o_registros_OBUF[199]_inst 
       (.I(1'b0),
        .O(o_registros[199]));
  OBUF \o_registros_OBUF[19]_inst 
       (.I(1'b0),
        .O(o_registros[19]));
  OBUF \o_registros_OBUF[1]_inst 
       (.I(1'b0),
        .O(o_registros[1]));
  OBUF \o_registros_OBUF[200]_inst 
       (.I(1'b0),
        .O(o_registros[200]));
  OBUF \o_registros_OBUF[201]_inst 
       (.I(1'b0),
        .O(o_registros[201]));
  OBUF \o_registros_OBUF[202]_inst 
       (.I(1'b0),
        .O(o_registros[202]));
  OBUF \o_registros_OBUF[203]_inst 
       (.I(1'b0),
        .O(o_registros[203]));
  OBUF \o_registros_OBUF[204]_inst 
       (.I(1'b0),
        .O(o_registros[204]));
  OBUF \o_registros_OBUF[205]_inst 
       (.I(1'b0),
        .O(o_registros[205]));
  OBUF \o_registros_OBUF[206]_inst 
       (.I(1'b0),
        .O(o_registros[206]));
  OBUF \o_registros_OBUF[207]_inst 
       (.I(1'b0),
        .O(o_registros[207]));
  OBUF \o_registros_OBUF[208]_inst 
       (.I(1'b0),
        .O(o_registros[208]));
  OBUF \o_registros_OBUF[209]_inst 
       (.I(1'b0),
        .O(o_registros[209]));
  OBUF \o_registros_OBUF[20]_inst 
       (.I(1'b0),
        .O(o_registros[20]));
  OBUF \o_registros_OBUF[210]_inst 
       (.I(1'b0),
        .O(o_registros[210]));
  OBUF \o_registros_OBUF[211]_inst 
       (.I(1'b0),
        .O(o_registros[211]));
  OBUF \o_registros_OBUF[212]_inst 
       (.I(1'b0),
        .O(o_registros[212]));
  OBUF \o_registros_OBUF[213]_inst 
       (.I(1'b0),
        .O(o_registros[213]));
  OBUF \o_registros_OBUF[214]_inst 
       (.I(1'b0),
        .O(o_registros[214]));
  OBUF \o_registros_OBUF[215]_inst 
       (.I(1'b0),
        .O(o_registros[215]));
  OBUF \o_registros_OBUF[216]_inst 
       (.I(1'b0),
        .O(o_registros[216]));
  OBUF \o_registros_OBUF[217]_inst 
       (.I(1'b0),
        .O(o_registros[217]));
  OBUF \o_registros_OBUF[218]_inst 
       (.I(1'b0),
        .O(o_registros[218]));
  OBUF \o_registros_OBUF[219]_inst 
       (.I(1'b0),
        .O(o_registros[219]));
  OBUF \o_registros_OBUF[21]_inst 
       (.I(1'b0),
        .O(o_registros[21]));
  OBUF \o_registros_OBUF[220]_inst 
       (.I(1'b0),
        .O(o_registros[220]));
  OBUF \o_registros_OBUF[221]_inst 
       (.I(1'b0),
        .O(o_registros[221]));
  OBUF \o_registros_OBUF[222]_inst 
       (.I(1'b0),
        .O(o_registros[222]));
  OBUF \o_registros_OBUF[223]_inst 
       (.I(1'b0),
        .O(o_registros[223]));
  OBUF \o_registros_OBUF[224]_inst 
       (.I(1'b0),
        .O(o_registros[224]));
  OBUF \o_registros_OBUF[225]_inst 
       (.I(1'b0),
        .O(o_registros[225]));
  OBUF \o_registros_OBUF[226]_inst 
       (.I(1'b0),
        .O(o_registros[226]));
  OBUF \o_registros_OBUF[227]_inst 
       (.I(1'b0),
        .O(o_registros[227]));
  OBUF \o_registros_OBUF[228]_inst 
       (.I(1'b0),
        .O(o_registros[228]));
  OBUF \o_registros_OBUF[229]_inst 
       (.I(1'b0),
        .O(o_registros[229]));
  OBUF \o_registros_OBUF[22]_inst 
       (.I(1'b0),
        .O(o_registros[22]));
  OBUF \o_registros_OBUF[230]_inst 
       (.I(1'b0),
        .O(o_registros[230]));
  OBUF \o_registros_OBUF[231]_inst 
       (.I(1'b0),
        .O(o_registros[231]));
  OBUF \o_registros_OBUF[232]_inst 
       (.I(1'b0),
        .O(o_registros[232]));
  OBUF \o_registros_OBUF[233]_inst 
       (.I(1'b0),
        .O(o_registros[233]));
  OBUF \o_registros_OBUF[234]_inst 
       (.I(1'b0),
        .O(o_registros[234]));
  OBUF \o_registros_OBUF[235]_inst 
       (.I(1'b0),
        .O(o_registros[235]));
  OBUF \o_registros_OBUF[236]_inst 
       (.I(1'b0),
        .O(o_registros[236]));
  OBUF \o_registros_OBUF[237]_inst 
       (.I(1'b0),
        .O(o_registros[237]));
  OBUF \o_registros_OBUF[238]_inst 
       (.I(1'b0),
        .O(o_registros[238]));
  OBUF \o_registros_OBUF[239]_inst 
       (.I(1'b0),
        .O(o_registros[239]));
  OBUF \o_registros_OBUF[23]_inst 
       (.I(1'b0),
        .O(o_registros[23]));
  OBUF \o_registros_OBUF[240]_inst 
       (.I(1'b0),
        .O(o_registros[240]));
  OBUF \o_registros_OBUF[241]_inst 
       (.I(1'b0),
        .O(o_registros[241]));
  OBUF \o_registros_OBUF[242]_inst 
       (.I(1'b0),
        .O(o_registros[242]));
  OBUF \o_registros_OBUF[243]_inst 
       (.I(1'b0),
        .O(o_registros[243]));
  OBUF \o_registros_OBUF[244]_inst 
       (.I(1'b0),
        .O(o_registros[244]));
  OBUF \o_registros_OBUF[245]_inst 
       (.I(1'b0),
        .O(o_registros[245]));
  OBUF \o_registros_OBUF[246]_inst 
       (.I(1'b0),
        .O(o_registros[246]));
  OBUF \o_registros_OBUF[247]_inst 
       (.I(1'b0),
        .O(o_registros[247]));
  OBUF \o_registros_OBUF[248]_inst 
       (.I(1'b0),
        .O(o_registros[248]));
  OBUF \o_registros_OBUF[249]_inst 
       (.I(1'b0),
        .O(o_registros[249]));
  OBUF \o_registros_OBUF[24]_inst 
       (.I(1'b0),
        .O(o_registros[24]));
  OBUF \o_registros_OBUF[250]_inst 
       (.I(1'b0),
        .O(o_registros[250]));
  OBUF \o_registros_OBUF[251]_inst 
       (.I(1'b0),
        .O(o_registros[251]));
  OBUF \o_registros_OBUF[252]_inst 
       (.I(1'b0),
        .O(o_registros[252]));
  OBUF \o_registros_OBUF[253]_inst 
       (.I(1'b0),
        .O(o_registros[253]));
  OBUF \o_registros_OBUF[254]_inst 
       (.I(1'b0),
        .O(o_registros[254]));
  OBUF \o_registros_OBUF[255]_inst 
       (.I(1'b0),
        .O(o_registros[255]));
  OBUF \o_registros_OBUF[256]_inst 
       (.I(1'b0),
        .O(o_registros[256]));
  OBUF \o_registros_OBUF[257]_inst 
       (.I(1'b0),
        .O(o_registros[257]));
  OBUF \o_registros_OBUF[258]_inst 
       (.I(1'b0),
        .O(o_registros[258]));
  OBUF \o_registros_OBUF[259]_inst 
       (.I(1'b0),
        .O(o_registros[259]));
  OBUF \o_registros_OBUF[25]_inst 
       (.I(1'b0),
        .O(o_registros[25]));
  OBUF \o_registros_OBUF[260]_inst 
       (.I(1'b0),
        .O(o_registros[260]));
  OBUF \o_registros_OBUF[261]_inst 
       (.I(1'b0),
        .O(o_registros[261]));
  OBUF \o_registros_OBUF[262]_inst 
       (.I(1'b0),
        .O(o_registros[262]));
  OBUF \o_registros_OBUF[263]_inst 
       (.I(1'b0),
        .O(o_registros[263]));
  OBUF \o_registros_OBUF[264]_inst 
       (.I(1'b0),
        .O(o_registros[264]));
  OBUF \o_registros_OBUF[265]_inst 
       (.I(1'b0),
        .O(o_registros[265]));
  OBUF \o_registros_OBUF[266]_inst 
       (.I(1'b0),
        .O(o_registros[266]));
  OBUF \o_registros_OBUF[267]_inst 
       (.I(1'b0),
        .O(o_registros[267]));
  OBUF \o_registros_OBUF[268]_inst 
       (.I(1'b0),
        .O(o_registros[268]));
  OBUF \o_registros_OBUF[269]_inst 
       (.I(1'b0),
        .O(o_registros[269]));
  OBUF \o_registros_OBUF[26]_inst 
       (.I(1'b0),
        .O(o_registros[26]));
  OBUF \o_registros_OBUF[270]_inst 
       (.I(1'b0),
        .O(o_registros[270]));
  OBUF \o_registros_OBUF[271]_inst 
       (.I(1'b0),
        .O(o_registros[271]));
  OBUF \o_registros_OBUF[272]_inst 
       (.I(1'b0),
        .O(o_registros[272]));
  OBUF \o_registros_OBUF[273]_inst 
       (.I(1'b0),
        .O(o_registros[273]));
  OBUF \o_registros_OBUF[274]_inst 
       (.I(1'b0),
        .O(o_registros[274]));
  OBUF \o_registros_OBUF[275]_inst 
       (.I(1'b0),
        .O(o_registros[275]));
  OBUF \o_registros_OBUF[276]_inst 
       (.I(1'b0),
        .O(o_registros[276]));
  OBUF \o_registros_OBUF[277]_inst 
       (.I(1'b0),
        .O(o_registros[277]));
  OBUF \o_registros_OBUF[278]_inst 
       (.I(1'b0),
        .O(o_registros[278]));
  OBUF \o_registros_OBUF[279]_inst 
       (.I(1'b0),
        .O(o_registros[279]));
  OBUF \o_registros_OBUF[27]_inst 
       (.I(1'b0),
        .O(o_registros[27]));
  OBUF \o_registros_OBUF[280]_inst 
       (.I(1'b0),
        .O(o_registros[280]));
  OBUF \o_registros_OBUF[281]_inst 
       (.I(1'b0),
        .O(o_registros[281]));
  OBUF \o_registros_OBUF[282]_inst 
       (.I(1'b0),
        .O(o_registros[282]));
  OBUF \o_registros_OBUF[283]_inst 
       (.I(1'b0),
        .O(o_registros[283]));
  OBUF \o_registros_OBUF[284]_inst 
       (.I(1'b0),
        .O(o_registros[284]));
  OBUF \o_registros_OBUF[285]_inst 
       (.I(1'b0),
        .O(o_registros[285]));
  OBUF \o_registros_OBUF[286]_inst 
       (.I(1'b0),
        .O(o_registros[286]));
  OBUF \o_registros_OBUF[287]_inst 
       (.I(1'b0),
        .O(o_registros[287]));
  OBUF \o_registros_OBUF[288]_inst 
       (.I(1'b0),
        .O(o_registros[288]));
  OBUF \o_registros_OBUF[289]_inst 
       (.I(1'b0),
        .O(o_registros[289]));
  OBUF \o_registros_OBUF[28]_inst 
       (.I(1'b0),
        .O(o_registros[28]));
  OBUF \o_registros_OBUF[290]_inst 
       (.I(1'b0),
        .O(o_registros[290]));
  OBUF \o_registros_OBUF[291]_inst 
       (.I(1'b0),
        .O(o_registros[291]));
  OBUF \o_registros_OBUF[292]_inst 
       (.I(1'b0),
        .O(o_registros[292]));
  OBUF \o_registros_OBUF[293]_inst 
       (.I(1'b0),
        .O(o_registros[293]));
  OBUF \o_registros_OBUF[294]_inst 
       (.I(1'b0),
        .O(o_registros[294]));
  OBUF \o_registros_OBUF[295]_inst 
       (.I(1'b0),
        .O(o_registros[295]));
  OBUF \o_registros_OBUF[296]_inst 
       (.I(1'b0),
        .O(o_registros[296]));
  OBUF \o_registros_OBUF[297]_inst 
       (.I(1'b0),
        .O(o_registros[297]));
  OBUF \o_registros_OBUF[298]_inst 
       (.I(1'b0),
        .O(o_registros[298]));
  OBUF \o_registros_OBUF[299]_inst 
       (.I(1'b0),
        .O(o_registros[299]));
  OBUF \o_registros_OBUF[29]_inst 
       (.I(1'b0),
        .O(o_registros[29]));
  OBUF \o_registros_OBUF[2]_inst 
       (.I(1'b0),
        .O(o_registros[2]));
  OBUF \o_registros_OBUF[300]_inst 
       (.I(1'b0),
        .O(o_registros[300]));
  OBUF \o_registros_OBUF[301]_inst 
       (.I(1'b0),
        .O(o_registros[301]));
  OBUF \o_registros_OBUF[302]_inst 
       (.I(1'b0),
        .O(o_registros[302]));
  OBUF \o_registros_OBUF[303]_inst 
       (.I(1'b0),
        .O(o_registros[303]));
  OBUF \o_registros_OBUF[304]_inst 
       (.I(1'b0),
        .O(o_registros[304]));
  OBUF \o_registros_OBUF[305]_inst 
       (.I(1'b0),
        .O(o_registros[305]));
  OBUF \o_registros_OBUF[306]_inst 
       (.I(1'b0),
        .O(o_registros[306]));
  OBUF \o_registros_OBUF[307]_inst 
       (.I(1'b0),
        .O(o_registros[307]));
  OBUF \o_registros_OBUF[308]_inst 
       (.I(1'b0),
        .O(o_registros[308]));
  OBUF \o_registros_OBUF[309]_inst 
       (.I(1'b0),
        .O(o_registros[309]));
  OBUF \o_registros_OBUF[30]_inst 
       (.I(1'b0),
        .O(o_registros[30]));
  OBUF \o_registros_OBUF[310]_inst 
       (.I(1'b0),
        .O(o_registros[310]));
  OBUF \o_registros_OBUF[311]_inst 
       (.I(1'b0),
        .O(o_registros[311]));
  OBUF \o_registros_OBUF[312]_inst 
       (.I(1'b0),
        .O(o_registros[312]));
  OBUF \o_registros_OBUF[313]_inst 
       (.I(1'b0),
        .O(o_registros[313]));
  OBUF \o_registros_OBUF[314]_inst 
       (.I(1'b0),
        .O(o_registros[314]));
  OBUF \o_registros_OBUF[315]_inst 
       (.I(1'b0),
        .O(o_registros[315]));
  OBUF \o_registros_OBUF[316]_inst 
       (.I(1'b0),
        .O(o_registros[316]));
  OBUF \o_registros_OBUF[317]_inst 
       (.I(1'b0),
        .O(o_registros[317]));
  OBUF \o_registros_OBUF[318]_inst 
       (.I(1'b0),
        .O(o_registros[318]));
  OBUF \o_registros_OBUF[319]_inst 
       (.I(1'b0),
        .O(o_registros[319]));
  OBUF \o_registros_OBUF[31]_inst 
       (.I(1'b0),
        .O(o_registros[31]));
  OBUF \o_registros_OBUF[320]_inst 
       (.I(1'b0),
        .O(o_registros[320]));
  OBUF \o_registros_OBUF[321]_inst 
       (.I(1'b0),
        .O(o_registros[321]));
  OBUF \o_registros_OBUF[322]_inst 
       (.I(1'b0),
        .O(o_registros[322]));
  OBUF \o_registros_OBUF[323]_inst 
       (.I(1'b0),
        .O(o_registros[323]));
  OBUF \o_registros_OBUF[324]_inst 
       (.I(1'b0),
        .O(o_registros[324]));
  OBUF \o_registros_OBUF[325]_inst 
       (.I(1'b0),
        .O(o_registros[325]));
  OBUF \o_registros_OBUF[326]_inst 
       (.I(1'b0),
        .O(o_registros[326]));
  OBUF \o_registros_OBUF[327]_inst 
       (.I(1'b0),
        .O(o_registros[327]));
  OBUF \o_registros_OBUF[328]_inst 
       (.I(1'b0),
        .O(o_registros[328]));
  OBUF \o_registros_OBUF[329]_inst 
       (.I(1'b0),
        .O(o_registros[329]));
  OBUF \o_registros_OBUF[32]_inst 
       (.I(1'b0),
        .O(o_registros[32]));
  OBUF \o_registros_OBUF[330]_inst 
       (.I(1'b0),
        .O(o_registros[330]));
  OBUF \o_registros_OBUF[331]_inst 
       (.I(1'b0),
        .O(o_registros[331]));
  OBUF \o_registros_OBUF[332]_inst 
       (.I(1'b0),
        .O(o_registros[332]));
  OBUF \o_registros_OBUF[333]_inst 
       (.I(1'b0),
        .O(o_registros[333]));
  OBUF \o_registros_OBUF[334]_inst 
       (.I(1'b0),
        .O(o_registros[334]));
  OBUF \o_registros_OBUF[335]_inst 
       (.I(1'b0),
        .O(o_registros[335]));
  OBUF \o_registros_OBUF[336]_inst 
       (.I(1'b0),
        .O(o_registros[336]));
  OBUF \o_registros_OBUF[337]_inst 
       (.I(1'b0),
        .O(o_registros[337]));
  OBUF \o_registros_OBUF[338]_inst 
       (.I(1'b0),
        .O(o_registros[338]));
  OBUF \o_registros_OBUF[339]_inst 
       (.I(1'b0),
        .O(o_registros[339]));
  OBUF \o_registros_OBUF[33]_inst 
       (.I(1'b0),
        .O(o_registros[33]));
  OBUF \o_registros_OBUF[340]_inst 
       (.I(1'b0),
        .O(o_registros[340]));
  OBUF \o_registros_OBUF[341]_inst 
       (.I(1'b0),
        .O(o_registros[341]));
  OBUF \o_registros_OBUF[342]_inst 
       (.I(1'b0),
        .O(o_registros[342]));
  OBUF \o_registros_OBUF[343]_inst 
       (.I(1'b0),
        .O(o_registros[343]));
  OBUF \o_registros_OBUF[344]_inst 
       (.I(1'b0),
        .O(o_registros[344]));
  OBUF \o_registros_OBUF[345]_inst 
       (.I(1'b0),
        .O(o_registros[345]));
  OBUF \o_registros_OBUF[346]_inst 
       (.I(1'b0),
        .O(o_registros[346]));
  OBUF \o_registros_OBUF[347]_inst 
       (.I(1'b0),
        .O(o_registros[347]));
  OBUF \o_registros_OBUF[348]_inst 
       (.I(1'b0),
        .O(o_registros[348]));
  OBUF \o_registros_OBUF[349]_inst 
       (.I(1'b0),
        .O(o_registros[349]));
  OBUF \o_registros_OBUF[34]_inst 
       (.I(1'b0),
        .O(o_registros[34]));
  OBUF \o_registros_OBUF[350]_inst 
       (.I(1'b0),
        .O(o_registros[350]));
  OBUF \o_registros_OBUF[351]_inst 
       (.I(1'b0),
        .O(o_registros[351]));
  OBUF \o_registros_OBUF[352]_inst 
       (.I(1'b0),
        .O(o_registros[352]));
  OBUF \o_registros_OBUF[353]_inst 
       (.I(1'b0),
        .O(o_registros[353]));
  OBUF \o_registros_OBUF[354]_inst 
       (.I(1'b0),
        .O(o_registros[354]));
  OBUF \o_registros_OBUF[355]_inst 
       (.I(1'b0),
        .O(o_registros[355]));
  OBUF \o_registros_OBUF[356]_inst 
       (.I(1'b0),
        .O(o_registros[356]));
  OBUF \o_registros_OBUF[357]_inst 
       (.I(1'b0),
        .O(o_registros[357]));
  OBUF \o_registros_OBUF[358]_inst 
       (.I(1'b0),
        .O(o_registros[358]));
  OBUF \o_registros_OBUF[359]_inst 
       (.I(1'b0),
        .O(o_registros[359]));
  OBUF \o_registros_OBUF[35]_inst 
       (.I(1'b0),
        .O(o_registros[35]));
  OBUF \o_registros_OBUF[360]_inst 
       (.I(1'b0),
        .O(o_registros[360]));
  OBUF \o_registros_OBUF[361]_inst 
       (.I(1'b0),
        .O(o_registros[361]));
  OBUF \o_registros_OBUF[362]_inst 
       (.I(1'b0),
        .O(o_registros[362]));
  OBUF \o_registros_OBUF[363]_inst 
       (.I(1'b0),
        .O(o_registros[363]));
  OBUF \o_registros_OBUF[364]_inst 
       (.I(1'b0),
        .O(o_registros[364]));
  OBUF \o_registros_OBUF[365]_inst 
       (.I(1'b0),
        .O(o_registros[365]));
  OBUF \o_registros_OBUF[366]_inst 
       (.I(1'b0),
        .O(o_registros[366]));
  OBUF \o_registros_OBUF[367]_inst 
       (.I(1'b0),
        .O(o_registros[367]));
  OBUF \o_registros_OBUF[368]_inst 
       (.I(1'b0),
        .O(o_registros[368]));
  OBUF \o_registros_OBUF[369]_inst 
       (.I(1'b0),
        .O(o_registros[369]));
  OBUF \o_registros_OBUF[36]_inst 
       (.I(1'b0),
        .O(o_registros[36]));
  OBUF \o_registros_OBUF[370]_inst 
       (.I(1'b0),
        .O(o_registros[370]));
  OBUF \o_registros_OBUF[371]_inst 
       (.I(1'b0),
        .O(o_registros[371]));
  OBUF \o_registros_OBUF[372]_inst 
       (.I(1'b0),
        .O(o_registros[372]));
  OBUF \o_registros_OBUF[373]_inst 
       (.I(1'b0),
        .O(o_registros[373]));
  OBUF \o_registros_OBUF[374]_inst 
       (.I(1'b0),
        .O(o_registros[374]));
  OBUF \o_registros_OBUF[375]_inst 
       (.I(1'b0),
        .O(o_registros[375]));
  OBUF \o_registros_OBUF[376]_inst 
       (.I(1'b0),
        .O(o_registros[376]));
  OBUF \o_registros_OBUF[377]_inst 
       (.I(1'b0),
        .O(o_registros[377]));
  OBUF \o_registros_OBUF[378]_inst 
       (.I(1'b0),
        .O(o_registros[378]));
  OBUF \o_registros_OBUF[379]_inst 
       (.I(1'b0),
        .O(o_registros[379]));
  OBUF \o_registros_OBUF[37]_inst 
       (.I(1'b0),
        .O(o_registros[37]));
  OBUF \o_registros_OBUF[380]_inst 
       (.I(1'b0),
        .O(o_registros[380]));
  OBUF \o_registros_OBUF[381]_inst 
       (.I(1'b0),
        .O(o_registros[381]));
  OBUF \o_registros_OBUF[382]_inst 
       (.I(1'b0),
        .O(o_registros[382]));
  OBUF \o_registros_OBUF[383]_inst 
       (.I(1'b0),
        .O(o_registros[383]));
  OBUF \o_registros_OBUF[384]_inst 
       (.I(1'b0),
        .O(o_registros[384]));
  OBUF \o_registros_OBUF[385]_inst 
       (.I(1'b0),
        .O(o_registros[385]));
  OBUF \o_registros_OBUF[386]_inst 
       (.I(1'b0),
        .O(o_registros[386]));
  OBUF \o_registros_OBUF[387]_inst 
       (.I(1'b0),
        .O(o_registros[387]));
  OBUF \o_registros_OBUF[388]_inst 
       (.I(1'b0),
        .O(o_registros[388]));
  OBUF \o_registros_OBUF[389]_inst 
       (.I(1'b0),
        .O(o_registros[389]));
  OBUF \o_registros_OBUF[38]_inst 
       (.I(1'b0),
        .O(o_registros[38]));
  OBUF \o_registros_OBUF[390]_inst 
       (.I(1'b0),
        .O(o_registros[390]));
  OBUF \o_registros_OBUF[391]_inst 
       (.I(1'b0),
        .O(o_registros[391]));
  OBUF \o_registros_OBUF[392]_inst 
       (.I(1'b0),
        .O(o_registros[392]));
  OBUF \o_registros_OBUF[393]_inst 
       (.I(1'b0),
        .O(o_registros[393]));
  OBUF \o_registros_OBUF[394]_inst 
       (.I(1'b0),
        .O(o_registros[394]));
  OBUF \o_registros_OBUF[395]_inst 
       (.I(1'b0),
        .O(o_registros[395]));
  OBUF \o_registros_OBUF[396]_inst 
       (.I(1'b0),
        .O(o_registros[396]));
  OBUF \o_registros_OBUF[397]_inst 
       (.I(1'b0),
        .O(o_registros[397]));
  OBUF \o_registros_OBUF[398]_inst 
       (.I(1'b0),
        .O(o_registros[398]));
  OBUF \o_registros_OBUF[399]_inst 
       (.I(1'b0),
        .O(o_registros[399]));
  OBUF \o_registros_OBUF[39]_inst 
       (.I(1'b0),
        .O(o_registros[39]));
  OBUF \o_registros_OBUF[3]_inst 
       (.I(1'b0),
        .O(o_registros[3]));
  OBUF \o_registros_OBUF[400]_inst 
       (.I(1'b0),
        .O(o_registros[400]));
  OBUF \o_registros_OBUF[401]_inst 
       (.I(1'b0),
        .O(o_registros[401]));
  OBUF \o_registros_OBUF[402]_inst 
       (.I(1'b0),
        .O(o_registros[402]));
  OBUF \o_registros_OBUF[403]_inst 
       (.I(1'b0),
        .O(o_registros[403]));
  OBUF \o_registros_OBUF[404]_inst 
       (.I(1'b0),
        .O(o_registros[404]));
  OBUF \o_registros_OBUF[405]_inst 
       (.I(1'b0),
        .O(o_registros[405]));
  OBUF \o_registros_OBUF[406]_inst 
       (.I(1'b0),
        .O(o_registros[406]));
  OBUF \o_registros_OBUF[407]_inst 
       (.I(1'b0),
        .O(o_registros[407]));
  OBUF \o_registros_OBUF[408]_inst 
       (.I(1'b0),
        .O(o_registros[408]));
  OBUF \o_registros_OBUF[409]_inst 
       (.I(1'b0),
        .O(o_registros[409]));
  OBUF \o_registros_OBUF[40]_inst 
       (.I(1'b0),
        .O(o_registros[40]));
  OBUF \o_registros_OBUF[410]_inst 
       (.I(1'b0),
        .O(o_registros[410]));
  OBUF \o_registros_OBUF[411]_inst 
       (.I(1'b0),
        .O(o_registros[411]));
  OBUF \o_registros_OBUF[412]_inst 
       (.I(1'b0),
        .O(o_registros[412]));
  OBUF \o_registros_OBUF[413]_inst 
       (.I(1'b0),
        .O(o_registros[413]));
  OBUF \o_registros_OBUF[414]_inst 
       (.I(1'b0),
        .O(o_registros[414]));
  OBUF \o_registros_OBUF[415]_inst 
       (.I(1'b0),
        .O(o_registros[415]));
  OBUF \o_registros_OBUF[416]_inst 
       (.I(1'b0),
        .O(o_registros[416]));
  OBUF \o_registros_OBUF[417]_inst 
       (.I(1'b0),
        .O(o_registros[417]));
  OBUF \o_registros_OBUF[418]_inst 
       (.I(1'b0),
        .O(o_registros[418]));
  OBUF \o_registros_OBUF[419]_inst 
       (.I(1'b0),
        .O(o_registros[419]));
  OBUF \o_registros_OBUF[41]_inst 
       (.I(1'b0),
        .O(o_registros[41]));
  OBUF \o_registros_OBUF[420]_inst 
       (.I(1'b0),
        .O(o_registros[420]));
  OBUF \o_registros_OBUF[421]_inst 
       (.I(1'b0),
        .O(o_registros[421]));
  OBUF \o_registros_OBUF[422]_inst 
       (.I(1'b0),
        .O(o_registros[422]));
  OBUF \o_registros_OBUF[423]_inst 
       (.I(1'b0),
        .O(o_registros[423]));
  OBUF \o_registros_OBUF[424]_inst 
       (.I(1'b0),
        .O(o_registros[424]));
  OBUF \o_registros_OBUF[425]_inst 
       (.I(1'b0),
        .O(o_registros[425]));
  OBUF \o_registros_OBUF[426]_inst 
       (.I(1'b0),
        .O(o_registros[426]));
  OBUF \o_registros_OBUF[427]_inst 
       (.I(1'b0),
        .O(o_registros[427]));
  OBUF \o_registros_OBUF[428]_inst 
       (.I(1'b0),
        .O(o_registros[428]));
  OBUF \o_registros_OBUF[429]_inst 
       (.I(1'b0),
        .O(o_registros[429]));
  OBUF \o_registros_OBUF[42]_inst 
       (.I(1'b0),
        .O(o_registros[42]));
  OBUF \o_registros_OBUF[430]_inst 
       (.I(1'b0),
        .O(o_registros[430]));
  OBUF \o_registros_OBUF[431]_inst 
       (.I(1'b0),
        .O(o_registros[431]));
  OBUF \o_registros_OBUF[432]_inst 
       (.I(1'b0),
        .O(o_registros[432]));
  OBUF \o_registros_OBUF[433]_inst 
       (.I(1'b0),
        .O(o_registros[433]));
  OBUF \o_registros_OBUF[434]_inst 
       (.I(1'b0),
        .O(o_registros[434]));
  OBUF \o_registros_OBUF[435]_inst 
       (.I(1'b0),
        .O(o_registros[435]));
  OBUF \o_registros_OBUF[436]_inst 
       (.I(1'b0),
        .O(o_registros[436]));
  OBUF \o_registros_OBUF[437]_inst 
       (.I(1'b0),
        .O(o_registros[437]));
  OBUF \o_registros_OBUF[438]_inst 
       (.I(1'b0),
        .O(o_registros[438]));
  OBUF \o_registros_OBUF[439]_inst 
       (.I(1'b0),
        .O(o_registros[439]));
  OBUF \o_registros_OBUF[43]_inst 
       (.I(1'b0),
        .O(o_registros[43]));
  OBUF \o_registros_OBUF[440]_inst 
       (.I(1'b0),
        .O(o_registros[440]));
  OBUF \o_registros_OBUF[441]_inst 
       (.I(1'b0),
        .O(o_registros[441]));
  OBUF \o_registros_OBUF[442]_inst 
       (.I(1'b0),
        .O(o_registros[442]));
  OBUF \o_registros_OBUF[443]_inst 
       (.I(1'b0),
        .O(o_registros[443]));
  OBUF \o_registros_OBUF[444]_inst 
       (.I(1'b0),
        .O(o_registros[444]));
  OBUF \o_registros_OBUF[445]_inst 
       (.I(1'b0),
        .O(o_registros[445]));
  OBUF \o_registros_OBUF[446]_inst 
       (.I(1'b0),
        .O(o_registros[446]));
  OBUF \o_registros_OBUF[447]_inst 
       (.I(1'b0),
        .O(o_registros[447]));
  OBUF \o_registros_OBUF[448]_inst 
       (.I(1'b0),
        .O(o_registros[448]));
  OBUF \o_registros_OBUF[449]_inst 
       (.I(1'b0),
        .O(o_registros[449]));
  OBUF \o_registros_OBUF[44]_inst 
       (.I(1'b0),
        .O(o_registros[44]));
  OBUF \o_registros_OBUF[450]_inst 
       (.I(1'b0),
        .O(o_registros[450]));
  OBUF \o_registros_OBUF[451]_inst 
       (.I(1'b0),
        .O(o_registros[451]));
  OBUF \o_registros_OBUF[452]_inst 
       (.I(1'b0),
        .O(o_registros[452]));
  OBUF \o_registros_OBUF[453]_inst 
       (.I(1'b0),
        .O(o_registros[453]));
  OBUF \o_registros_OBUF[454]_inst 
       (.I(1'b0),
        .O(o_registros[454]));
  OBUF \o_registros_OBUF[455]_inst 
       (.I(1'b0),
        .O(o_registros[455]));
  OBUF \o_registros_OBUF[456]_inst 
       (.I(1'b0),
        .O(o_registros[456]));
  OBUF \o_registros_OBUF[457]_inst 
       (.I(1'b0),
        .O(o_registros[457]));
  OBUF \o_registros_OBUF[458]_inst 
       (.I(1'b0),
        .O(o_registros[458]));
  OBUF \o_registros_OBUF[459]_inst 
       (.I(1'b0),
        .O(o_registros[459]));
  OBUF \o_registros_OBUF[45]_inst 
       (.I(1'b0),
        .O(o_registros[45]));
  OBUF \o_registros_OBUF[460]_inst 
       (.I(1'b0),
        .O(o_registros[460]));
  OBUF \o_registros_OBUF[461]_inst 
       (.I(1'b0),
        .O(o_registros[461]));
  OBUF \o_registros_OBUF[462]_inst 
       (.I(1'b0),
        .O(o_registros[462]));
  OBUF \o_registros_OBUF[463]_inst 
       (.I(1'b0),
        .O(o_registros[463]));
  OBUF \o_registros_OBUF[464]_inst 
       (.I(1'b0),
        .O(o_registros[464]));
  OBUF \o_registros_OBUF[465]_inst 
       (.I(1'b0),
        .O(o_registros[465]));
  OBUF \o_registros_OBUF[466]_inst 
       (.I(1'b0),
        .O(o_registros[466]));
  OBUF \o_registros_OBUF[467]_inst 
       (.I(1'b0),
        .O(o_registros[467]));
  OBUF \o_registros_OBUF[468]_inst 
       (.I(1'b0),
        .O(o_registros[468]));
  OBUF \o_registros_OBUF[469]_inst 
       (.I(1'b0),
        .O(o_registros[469]));
  OBUF \o_registros_OBUF[46]_inst 
       (.I(1'b0),
        .O(o_registros[46]));
  OBUF \o_registros_OBUF[470]_inst 
       (.I(1'b0),
        .O(o_registros[470]));
  OBUF \o_registros_OBUF[471]_inst 
       (.I(1'b0),
        .O(o_registros[471]));
  OBUF \o_registros_OBUF[472]_inst 
       (.I(1'b0),
        .O(o_registros[472]));
  OBUF \o_registros_OBUF[473]_inst 
       (.I(1'b0),
        .O(o_registros[473]));
  OBUF \o_registros_OBUF[474]_inst 
       (.I(1'b0),
        .O(o_registros[474]));
  OBUF \o_registros_OBUF[475]_inst 
       (.I(1'b0),
        .O(o_registros[475]));
  OBUF \o_registros_OBUF[476]_inst 
       (.I(1'b0),
        .O(o_registros[476]));
  OBUF \o_registros_OBUF[477]_inst 
       (.I(1'b0),
        .O(o_registros[477]));
  OBUF \o_registros_OBUF[478]_inst 
       (.I(1'b0),
        .O(o_registros[478]));
  OBUF \o_registros_OBUF[479]_inst 
       (.I(1'b0),
        .O(o_registros[479]));
  OBUF \o_registros_OBUF[47]_inst 
       (.I(1'b0),
        .O(o_registros[47]));
  OBUF \o_registros_OBUF[480]_inst 
       (.I(1'b0),
        .O(o_registros[480]));
  OBUF \o_registros_OBUF[481]_inst 
       (.I(1'b0),
        .O(o_registros[481]));
  OBUF \o_registros_OBUF[482]_inst 
       (.I(1'b0),
        .O(o_registros[482]));
  OBUF \o_registros_OBUF[483]_inst 
       (.I(1'b0),
        .O(o_registros[483]));
  OBUF \o_registros_OBUF[484]_inst 
       (.I(1'b0),
        .O(o_registros[484]));
  OBUF \o_registros_OBUF[485]_inst 
       (.I(1'b0),
        .O(o_registros[485]));
  OBUF \o_registros_OBUF[486]_inst 
       (.I(1'b0),
        .O(o_registros[486]));
  OBUF \o_registros_OBUF[487]_inst 
       (.I(1'b0),
        .O(o_registros[487]));
  OBUF \o_registros_OBUF[488]_inst 
       (.I(1'b0),
        .O(o_registros[488]));
  OBUF \o_registros_OBUF[489]_inst 
       (.I(1'b0),
        .O(o_registros[489]));
  OBUF \o_registros_OBUF[48]_inst 
       (.I(1'b0),
        .O(o_registros[48]));
  OBUF \o_registros_OBUF[490]_inst 
       (.I(1'b0),
        .O(o_registros[490]));
  OBUF \o_registros_OBUF[491]_inst 
       (.I(1'b0),
        .O(o_registros[491]));
  OBUF \o_registros_OBUF[492]_inst 
       (.I(1'b0),
        .O(o_registros[492]));
  OBUF \o_registros_OBUF[493]_inst 
       (.I(1'b0),
        .O(o_registros[493]));
  OBUF \o_registros_OBUF[494]_inst 
       (.I(1'b0),
        .O(o_registros[494]));
  OBUF \o_registros_OBUF[495]_inst 
       (.I(1'b0),
        .O(o_registros[495]));
  OBUF \o_registros_OBUF[496]_inst 
       (.I(1'b0),
        .O(o_registros[496]));
  OBUF \o_registros_OBUF[497]_inst 
       (.I(1'b0),
        .O(o_registros[497]));
  OBUF \o_registros_OBUF[498]_inst 
       (.I(1'b0),
        .O(o_registros[498]));
  OBUF \o_registros_OBUF[499]_inst 
       (.I(1'b0),
        .O(o_registros[499]));
  OBUF \o_registros_OBUF[49]_inst 
       (.I(1'b0),
        .O(o_registros[49]));
  OBUF \o_registros_OBUF[4]_inst 
       (.I(1'b0),
        .O(o_registros[4]));
  OBUF \o_registros_OBUF[500]_inst 
       (.I(1'b0),
        .O(o_registros[500]));
  OBUF \o_registros_OBUF[501]_inst 
       (.I(1'b0),
        .O(o_registros[501]));
  OBUF \o_registros_OBUF[502]_inst 
       (.I(1'b0),
        .O(o_registros[502]));
  OBUF \o_registros_OBUF[503]_inst 
       (.I(1'b0),
        .O(o_registros[503]));
  OBUF \o_registros_OBUF[504]_inst 
       (.I(1'b0),
        .O(o_registros[504]));
  OBUF \o_registros_OBUF[505]_inst 
       (.I(1'b0),
        .O(o_registros[505]));
  OBUF \o_registros_OBUF[506]_inst 
       (.I(1'b0),
        .O(o_registros[506]));
  OBUF \o_registros_OBUF[507]_inst 
       (.I(1'b0),
        .O(o_registros[507]));
  OBUF \o_registros_OBUF[508]_inst 
       (.I(1'b0),
        .O(o_registros[508]));
  OBUF \o_registros_OBUF[509]_inst 
       (.I(1'b0),
        .O(o_registros[509]));
  OBUF \o_registros_OBUF[50]_inst 
       (.I(1'b0),
        .O(o_registros[50]));
  OBUF \o_registros_OBUF[510]_inst 
       (.I(1'b0),
        .O(o_registros[510]));
  OBUF \o_registros_OBUF[511]_inst 
       (.I(1'b0),
        .O(o_registros[511]));
  OBUF \o_registros_OBUF[512]_inst 
       (.I(1'b0),
        .O(o_registros[512]));
  OBUF \o_registros_OBUF[513]_inst 
       (.I(1'b0),
        .O(o_registros[513]));
  OBUF \o_registros_OBUF[514]_inst 
       (.I(1'b0),
        .O(o_registros[514]));
  OBUF \o_registros_OBUF[515]_inst 
       (.I(1'b0),
        .O(o_registros[515]));
  OBUF \o_registros_OBUF[516]_inst 
       (.I(o_registros_OBUF),
        .O(o_registros[516]));
  OBUF \o_registros_OBUF[517]_inst 
       (.I(1'b0),
        .O(o_registros[517]));
  OBUF \o_registros_OBUF[518]_inst 
       (.I(1'b0),
        .O(o_registros[518]));
  OBUF \o_registros_OBUF[519]_inst 
       (.I(1'b0),
        .O(o_registros[519]));
  OBUF \o_registros_OBUF[51]_inst 
       (.I(1'b0),
        .O(o_registros[51]));
  OBUF \o_registros_OBUF[520]_inst 
       (.I(1'b0),
        .O(o_registros[520]));
  OBUF \o_registros_OBUF[521]_inst 
       (.I(1'b0),
        .O(o_registros[521]));
  OBUF \o_registros_OBUF[522]_inst 
       (.I(1'b0),
        .O(o_registros[522]));
  OBUF \o_registros_OBUF[523]_inst 
       (.I(1'b0),
        .O(o_registros[523]));
  OBUF \o_registros_OBUF[524]_inst 
       (.I(1'b0),
        .O(o_registros[524]));
  OBUF \o_registros_OBUF[525]_inst 
       (.I(1'b0),
        .O(o_registros[525]));
  OBUF \o_registros_OBUF[526]_inst 
       (.I(1'b0),
        .O(o_registros[526]));
  OBUF \o_registros_OBUF[527]_inst 
       (.I(1'b0),
        .O(o_registros[527]));
  OBUF \o_registros_OBUF[528]_inst 
       (.I(1'b0),
        .O(o_registros[528]));
  OBUF \o_registros_OBUF[529]_inst 
       (.I(1'b0),
        .O(o_registros[529]));
  OBUF \o_registros_OBUF[52]_inst 
       (.I(1'b0),
        .O(o_registros[52]));
  OBUF \o_registros_OBUF[530]_inst 
       (.I(1'b0),
        .O(o_registros[530]));
  OBUF \o_registros_OBUF[531]_inst 
       (.I(1'b0),
        .O(o_registros[531]));
  OBUF \o_registros_OBUF[532]_inst 
       (.I(1'b0),
        .O(o_registros[532]));
  OBUF \o_registros_OBUF[533]_inst 
       (.I(1'b0),
        .O(o_registros[533]));
  OBUF \o_registros_OBUF[534]_inst 
       (.I(1'b0),
        .O(o_registros[534]));
  OBUF \o_registros_OBUF[535]_inst 
       (.I(1'b0),
        .O(o_registros[535]));
  OBUF \o_registros_OBUF[536]_inst 
       (.I(1'b0),
        .O(o_registros[536]));
  OBUF \o_registros_OBUF[537]_inst 
       (.I(1'b0),
        .O(o_registros[537]));
  OBUF \o_registros_OBUF[538]_inst 
       (.I(1'b0),
        .O(o_registros[538]));
  OBUF \o_registros_OBUF[539]_inst 
       (.I(1'b0),
        .O(o_registros[539]));
  OBUF \o_registros_OBUF[53]_inst 
       (.I(1'b0),
        .O(o_registros[53]));
  OBUF \o_registros_OBUF[540]_inst 
       (.I(1'b0),
        .O(o_registros[540]));
  OBUF \o_registros_OBUF[541]_inst 
       (.I(1'b0),
        .O(o_registros[541]));
  OBUF \o_registros_OBUF[542]_inst 
       (.I(1'b0),
        .O(o_registros[542]));
  OBUF \o_registros_OBUF[543]_inst 
       (.I(1'b0),
        .O(o_registros[543]));
  OBUF \o_registros_OBUF[544]_inst 
       (.I(1'b0),
        .O(o_registros[544]));
  OBUF \o_registros_OBUF[545]_inst 
       (.I(1'b0),
        .O(o_registros[545]));
  OBUF \o_registros_OBUF[546]_inst 
       (.I(1'b0),
        .O(o_registros[546]));
  OBUF \o_registros_OBUF[547]_inst 
       (.I(1'b0),
        .O(o_registros[547]));
  OBUF \o_registros_OBUF[548]_inst 
       (.I(1'b0),
        .O(o_registros[548]));
  OBUF \o_registros_OBUF[549]_inst 
       (.I(1'b0),
        .O(o_registros[549]));
  OBUF \o_registros_OBUF[54]_inst 
       (.I(1'b0),
        .O(o_registros[54]));
  OBUF \o_registros_OBUF[550]_inst 
       (.I(1'b0),
        .O(o_registros[550]));
  OBUF \o_registros_OBUF[551]_inst 
       (.I(1'b0),
        .O(o_registros[551]));
  OBUF \o_registros_OBUF[552]_inst 
       (.I(1'b0),
        .O(o_registros[552]));
  OBUF \o_registros_OBUF[553]_inst 
       (.I(1'b0),
        .O(o_registros[553]));
  OBUF \o_registros_OBUF[554]_inst 
       (.I(1'b0),
        .O(o_registros[554]));
  OBUF \o_registros_OBUF[555]_inst 
       (.I(1'b0),
        .O(o_registros[555]));
  OBUF \o_registros_OBUF[556]_inst 
       (.I(1'b0),
        .O(o_registros[556]));
  OBUF \o_registros_OBUF[557]_inst 
       (.I(1'b0),
        .O(o_registros[557]));
  OBUF \o_registros_OBUF[558]_inst 
       (.I(1'b0),
        .O(o_registros[558]));
  OBUF \o_registros_OBUF[559]_inst 
       (.I(1'b0),
        .O(o_registros[559]));
  OBUF \o_registros_OBUF[55]_inst 
       (.I(1'b0),
        .O(o_registros[55]));
  OBUF \o_registros_OBUF[560]_inst 
       (.I(1'b0),
        .O(o_registros[560]));
  OBUF \o_registros_OBUF[561]_inst 
       (.I(1'b0),
        .O(o_registros[561]));
  OBUF \o_registros_OBUF[562]_inst 
       (.I(1'b0),
        .O(o_registros[562]));
  OBUF \o_registros_OBUF[563]_inst 
       (.I(1'b0),
        .O(o_registros[563]));
  OBUF \o_registros_OBUF[564]_inst 
       (.I(1'b0),
        .O(o_registros[564]));
  OBUF \o_registros_OBUF[565]_inst 
       (.I(1'b0),
        .O(o_registros[565]));
  OBUF \o_registros_OBUF[566]_inst 
       (.I(1'b0),
        .O(o_registros[566]));
  OBUF \o_registros_OBUF[567]_inst 
       (.I(1'b0),
        .O(o_registros[567]));
  OBUF \o_registros_OBUF[568]_inst 
       (.I(1'b0),
        .O(o_registros[568]));
  OBUF \o_registros_OBUF[569]_inst 
       (.I(1'b0),
        .O(o_registros[569]));
  OBUF \o_registros_OBUF[56]_inst 
       (.I(1'b0),
        .O(o_registros[56]));
  OBUF \o_registros_OBUF[570]_inst 
       (.I(1'b0),
        .O(o_registros[570]));
  OBUF \o_registros_OBUF[571]_inst 
       (.I(1'b0),
        .O(o_registros[571]));
  OBUF \o_registros_OBUF[572]_inst 
       (.I(1'b0),
        .O(o_registros[572]));
  OBUF \o_registros_OBUF[573]_inst 
       (.I(1'b0),
        .O(o_registros[573]));
  OBUF \o_registros_OBUF[574]_inst 
       (.I(1'b0),
        .O(o_registros[574]));
  OBUF \o_registros_OBUF[575]_inst 
       (.I(1'b0),
        .O(o_registros[575]));
  OBUF \o_registros_OBUF[576]_inst 
       (.I(1'b0),
        .O(o_registros[576]));
  OBUF \o_registros_OBUF[577]_inst 
       (.I(1'b0),
        .O(o_registros[577]));
  OBUF \o_registros_OBUF[578]_inst 
       (.I(1'b0),
        .O(o_registros[578]));
  OBUF \o_registros_OBUF[579]_inst 
       (.I(1'b0),
        .O(o_registros[579]));
  OBUF \o_registros_OBUF[57]_inst 
       (.I(1'b0),
        .O(o_registros[57]));
  OBUF \o_registros_OBUF[580]_inst 
       (.I(1'b0),
        .O(o_registros[580]));
  OBUF \o_registros_OBUF[581]_inst 
       (.I(1'b0),
        .O(o_registros[581]));
  OBUF \o_registros_OBUF[582]_inst 
       (.I(1'b0),
        .O(o_registros[582]));
  OBUF \o_registros_OBUF[583]_inst 
       (.I(1'b0),
        .O(o_registros[583]));
  OBUF \o_registros_OBUF[584]_inst 
       (.I(1'b0),
        .O(o_registros[584]));
  OBUF \o_registros_OBUF[585]_inst 
       (.I(1'b0),
        .O(o_registros[585]));
  OBUF \o_registros_OBUF[586]_inst 
       (.I(1'b0),
        .O(o_registros[586]));
  OBUF \o_registros_OBUF[587]_inst 
       (.I(1'b0),
        .O(o_registros[587]));
  OBUF \o_registros_OBUF[588]_inst 
       (.I(1'b0),
        .O(o_registros[588]));
  OBUF \o_registros_OBUF[589]_inst 
       (.I(1'b0),
        .O(o_registros[589]));
  OBUF \o_registros_OBUF[58]_inst 
       (.I(1'b0),
        .O(o_registros[58]));
  OBUF \o_registros_OBUF[590]_inst 
       (.I(1'b0),
        .O(o_registros[590]));
  OBUF \o_registros_OBUF[591]_inst 
       (.I(1'b0),
        .O(o_registros[591]));
  OBUF \o_registros_OBUF[592]_inst 
       (.I(1'b0),
        .O(o_registros[592]));
  OBUF \o_registros_OBUF[593]_inst 
       (.I(1'b0),
        .O(o_registros[593]));
  OBUF \o_registros_OBUF[594]_inst 
       (.I(1'b0),
        .O(o_registros[594]));
  OBUF \o_registros_OBUF[595]_inst 
       (.I(1'b0),
        .O(o_registros[595]));
  OBUF \o_registros_OBUF[596]_inst 
       (.I(1'b0),
        .O(o_registros[596]));
  OBUF \o_registros_OBUF[597]_inst 
       (.I(1'b0),
        .O(o_registros[597]));
  OBUF \o_registros_OBUF[598]_inst 
       (.I(1'b0),
        .O(o_registros[598]));
  OBUF \o_registros_OBUF[599]_inst 
       (.I(1'b0),
        .O(o_registros[599]));
  OBUF \o_registros_OBUF[59]_inst 
       (.I(1'b0),
        .O(o_registros[59]));
  OBUF \o_registros_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_registros[5]));
  OBUF \o_registros_OBUF[600]_inst 
       (.I(1'b0),
        .O(o_registros[600]));
  OBUF \o_registros_OBUF[601]_inst 
       (.I(1'b0),
        .O(o_registros[601]));
  OBUF \o_registros_OBUF[602]_inst 
       (.I(1'b0),
        .O(o_registros[602]));
  OBUF \o_registros_OBUF[603]_inst 
       (.I(1'b0),
        .O(o_registros[603]));
  OBUF \o_registros_OBUF[604]_inst 
       (.I(1'b0),
        .O(o_registros[604]));
  OBUF \o_registros_OBUF[605]_inst 
       (.I(1'b0),
        .O(o_registros[605]));
  OBUF \o_registros_OBUF[606]_inst 
       (.I(1'b0),
        .O(o_registros[606]));
  OBUF \o_registros_OBUF[607]_inst 
       (.I(1'b0),
        .O(o_registros[607]));
  OBUF \o_registros_OBUF[608]_inst 
       (.I(1'b0),
        .O(o_registros[608]));
  OBUF \o_registros_OBUF[609]_inst 
       (.I(1'b0),
        .O(o_registros[609]));
  OBUF \o_registros_OBUF[60]_inst 
       (.I(1'b0),
        .O(o_registros[60]));
  OBUF \o_registros_OBUF[610]_inst 
       (.I(1'b0),
        .O(o_registros[610]));
  OBUF \o_registros_OBUF[611]_inst 
       (.I(1'b0),
        .O(o_registros[611]));
  OBUF \o_registros_OBUF[612]_inst 
       (.I(1'b0),
        .O(o_registros[612]));
  OBUF \o_registros_OBUF[613]_inst 
       (.I(1'b0),
        .O(o_registros[613]));
  OBUF \o_registros_OBUF[614]_inst 
       (.I(1'b0),
        .O(o_registros[614]));
  OBUF \o_registros_OBUF[615]_inst 
       (.I(1'b0),
        .O(o_registros[615]));
  OBUF \o_registros_OBUF[616]_inst 
       (.I(1'b0),
        .O(o_registros[616]));
  OBUF \o_registros_OBUF[617]_inst 
       (.I(1'b0),
        .O(o_registros[617]));
  OBUF \o_registros_OBUF[618]_inst 
       (.I(1'b0),
        .O(o_registros[618]));
  OBUF \o_registros_OBUF[619]_inst 
       (.I(1'b0),
        .O(o_registros[619]));
  OBUF \o_registros_OBUF[61]_inst 
       (.I(1'b0),
        .O(o_registros[61]));
  OBUF \o_registros_OBUF[620]_inst 
       (.I(1'b0),
        .O(o_registros[620]));
  OBUF \o_registros_OBUF[621]_inst 
       (.I(1'b0),
        .O(o_registros[621]));
  OBUF \o_registros_OBUF[622]_inst 
       (.I(1'b0),
        .O(o_registros[622]));
  OBUF \o_registros_OBUF[623]_inst 
       (.I(1'b0),
        .O(o_registros[623]));
  OBUF \o_registros_OBUF[624]_inst 
       (.I(1'b0),
        .O(o_registros[624]));
  OBUF \o_registros_OBUF[625]_inst 
       (.I(1'b0),
        .O(o_registros[625]));
  OBUF \o_registros_OBUF[626]_inst 
       (.I(1'b0),
        .O(o_registros[626]));
  OBUF \o_registros_OBUF[627]_inst 
       (.I(1'b0),
        .O(o_registros[627]));
  OBUF \o_registros_OBUF[628]_inst 
       (.I(1'b0),
        .O(o_registros[628]));
  OBUF \o_registros_OBUF[629]_inst 
       (.I(1'b0),
        .O(o_registros[629]));
  OBUF \o_registros_OBUF[62]_inst 
       (.I(1'b0),
        .O(o_registros[62]));
  OBUF \o_registros_OBUF[630]_inst 
       (.I(1'b0),
        .O(o_registros[630]));
  OBUF \o_registros_OBUF[631]_inst 
       (.I(1'b0),
        .O(o_registros[631]));
  OBUF \o_registros_OBUF[632]_inst 
       (.I(1'b0),
        .O(o_registros[632]));
  OBUF \o_registros_OBUF[633]_inst 
       (.I(1'b0),
        .O(o_registros[633]));
  OBUF \o_registros_OBUF[634]_inst 
       (.I(1'b0),
        .O(o_registros[634]));
  OBUF \o_registros_OBUF[635]_inst 
       (.I(1'b0),
        .O(o_registros[635]));
  OBUF \o_registros_OBUF[636]_inst 
       (.I(1'b0),
        .O(o_registros[636]));
  OBUF \o_registros_OBUF[637]_inst 
       (.I(1'b0),
        .O(o_registros[637]));
  OBUF \o_registros_OBUF[638]_inst 
       (.I(1'b0),
        .O(o_registros[638]));
  OBUF \o_registros_OBUF[639]_inst 
       (.I(1'b0),
        .O(o_registros[639]));
  OBUF \o_registros_OBUF[63]_inst 
       (.I(1'b0),
        .O(o_registros[63]));
  OBUF \o_registros_OBUF[640]_inst 
       (.I(1'b0),
        .O(o_registros[640]));
  OBUF \o_registros_OBUF[641]_inst 
       (.I(1'b0),
        .O(o_registros[641]));
  OBUF \o_registros_OBUF[642]_inst 
       (.I(1'b0),
        .O(o_registros[642]));
  OBUF \o_registros_OBUF[643]_inst 
       (.I(1'b0),
        .O(o_registros[643]));
  OBUF \o_registros_OBUF[644]_inst 
       (.I(1'b0),
        .O(o_registros[644]));
  OBUF \o_registros_OBUF[645]_inst 
       (.I(1'b0),
        .O(o_registros[645]));
  OBUF \o_registros_OBUF[646]_inst 
       (.I(1'b0),
        .O(o_registros[646]));
  OBUF \o_registros_OBUF[647]_inst 
       (.I(1'b0),
        .O(o_registros[647]));
  OBUF \o_registros_OBUF[648]_inst 
       (.I(1'b0),
        .O(o_registros[648]));
  OBUF \o_registros_OBUF[649]_inst 
       (.I(1'b0),
        .O(o_registros[649]));
  OBUF \o_registros_OBUF[64]_inst 
       (.I(1'b0),
        .O(o_registros[64]));
  OBUF \o_registros_OBUF[650]_inst 
       (.I(1'b0),
        .O(o_registros[650]));
  OBUF \o_registros_OBUF[651]_inst 
       (.I(1'b0),
        .O(o_registros[651]));
  OBUF \o_registros_OBUF[652]_inst 
       (.I(1'b0),
        .O(o_registros[652]));
  OBUF \o_registros_OBUF[653]_inst 
       (.I(1'b0),
        .O(o_registros[653]));
  OBUF \o_registros_OBUF[654]_inst 
       (.I(1'b0),
        .O(o_registros[654]));
  OBUF \o_registros_OBUF[655]_inst 
       (.I(1'b0),
        .O(o_registros[655]));
  OBUF \o_registros_OBUF[656]_inst 
       (.I(1'b0),
        .O(o_registros[656]));
  OBUF \o_registros_OBUF[657]_inst 
       (.I(1'b0),
        .O(o_registros[657]));
  OBUF \o_registros_OBUF[658]_inst 
       (.I(1'b0),
        .O(o_registros[658]));
  OBUF \o_registros_OBUF[659]_inst 
       (.I(1'b0),
        .O(o_registros[659]));
  OBUF \o_registros_OBUF[65]_inst 
       (.I(1'b0),
        .O(o_registros[65]));
  OBUF \o_registros_OBUF[660]_inst 
       (.I(1'b0),
        .O(o_registros[660]));
  OBUF \o_registros_OBUF[661]_inst 
       (.I(1'b0),
        .O(o_registros[661]));
  OBUF \o_registros_OBUF[662]_inst 
       (.I(1'b0),
        .O(o_registros[662]));
  OBUF \o_registros_OBUF[663]_inst 
       (.I(1'b0),
        .O(o_registros[663]));
  OBUF \o_registros_OBUF[664]_inst 
       (.I(1'b0),
        .O(o_registros[664]));
  OBUF \o_registros_OBUF[665]_inst 
       (.I(1'b0),
        .O(o_registros[665]));
  OBUF \o_registros_OBUF[666]_inst 
       (.I(1'b0),
        .O(o_registros[666]));
  OBUF \o_registros_OBUF[667]_inst 
       (.I(1'b0),
        .O(o_registros[667]));
  OBUF \o_registros_OBUF[668]_inst 
       (.I(1'b0),
        .O(o_registros[668]));
  OBUF \o_registros_OBUF[669]_inst 
       (.I(1'b0),
        .O(o_registros[669]));
  OBUF \o_registros_OBUF[66]_inst 
       (.I(1'b0),
        .O(o_registros[66]));
  OBUF \o_registros_OBUF[670]_inst 
       (.I(1'b0),
        .O(o_registros[670]));
  OBUF \o_registros_OBUF[671]_inst 
       (.I(1'b0),
        .O(o_registros[671]));
  OBUF \o_registros_OBUF[672]_inst 
       (.I(1'b0),
        .O(o_registros[672]));
  OBUF \o_registros_OBUF[673]_inst 
       (.I(1'b0),
        .O(o_registros[673]));
  OBUF \o_registros_OBUF[674]_inst 
       (.I(1'b0),
        .O(o_registros[674]));
  OBUF \o_registros_OBUF[675]_inst 
       (.I(1'b0),
        .O(o_registros[675]));
  OBUF \o_registros_OBUF[676]_inst 
       (.I(1'b0),
        .O(o_registros[676]));
  OBUF \o_registros_OBUF[677]_inst 
       (.I(1'b0),
        .O(o_registros[677]));
  OBUF \o_registros_OBUF[678]_inst 
       (.I(1'b0),
        .O(o_registros[678]));
  OBUF \o_registros_OBUF[679]_inst 
       (.I(1'b0),
        .O(o_registros[679]));
  OBUF \o_registros_OBUF[67]_inst 
       (.I(1'b0),
        .O(o_registros[67]));
  OBUF \o_registros_OBUF[680]_inst 
       (.I(1'b0),
        .O(o_registros[680]));
  OBUF \o_registros_OBUF[681]_inst 
       (.I(1'b0),
        .O(o_registros[681]));
  OBUF \o_registros_OBUF[682]_inst 
       (.I(1'b0),
        .O(o_registros[682]));
  OBUF \o_registros_OBUF[683]_inst 
       (.I(1'b0),
        .O(o_registros[683]));
  OBUF \o_registros_OBUF[684]_inst 
       (.I(1'b0),
        .O(o_registros[684]));
  OBUF \o_registros_OBUF[685]_inst 
       (.I(1'b0),
        .O(o_registros[685]));
  OBUF \o_registros_OBUF[686]_inst 
       (.I(1'b0),
        .O(o_registros[686]));
  OBUF \o_registros_OBUF[687]_inst 
       (.I(1'b0),
        .O(o_registros[687]));
  OBUF \o_registros_OBUF[688]_inst 
       (.I(1'b0),
        .O(o_registros[688]));
  OBUF \o_registros_OBUF[689]_inst 
       (.I(1'b0),
        .O(o_registros[689]));
  OBUF \o_registros_OBUF[68]_inst 
       (.I(1'b0),
        .O(o_registros[68]));
  OBUF \o_registros_OBUF[690]_inst 
       (.I(1'b0),
        .O(o_registros[690]));
  OBUF \o_registros_OBUF[691]_inst 
       (.I(1'b0),
        .O(o_registros[691]));
  OBUF \o_registros_OBUF[692]_inst 
       (.I(1'b0),
        .O(o_registros[692]));
  OBUF \o_registros_OBUF[693]_inst 
       (.I(1'b0),
        .O(o_registros[693]));
  OBUF \o_registros_OBUF[694]_inst 
       (.I(1'b0),
        .O(o_registros[694]));
  OBUF \o_registros_OBUF[695]_inst 
       (.I(1'b0),
        .O(o_registros[695]));
  OBUF \o_registros_OBUF[696]_inst 
       (.I(1'b0),
        .O(o_registros[696]));
  OBUF \o_registros_OBUF[697]_inst 
       (.I(1'b0),
        .O(o_registros[697]));
  OBUF \o_registros_OBUF[698]_inst 
       (.I(1'b0),
        .O(o_registros[698]));
  OBUF \o_registros_OBUF[699]_inst 
       (.I(1'b0),
        .O(o_registros[699]));
  OBUF \o_registros_OBUF[69]_inst 
       (.I(1'b0),
        .O(o_registros[69]));
  OBUF \o_registros_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_registros[6]));
  OBUF \o_registros_OBUF[700]_inst 
       (.I(1'b0),
        .O(o_registros[700]));
  OBUF \o_registros_OBUF[701]_inst 
       (.I(1'b0),
        .O(o_registros[701]));
  OBUF \o_registros_OBUF[702]_inst 
       (.I(1'b0),
        .O(o_registros[702]));
  OBUF \o_registros_OBUF[703]_inst 
       (.I(1'b0),
        .O(o_registros[703]));
  OBUF \o_registros_OBUF[704]_inst 
       (.I(1'b0),
        .O(o_registros[704]));
  OBUF \o_registros_OBUF[705]_inst 
       (.I(1'b0),
        .O(o_registros[705]));
  OBUF \o_registros_OBUF[706]_inst 
       (.I(1'b0),
        .O(o_registros[706]));
  OBUF \o_registros_OBUF[707]_inst 
       (.I(1'b0),
        .O(o_registros[707]));
  OBUF \o_registros_OBUF[708]_inst 
       (.I(1'b0),
        .O(o_registros[708]));
  OBUF \o_registros_OBUF[709]_inst 
       (.I(1'b0),
        .O(o_registros[709]));
  OBUF \o_registros_OBUF[70]_inst 
       (.I(1'b0),
        .O(o_registros[70]));
  OBUF \o_registros_OBUF[710]_inst 
       (.I(1'b0),
        .O(o_registros[710]));
  OBUF \o_registros_OBUF[711]_inst 
       (.I(1'b0),
        .O(o_registros[711]));
  OBUF \o_registros_OBUF[712]_inst 
       (.I(1'b0),
        .O(o_registros[712]));
  OBUF \o_registros_OBUF[713]_inst 
       (.I(1'b0),
        .O(o_registros[713]));
  OBUF \o_registros_OBUF[714]_inst 
       (.I(1'b0),
        .O(o_registros[714]));
  OBUF \o_registros_OBUF[715]_inst 
       (.I(1'b0),
        .O(o_registros[715]));
  OBUF \o_registros_OBUF[716]_inst 
       (.I(1'b0),
        .O(o_registros[716]));
  OBUF \o_registros_OBUF[717]_inst 
       (.I(1'b0),
        .O(o_registros[717]));
  OBUF \o_registros_OBUF[718]_inst 
       (.I(1'b0),
        .O(o_registros[718]));
  OBUF \o_registros_OBUF[719]_inst 
       (.I(1'b0),
        .O(o_registros[719]));
  OBUF \o_registros_OBUF[71]_inst 
       (.I(1'b0),
        .O(o_registros[71]));
  OBUF \o_registros_OBUF[720]_inst 
       (.I(1'b0),
        .O(o_registros[720]));
  OBUF \o_registros_OBUF[721]_inst 
       (.I(1'b0),
        .O(o_registros[721]));
  OBUF \o_registros_OBUF[722]_inst 
       (.I(1'b0),
        .O(o_registros[722]));
  OBUF \o_registros_OBUF[723]_inst 
       (.I(1'b0),
        .O(o_registros[723]));
  OBUF \o_registros_OBUF[724]_inst 
       (.I(1'b0),
        .O(o_registros[724]));
  OBUF \o_registros_OBUF[725]_inst 
       (.I(1'b0),
        .O(o_registros[725]));
  OBUF \o_registros_OBUF[726]_inst 
       (.I(1'b0),
        .O(o_registros[726]));
  OBUF \o_registros_OBUF[727]_inst 
       (.I(1'b0),
        .O(o_registros[727]));
  OBUF \o_registros_OBUF[728]_inst 
       (.I(1'b0),
        .O(o_registros[728]));
  OBUF \o_registros_OBUF[729]_inst 
       (.I(1'b0),
        .O(o_registros[729]));
  OBUF \o_registros_OBUF[72]_inst 
       (.I(1'b0),
        .O(o_registros[72]));
  OBUF \o_registros_OBUF[730]_inst 
       (.I(1'b0),
        .O(o_registros[730]));
  OBUF \o_registros_OBUF[731]_inst 
       (.I(1'b0),
        .O(o_registros[731]));
  OBUF \o_registros_OBUF[732]_inst 
       (.I(1'b0),
        .O(o_registros[732]));
  OBUF \o_registros_OBUF[733]_inst 
       (.I(1'b0),
        .O(o_registros[733]));
  OBUF \o_registros_OBUF[734]_inst 
       (.I(1'b0),
        .O(o_registros[734]));
  OBUF \o_registros_OBUF[735]_inst 
       (.I(1'b0),
        .O(o_registros[735]));
  OBUF \o_registros_OBUF[736]_inst 
       (.I(1'b0),
        .O(o_registros[736]));
  OBUF \o_registros_OBUF[737]_inst 
       (.I(1'b0),
        .O(o_registros[737]));
  OBUF \o_registros_OBUF[738]_inst 
       (.I(1'b0),
        .O(o_registros[738]));
  OBUF \o_registros_OBUF[739]_inst 
       (.I(1'b0),
        .O(o_registros[739]));
  OBUF \o_registros_OBUF[73]_inst 
       (.I(1'b0),
        .O(o_registros[73]));
  OBUF \o_registros_OBUF[740]_inst 
       (.I(1'b0),
        .O(o_registros[740]));
  OBUF \o_registros_OBUF[741]_inst 
       (.I(1'b0),
        .O(o_registros[741]));
  OBUF \o_registros_OBUF[742]_inst 
       (.I(1'b0),
        .O(o_registros[742]));
  OBUF \o_registros_OBUF[743]_inst 
       (.I(1'b0),
        .O(o_registros[743]));
  OBUF \o_registros_OBUF[744]_inst 
       (.I(1'b0),
        .O(o_registros[744]));
  OBUF \o_registros_OBUF[745]_inst 
       (.I(1'b0),
        .O(o_registros[745]));
  OBUF \o_registros_OBUF[746]_inst 
       (.I(1'b0),
        .O(o_registros[746]));
  OBUF \o_registros_OBUF[747]_inst 
       (.I(1'b0),
        .O(o_registros[747]));
  OBUF \o_registros_OBUF[748]_inst 
       (.I(1'b0),
        .O(o_registros[748]));
  OBUF \o_registros_OBUF[749]_inst 
       (.I(1'b0),
        .O(o_registros[749]));
  OBUF \o_registros_OBUF[74]_inst 
       (.I(1'b0),
        .O(o_registros[74]));
  OBUF \o_registros_OBUF[750]_inst 
       (.I(1'b0),
        .O(o_registros[750]));
  OBUF \o_registros_OBUF[751]_inst 
       (.I(1'b0),
        .O(o_registros[751]));
  OBUF \o_registros_OBUF[752]_inst 
       (.I(1'b0),
        .O(o_registros[752]));
  OBUF \o_registros_OBUF[753]_inst 
       (.I(1'b0),
        .O(o_registros[753]));
  OBUF \o_registros_OBUF[754]_inst 
       (.I(1'b0),
        .O(o_registros[754]));
  OBUF \o_registros_OBUF[755]_inst 
       (.I(1'b0),
        .O(o_registros[755]));
  OBUF \o_registros_OBUF[756]_inst 
       (.I(1'b0),
        .O(o_registros[756]));
  OBUF \o_registros_OBUF[757]_inst 
       (.I(1'b0),
        .O(o_registros[757]));
  OBUF \o_registros_OBUF[758]_inst 
       (.I(1'b0),
        .O(o_registros[758]));
  OBUF \o_registros_OBUF[759]_inst 
       (.I(1'b0),
        .O(o_registros[759]));
  OBUF \o_registros_OBUF[75]_inst 
       (.I(1'b0),
        .O(o_registros[75]));
  OBUF \o_registros_OBUF[760]_inst 
       (.I(1'b0),
        .O(o_registros[760]));
  OBUF \o_registros_OBUF[761]_inst 
       (.I(1'b0),
        .O(o_registros[761]));
  OBUF \o_registros_OBUF[762]_inst 
       (.I(1'b0),
        .O(o_registros[762]));
  OBUF \o_registros_OBUF[763]_inst 
       (.I(1'b0),
        .O(o_registros[763]));
  OBUF \o_registros_OBUF[764]_inst 
       (.I(1'b0),
        .O(o_registros[764]));
  OBUF \o_registros_OBUF[765]_inst 
       (.I(1'b0),
        .O(o_registros[765]));
  OBUF \o_registros_OBUF[766]_inst 
       (.I(1'b0),
        .O(o_registros[766]));
  OBUF \o_registros_OBUF[767]_inst 
       (.I(1'b0),
        .O(o_registros[767]));
  OBUF \o_registros_OBUF[768]_inst 
       (.I(1'b0),
        .O(o_registros[768]));
  OBUF \o_registros_OBUF[769]_inst 
       (.I(1'b0),
        .O(o_registros[769]));
  OBUF \o_registros_OBUF[76]_inst 
       (.I(1'b0),
        .O(o_registros[76]));
  OBUF \o_registros_OBUF[770]_inst 
       (.I(1'b0),
        .O(o_registros[770]));
  OBUF \o_registros_OBUF[771]_inst 
       (.I(o_registros_OBUF),
        .O(o_registros[771]));
  OBUF \o_registros_OBUF[772]_inst 
       (.I(o_registros_OBUF),
        .O(o_registros[772]));
  OBUF \o_registros_OBUF[773]_inst 
       (.I(1'b0),
        .O(o_registros[773]));
  OBUF \o_registros_OBUF[774]_inst 
       (.I(1'b0),
        .O(o_registros[774]));
  OBUF \o_registros_OBUF[775]_inst 
       (.I(1'b0),
        .O(o_registros[775]));
  OBUF \o_registros_OBUF[776]_inst 
       (.I(1'b0),
        .O(o_registros[776]));
  OBUF \o_registros_OBUF[777]_inst 
       (.I(1'b0),
        .O(o_registros[777]));
  OBUF \o_registros_OBUF[778]_inst 
       (.I(1'b0),
        .O(o_registros[778]));
  OBUF \o_registros_OBUF[779]_inst 
       (.I(1'b0),
        .O(o_registros[779]));
  OBUF \o_registros_OBUF[77]_inst 
       (.I(1'b0),
        .O(o_registros[77]));
  OBUF \o_registros_OBUF[780]_inst 
       (.I(1'b0),
        .O(o_registros[780]));
  OBUF \o_registros_OBUF[781]_inst 
       (.I(1'b0),
        .O(o_registros[781]));
  OBUF \o_registros_OBUF[782]_inst 
       (.I(1'b0),
        .O(o_registros[782]));
  OBUF \o_registros_OBUF[783]_inst 
       (.I(1'b0),
        .O(o_registros[783]));
  OBUF \o_registros_OBUF[784]_inst 
       (.I(1'b0),
        .O(o_registros[784]));
  OBUF \o_registros_OBUF[785]_inst 
       (.I(1'b0),
        .O(o_registros[785]));
  OBUF \o_registros_OBUF[786]_inst 
       (.I(1'b0),
        .O(o_registros[786]));
  OBUF \o_registros_OBUF[787]_inst 
       (.I(1'b0),
        .O(o_registros[787]));
  OBUF \o_registros_OBUF[788]_inst 
       (.I(1'b0),
        .O(o_registros[788]));
  OBUF \o_registros_OBUF[789]_inst 
       (.I(1'b0),
        .O(o_registros[789]));
  OBUF \o_registros_OBUF[78]_inst 
       (.I(1'b0),
        .O(o_registros[78]));
  OBUF \o_registros_OBUF[790]_inst 
       (.I(1'b0),
        .O(o_registros[790]));
  OBUF \o_registros_OBUF[791]_inst 
       (.I(1'b0),
        .O(o_registros[791]));
  OBUF \o_registros_OBUF[792]_inst 
       (.I(1'b0),
        .O(o_registros[792]));
  OBUF \o_registros_OBUF[793]_inst 
       (.I(1'b0),
        .O(o_registros[793]));
  OBUF \o_registros_OBUF[794]_inst 
       (.I(1'b0),
        .O(o_registros[794]));
  OBUF \o_registros_OBUF[795]_inst 
       (.I(1'b0),
        .O(o_registros[795]));
  OBUF \o_registros_OBUF[796]_inst 
       (.I(1'b0),
        .O(o_registros[796]));
  OBUF \o_registros_OBUF[797]_inst 
       (.I(1'b0),
        .O(o_registros[797]));
  OBUF \o_registros_OBUF[798]_inst 
       (.I(1'b0),
        .O(o_registros[798]));
  OBUF \o_registros_OBUF[799]_inst 
       (.I(1'b0),
        .O(o_registros[799]));
  OBUF \o_registros_OBUF[79]_inst 
       (.I(1'b0),
        .O(o_registros[79]));
  OBUF \o_registros_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_registros[7]));
  OBUF \o_registros_OBUF[800]_inst 
       (.I(1'b0),
        .O(o_registros[800]));
  OBUF \o_registros_OBUF[801]_inst 
       (.I(1'b0),
        .O(o_registros[801]));
  OBUF \o_registros_OBUF[802]_inst 
       (.I(1'b0),
        .O(o_registros[802]));
  OBUF \o_registros_OBUF[803]_inst 
       (.I(1'b0),
        .O(o_registros[803]));
  OBUF \o_registros_OBUF[804]_inst 
       (.I(1'b0),
        .O(o_registros[804]));
  OBUF \o_registros_OBUF[805]_inst 
       (.I(1'b0),
        .O(o_registros[805]));
  OBUF \o_registros_OBUF[806]_inst 
       (.I(1'b0),
        .O(o_registros[806]));
  OBUF \o_registros_OBUF[807]_inst 
       (.I(1'b0),
        .O(o_registros[807]));
  OBUF \o_registros_OBUF[808]_inst 
       (.I(1'b0),
        .O(o_registros[808]));
  OBUF \o_registros_OBUF[809]_inst 
       (.I(1'b0),
        .O(o_registros[809]));
  OBUF \o_registros_OBUF[80]_inst 
       (.I(1'b0),
        .O(o_registros[80]));
  OBUF \o_registros_OBUF[810]_inst 
       (.I(1'b0),
        .O(o_registros[810]));
  OBUF \o_registros_OBUF[811]_inst 
       (.I(1'b0),
        .O(o_registros[811]));
  OBUF \o_registros_OBUF[812]_inst 
       (.I(1'b0),
        .O(o_registros[812]));
  OBUF \o_registros_OBUF[813]_inst 
       (.I(1'b0),
        .O(o_registros[813]));
  OBUF \o_registros_OBUF[814]_inst 
       (.I(1'b0),
        .O(o_registros[814]));
  OBUF \o_registros_OBUF[815]_inst 
       (.I(1'b0),
        .O(o_registros[815]));
  OBUF \o_registros_OBUF[816]_inst 
       (.I(1'b0),
        .O(o_registros[816]));
  OBUF \o_registros_OBUF[817]_inst 
       (.I(1'b0),
        .O(o_registros[817]));
  OBUF \o_registros_OBUF[818]_inst 
       (.I(1'b0),
        .O(o_registros[818]));
  OBUF \o_registros_OBUF[819]_inst 
       (.I(1'b0),
        .O(o_registros[819]));
  OBUF \o_registros_OBUF[81]_inst 
       (.I(1'b0),
        .O(o_registros[81]));
  OBUF \o_registros_OBUF[820]_inst 
       (.I(1'b0),
        .O(o_registros[820]));
  OBUF \o_registros_OBUF[821]_inst 
       (.I(1'b0),
        .O(o_registros[821]));
  OBUF \o_registros_OBUF[822]_inst 
       (.I(1'b0),
        .O(o_registros[822]));
  OBUF \o_registros_OBUF[823]_inst 
       (.I(1'b0),
        .O(o_registros[823]));
  OBUF \o_registros_OBUF[824]_inst 
       (.I(1'b0),
        .O(o_registros[824]));
  OBUF \o_registros_OBUF[825]_inst 
       (.I(1'b0),
        .O(o_registros[825]));
  OBUF \o_registros_OBUF[826]_inst 
       (.I(1'b0),
        .O(o_registros[826]));
  OBUF \o_registros_OBUF[827]_inst 
       (.I(1'b0),
        .O(o_registros[827]));
  OBUF \o_registros_OBUF[828]_inst 
       (.I(1'b0),
        .O(o_registros[828]));
  OBUF \o_registros_OBUF[829]_inst 
       (.I(1'b0),
        .O(o_registros[829]));
  OBUF \o_registros_OBUF[82]_inst 
       (.I(1'b0),
        .O(o_registros[82]));
  OBUF \o_registros_OBUF[830]_inst 
       (.I(1'b0),
        .O(o_registros[830]));
  OBUF \o_registros_OBUF[831]_inst 
       (.I(1'b0),
        .O(o_registros[831]));
  OBUF \o_registros_OBUF[832]_inst 
       (.I(1'b0),
        .O(o_registros[832]));
  OBUF \o_registros_OBUF[833]_inst 
       (.I(1'b0),
        .O(o_registros[833]));
  OBUF \o_registros_OBUF[834]_inst 
       (.I(1'b0),
        .O(o_registros[834]));
  OBUF \o_registros_OBUF[835]_inst 
       (.I(1'b0),
        .O(o_registros[835]));
  OBUF \o_registros_OBUF[836]_inst 
       (.I(1'b0),
        .O(o_registros[836]));
  OBUF \o_registros_OBUF[837]_inst 
       (.I(1'b0),
        .O(o_registros[837]));
  OBUF \o_registros_OBUF[838]_inst 
       (.I(1'b0),
        .O(o_registros[838]));
  OBUF \o_registros_OBUF[839]_inst 
       (.I(1'b0),
        .O(o_registros[839]));
  OBUF \o_registros_OBUF[83]_inst 
       (.I(1'b0),
        .O(o_registros[83]));
  OBUF \o_registros_OBUF[840]_inst 
       (.I(1'b0),
        .O(o_registros[840]));
  OBUF \o_registros_OBUF[841]_inst 
       (.I(1'b0),
        .O(o_registros[841]));
  OBUF \o_registros_OBUF[842]_inst 
       (.I(1'b0),
        .O(o_registros[842]));
  OBUF \o_registros_OBUF[843]_inst 
       (.I(1'b0),
        .O(o_registros[843]));
  OBUF \o_registros_OBUF[844]_inst 
       (.I(1'b0),
        .O(o_registros[844]));
  OBUF \o_registros_OBUF[845]_inst 
       (.I(1'b0),
        .O(o_registros[845]));
  OBUF \o_registros_OBUF[846]_inst 
       (.I(1'b0),
        .O(o_registros[846]));
  OBUF \o_registros_OBUF[847]_inst 
       (.I(1'b0),
        .O(o_registros[847]));
  OBUF \o_registros_OBUF[848]_inst 
       (.I(1'b0),
        .O(o_registros[848]));
  OBUF \o_registros_OBUF[849]_inst 
       (.I(1'b0),
        .O(o_registros[849]));
  OBUF \o_registros_OBUF[84]_inst 
       (.I(1'b0),
        .O(o_registros[84]));
  OBUF \o_registros_OBUF[850]_inst 
       (.I(1'b0),
        .O(o_registros[850]));
  OBUF \o_registros_OBUF[851]_inst 
       (.I(1'b0),
        .O(o_registros[851]));
  OBUF \o_registros_OBUF[852]_inst 
       (.I(1'b0),
        .O(o_registros[852]));
  OBUF \o_registros_OBUF[853]_inst 
       (.I(1'b0),
        .O(o_registros[853]));
  OBUF \o_registros_OBUF[854]_inst 
       (.I(1'b0),
        .O(o_registros[854]));
  OBUF \o_registros_OBUF[855]_inst 
       (.I(1'b0),
        .O(o_registros[855]));
  OBUF \o_registros_OBUF[856]_inst 
       (.I(1'b0),
        .O(o_registros[856]));
  OBUF \o_registros_OBUF[857]_inst 
       (.I(1'b0),
        .O(o_registros[857]));
  OBUF \o_registros_OBUF[858]_inst 
       (.I(1'b0),
        .O(o_registros[858]));
  OBUF \o_registros_OBUF[859]_inst 
       (.I(1'b0),
        .O(o_registros[859]));
  OBUF \o_registros_OBUF[85]_inst 
       (.I(1'b0),
        .O(o_registros[85]));
  OBUF \o_registros_OBUF[860]_inst 
       (.I(1'b0),
        .O(o_registros[860]));
  OBUF \o_registros_OBUF[861]_inst 
       (.I(1'b0),
        .O(o_registros[861]));
  OBUF \o_registros_OBUF[862]_inst 
       (.I(1'b0),
        .O(o_registros[862]));
  OBUF \o_registros_OBUF[863]_inst 
       (.I(1'b0),
        .O(o_registros[863]));
  OBUF \o_registros_OBUF[864]_inst 
       (.I(1'b0),
        .O(o_registros[864]));
  OBUF \o_registros_OBUF[865]_inst 
       (.I(1'b0),
        .O(o_registros[865]));
  OBUF \o_registros_OBUF[866]_inst 
       (.I(1'b0),
        .O(o_registros[866]));
  OBUF \o_registros_OBUF[867]_inst 
       (.I(1'b0),
        .O(o_registros[867]));
  OBUF \o_registros_OBUF[868]_inst 
       (.I(1'b0),
        .O(o_registros[868]));
  OBUF \o_registros_OBUF[869]_inst 
       (.I(1'b0),
        .O(o_registros[869]));
  OBUF \o_registros_OBUF[86]_inst 
       (.I(1'b0),
        .O(o_registros[86]));
  OBUF \o_registros_OBUF[870]_inst 
       (.I(1'b0),
        .O(o_registros[870]));
  OBUF \o_registros_OBUF[871]_inst 
       (.I(1'b0),
        .O(o_registros[871]));
  OBUF \o_registros_OBUF[872]_inst 
       (.I(1'b0),
        .O(o_registros[872]));
  OBUF \o_registros_OBUF[873]_inst 
       (.I(1'b0),
        .O(o_registros[873]));
  OBUF \o_registros_OBUF[874]_inst 
       (.I(1'b0),
        .O(o_registros[874]));
  OBUF \o_registros_OBUF[875]_inst 
       (.I(1'b0),
        .O(o_registros[875]));
  OBUF \o_registros_OBUF[876]_inst 
       (.I(1'b0),
        .O(o_registros[876]));
  OBUF \o_registros_OBUF[877]_inst 
       (.I(1'b0),
        .O(o_registros[877]));
  OBUF \o_registros_OBUF[878]_inst 
       (.I(1'b0),
        .O(o_registros[878]));
  OBUF \o_registros_OBUF[879]_inst 
       (.I(1'b0),
        .O(o_registros[879]));
  OBUF \o_registros_OBUF[87]_inst 
       (.I(1'b0),
        .O(o_registros[87]));
  OBUF \o_registros_OBUF[880]_inst 
       (.I(1'b0),
        .O(o_registros[880]));
  OBUF \o_registros_OBUF[881]_inst 
       (.I(1'b0),
        .O(o_registros[881]));
  OBUF \o_registros_OBUF[882]_inst 
       (.I(1'b0),
        .O(o_registros[882]));
  OBUF \o_registros_OBUF[883]_inst 
       (.I(1'b0),
        .O(o_registros[883]));
  OBUF \o_registros_OBUF[884]_inst 
       (.I(1'b0),
        .O(o_registros[884]));
  OBUF \o_registros_OBUF[885]_inst 
       (.I(1'b0),
        .O(o_registros[885]));
  OBUF \o_registros_OBUF[886]_inst 
       (.I(1'b0),
        .O(o_registros[886]));
  OBUF \o_registros_OBUF[887]_inst 
       (.I(1'b0),
        .O(o_registros[887]));
  OBUF \o_registros_OBUF[888]_inst 
       (.I(1'b0),
        .O(o_registros[888]));
  OBUF \o_registros_OBUF[889]_inst 
       (.I(1'b0),
        .O(o_registros[889]));
  OBUF \o_registros_OBUF[88]_inst 
       (.I(1'b0),
        .O(o_registros[88]));
  OBUF \o_registros_OBUF[890]_inst 
       (.I(1'b0),
        .O(o_registros[890]));
  OBUF \o_registros_OBUF[891]_inst 
       (.I(1'b0),
        .O(o_registros[891]));
  OBUF \o_registros_OBUF[892]_inst 
       (.I(1'b0),
        .O(o_registros[892]));
  OBUF \o_registros_OBUF[893]_inst 
       (.I(1'b0),
        .O(o_registros[893]));
  OBUF \o_registros_OBUF[894]_inst 
       (.I(1'b0),
        .O(o_registros[894]));
  OBUF \o_registros_OBUF[895]_inst 
       (.I(1'b0),
        .O(o_registros[895]));
  OBUF \o_registros_OBUF[896]_inst 
       (.I(o_registros_OBUF),
        .O(o_registros[896]));
  OBUF \o_registros_OBUF[897]_inst 
       (.I(1'b0),
        .O(o_registros[897]));
  OBUF \o_registros_OBUF[898]_inst 
       (.I(o_registros_OBUF),
        .O(o_registros[898]));
  OBUF \o_registros_OBUF[899]_inst 
       (.I(1'b0),
        .O(o_registros[899]));
  OBUF \o_registros_OBUF[89]_inst 
       (.I(1'b0),
        .O(o_registros[89]));
  OBUF \o_registros_OBUF[8]_inst 
       (.I(1'b0),
        .O(o_registros[8]));
  OBUF \o_registros_OBUF[900]_inst 
       (.I(o_registros_OBUF),
        .O(o_registros[900]));
  OBUF \o_registros_OBUF[901]_inst 
       (.I(1'b0),
        .O(o_registros[901]));
  OBUF \o_registros_OBUF[902]_inst 
       (.I(1'b0),
        .O(o_registros[902]));
  OBUF \o_registros_OBUF[903]_inst 
       (.I(1'b0),
        .O(o_registros[903]));
  OBUF \o_registros_OBUF[904]_inst 
       (.I(1'b0),
        .O(o_registros[904]));
  OBUF \o_registros_OBUF[905]_inst 
       (.I(1'b0),
        .O(o_registros[905]));
  OBUF \o_registros_OBUF[906]_inst 
       (.I(1'b0),
        .O(o_registros[906]));
  OBUF \o_registros_OBUF[907]_inst 
       (.I(1'b0),
        .O(o_registros[907]));
  OBUF \o_registros_OBUF[908]_inst 
       (.I(1'b0),
        .O(o_registros[908]));
  OBUF \o_registros_OBUF[909]_inst 
       (.I(1'b0),
        .O(o_registros[909]));
  OBUF \o_registros_OBUF[90]_inst 
       (.I(1'b0),
        .O(o_registros[90]));
  OBUF \o_registros_OBUF[910]_inst 
       (.I(1'b0),
        .O(o_registros[910]));
  OBUF \o_registros_OBUF[911]_inst 
       (.I(1'b0),
        .O(o_registros[911]));
  OBUF \o_registros_OBUF[912]_inst 
       (.I(1'b0),
        .O(o_registros[912]));
  OBUF \o_registros_OBUF[913]_inst 
       (.I(1'b0),
        .O(o_registros[913]));
  OBUF \o_registros_OBUF[914]_inst 
       (.I(1'b0),
        .O(o_registros[914]));
  OBUF \o_registros_OBUF[915]_inst 
       (.I(1'b0),
        .O(o_registros[915]));
  OBUF \o_registros_OBUF[916]_inst 
       (.I(1'b0),
        .O(o_registros[916]));
  OBUF \o_registros_OBUF[917]_inst 
       (.I(1'b0),
        .O(o_registros[917]));
  OBUF \o_registros_OBUF[918]_inst 
       (.I(1'b0),
        .O(o_registros[918]));
  OBUF \o_registros_OBUF[919]_inst 
       (.I(1'b0),
        .O(o_registros[919]));
  OBUF \o_registros_OBUF[91]_inst 
       (.I(1'b0),
        .O(o_registros[91]));
  OBUF \o_registros_OBUF[920]_inst 
       (.I(1'b0),
        .O(o_registros[920]));
  OBUF \o_registros_OBUF[921]_inst 
       (.I(1'b0),
        .O(o_registros[921]));
  OBUF \o_registros_OBUF[922]_inst 
       (.I(1'b0),
        .O(o_registros[922]));
  OBUF \o_registros_OBUF[923]_inst 
       (.I(1'b0),
        .O(o_registros[923]));
  OBUF \o_registros_OBUF[924]_inst 
       (.I(1'b0),
        .O(o_registros[924]));
  OBUF \o_registros_OBUF[925]_inst 
       (.I(1'b0),
        .O(o_registros[925]));
  OBUF \o_registros_OBUF[926]_inst 
       (.I(1'b0),
        .O(o_registros[926]));
  OBUF \o_registros_OBUF[927]_inst 
       (.I(1'b0),
        .O(o_registros[927]));
  OBUF \o_registros_OBUF[928]_inst 
       (.I(1'b0),
        .O(o_registros[928]));
  OBUF \o_registros_OBUF[929]_inst 
       (.I(1'b0),
        .O(o_registros[929]));
  OBUF \o_registros_OBUF[92]_inst 
       (.I(1'b0),
        .O(o_registros[92]));
  OBUF \o_registros_OBUF[930]_inst 
       (.I(1'b0),
        .O(o_registros[930]));
  OBUF \o_registros_OBUF[931]_inst 
       (.I(1'b0),
        .O(o_registros[931]));
  OBUF \o_registros_OBUF[932]_inst 
       (.I(1'b0),
        .O(o_registros[932]));
  OBUF \o_registros_OBUF[933]_inst 
       (.I(1'b0),
        .O(o_registros[933]));
  OBUF \o_registros_OBUF[934]_inst 
       (.I(1'b0),
        .O(o_registros[934]));
  OBUF \o_registros_OBUF[935]_inst 
       (.I(1'b0),
        .O(o_registros[935]));
  OBUF \o_registros_OBUF[936]_inst 
       (.I(1'b0),
        .O(o_registros[936]));
  OBUF \o_registros_OBUF[937]_inst 
       (.I(1'b0),
        .O(o_registros[937]));
  OBUF \o_registros_OBUF[938]_inst 
       (.I(1'b0),
        .O(o_registros[938]));
  OBUF \o_registros_OBUF[939]_inst 
       (.I(1'b0),
        .O(o_registros[939]));
  OBUF \o_registros_OBUF[93]_inst 
       (.I(1'b0),
        .O(o_registros[93]));
  OBUF \o_registros_OBUF[940]_inst 
       (.I(1'b0),
        .O(o_registros[940]));
  OBUF \o_registros_OBUF[941]_inst 
       (.I(1'b0),
        .O(o_registros[941]));
  OBUF \o_registros_OBUF[942]_inst 
       (.I(1'b0),
        .O(o_registros[942]));
  OBUF \o_registros_OBUF[943]_inst 
       (.I(1'b0),
        .O(o_registros[943]));
  OBUF \o_registros_OBUF[944]_inst 
       (.I(1'b0),
        .O(o_registros[944]));
  OBUF \o_registros_OBUF[945]_inst 
       (.I(1'b0),
        .O(o_registros[945]));
  OBUF \o_registros_OBUF[946]_inst 
       (.I(1'b0),
        .O(o_registros[946]));
  OBUF \o_registros_OBUF[947]_inst 
       (.I(1'b0),
        .O(o_registros[947]));
  OBUF \o_registros_OBUF[948]_inst 
       (.I(1'b0),
        .O(o_registros[948]));
  OBUF \o_registros_OBUF[949]_inst 
       (.I(1'b0),
        .O(o_registros[949]));
  OBUF \o_registros_OBUF[94]_inst 
       (.I(1'b0),
        .O(o_registros[94]));
  OBUF \o_registros_OBUF[950]_inst 
       (.I(1'b0),
        .O(o_registros[950]));
  OBUF \o_registros_OBUF[951]_inst 
       (.I(1'b0),
        .O(o_registros[951]));
  OBUF \o_registros_OBUF[952]_inst 
       (.I(1'b0),
        .O(o_registros[952]));
  OBUF \o_registros_OBUF[953]_inst 
       (.I(1'b0),
        .O(o_registros[953]));
  OBUF \o_registros_OBUF[954]_inst 
       (.I(1'b0),
        .O(o_registros[954]));
  OBUF \o_registros_OBUF[955]_inst 
       (.I(1'b0),
        .O(o_registros[955]));
  OBUF \o_registros_OBUF[956]_inst 
       (.I(1'b0),
        .O(o_registros[956]));
  OBUF \o_registros_OBUF[957]_inst 
       (.I(1'b0),
        .O(o_registros[957]));
  OBUF \o_registros_OBUF[958]_inst 
       (.I(1'b0),
        .O(o_registros[958]));
  OBUF \o_registros_OBUF[959]_inst 
       (.I(1'b0),
        .O(o_registros[959]));
  OBUF \o_registros_OBUF[95]_inst 
       (.I(1'b0),
        .O(o_registros[95]));
  OBUF \o_registros_OBUF[960]_inst 
       (.I(1'b0),
        .O(o_registros[960]));
  OBUF \o_registros_OBUF[961]_inst 
       (.I(1'b0),
        .O(o_registros[961]));
  OBUF \o_registros_OBUF[962]_inst 
       (.I(1'b0),
        .O(o_registros[962]));
  OBUF \o_registros_OBUF[963]_inst 
       (.I(1'b0),
        .O(o_registros[963]));
  OBUF \o_registros_OBUF[964]_inst 
       (.I(1'b0),
        .O(o_registros[964]));
  OBUF \o_registros_OBUF[965]_inst 
       (.I(1'b0),
        .O(o_registros[965]));
  OBUF \o_registros_OBUF[966]_inst 
       (.I(1'b0),
        .O(o_registros[966]));
  OBUF \o_registros_OBUF[967]_inst 
       (.I(1'b0),
        .O(o_registros[967]));
  OBUF \o_registros_OBUF[968]_inst 
       (.I(1'b0),
        .O(o_registros[968]));
  OBUF \o_registros_OBUF[969]_inst 
       (.I(1'b0),
        .O(o_registros[969]));
  OBUF \o_registros_OBUF[96]_inst 
       (.I(1'b0),
        .O(o_registros[96]));
  OBUF \o_registros_OBUF[970]_inst 
       (.I(1'b0),
        .O(o_registros[970]));
  OBUF \o_registros_OBUF[971]_inst 
       (.I(1'b0),
        .O(o_registros[971]));
  OBUF \o_registros_OBUF[972]_inst 
       (.I(1'b0),
        .O(o_registros[972]));
  OBUF \o_registros_OBUF[973]_inst 
       (.I(1'b0),
        .O(o_registros[973]));
  OBUF \o_registros_OBUF[974]_inst 
       (.I(1'b0),
        .O(o_registros[974]));
  OBUF \o_registros_OBUF[975]_inst 
       (.I(1'b0),
        .O(o_registros[975]));
  OBUF \o_registros_OBUF[976]_inst 
       (.I(1'b0),
        .O(o_registros[976]));
  OBUF \o_registros_OBUF[977]_inst 
       (.I(1'b0),
        .O(o_registros[977]));
  OBUF \o_registros_OBUF[978]_inst 
       (.I(1'b0),
        .O(o_registros[978]));
  OBUF \o_registros_OBUF[979]_inst 
       (.I(1'b0),
        .O(o_registros[979]));
  OBUF \o_registros_OBUF[97]_inst 
       (.I(1'b0),
        .O(o_registros[97]));
  OBUF \o_registros_OBUF[980]_inst 
       (.I(1'b0),
        .O(o_registros[980]));
  OBUF \o_registros_OBUF[981]_inst 
       (.I(1'b0),
        .O(o_registros[981]));
  OBUF \o_registros_OBUF[982]_inst 
       (.I(1'b0),
        .O(o_registros[982]));
  OBUF \o_registros_OBUF[983]_inst 
       (.I(1'b0),
        .O(o_registros[983]));
  OBUF \o_registros_OBUF[984]_inst 
       (.I(1'b0),
        .O(o_registros[984]));
  OBUF \o_registros_OBUF[985]_inst 
       (.I(1'b0),
        .O(o_registros[985]));
  OBUF \o_registros_OBUF[986]_inst 
       (.I(1'b0),
        .O(o_registros[986]));
  OBUF \o_registros_OBUF[987]_inst 
       (.I(1'b0),
        .O(o_registros[987]));
  OBUF \o_registros_OBUF[988]_inst 
       (.I(1'b0),
        .O(o_registros[988]));
  OBUF \o_registros_OBUF[989]_inst 
       (.I(1'b0),
        .O(o_registros[989]));
  OBUF \o_registros_OBUF[98]_inst 
       (.I(1'b0),
        .O(o_registros[98]));
  OBUF \o_registros_OBUF[990]_inst 
       (.I(1'b0),
        .O(o_registros[990]));
  OBUF \o_registros_OBUF[991]_inst 
       (.I(1'b0),
        .O(o_registros[991]));
  OBUF \o_registros_OBUF[992]_inst 
       (.I(1'b0),
        .O(o_registros[992]));
  OBUF \o_registros_OBUF[993]_inst 
       (.I(1'b0),
        .O(o_registros[993]));
  OBUF \o_registros_OBUF[994]_inst 
       (.I(1'b0),
        .O(o_registros[994]));
  OBUF \o_registros_OBUF[995]_inst 
       (.I(1'b0),
        .O(o_registros[995]));
  OBUF \o_registros_OBUF[996]_inst 
       (.I(1'b0),
        .O(o_registros[996]));
  OBUF \o_registros_OBUF[997]_inst 
       (.I(1'b0),
        .O(o_registros[997]));
  OBUF \o_registros_OBUF[998]_inst 
       (.I(1'b0),
        .O(o_registros[998]));
  OBUF \o_registros_OBUF[999]_inst 
       (.I(1'b0),
        .O(o_registros[999]));
  OBUF \o_registros_OBUF[99]_inst 
       (.I(1'b0),
        .O(o_registros[99]));
  OBUF \o_registros_OBUF[9]_inst 
       (.I(1'b0),
        .O(o_registros[9]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[13]_i_1 
       (.CI(\pc_reg[9]_i_1_n_0 ),
        .CO({\pc_reg[13]_i_1_n_0 ,\pc_reg[13]_i_1_n_1 ,\pc_reg[13]_i_1_n_2 ,\pc_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[13]_i_1_n_4 ,\pc_reg[13]_i_1_n_5 ,\pc_reg[13]_i_1_n_6 ,\pc_reg[13]_i_1_n_7 }),
        .S(\u_fetch/pc_reg__0 [16:13]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[17]_i_1 
       (.CI(\pc_reg[13]_i_1_n_0 ),
        .CO({\pc_reg[17]_i_1_n_0 ,\pc_reg[17]_i_1_n_1 ,\pc_reg[17]_i_1_n_2 ,\pc_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[17]_i_1_n_4 ,\pc_reg[17]_i_1_n_5 ,\pc_reg[17]_i_1_n_6 ,\pc_reg[17]_i_1_n_7 }),
        .S(\u_fetch/pc_reg__0 [20:17]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\pc_reg[1]_i_1_n_0 ,\pc_reg[1]_i_1_n_1 ,\pc_reg[1]_i_1_n_2 ,\pc_reg[1]_i_1_n_3 }),
        .CYINIT(\u_fetch/pc_reg ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[1]_i_1_n_4 ,\pc_reg[1]_i_1_n_5 ,\pc_reg[1]_i_1_n_6 ,\pc_reg[1]_i_1_n_7 }),
        .S(\u_fetch/pc_reg__0 [4:1]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[21]_i_1 
       (.CI(\pc_reg[17]_i_1_n_0 ),
        .CO({\pc_reg[21]_i_1_n_0 ,\pc_reg[21]_i_1_n_1 ,\pc_reg[21]_i_1_n_2 ,\pc_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[21]_i_1_n_4 ,\pc_reg[21]_i_1_n_5 ,\pc_reg[21]_i_1_n_6 ,\pc_reg[21]_i_1_n_7 }),
        .S(\u_fetch/pc_reg__0 [24:21]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[25]_i_1 
       (.CI(\pc_reg[21]_i_1_n_0 ),
        .CO({\pc_reg[25]_i_1_n_0 ,\pc_reg[25]_i_1_n_1 ,\pc_reg[25]_i_1_n_2 ,\pc_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[25]_i_1_n_4 ,\pc_reg[25]_i_1_n_5 ,\pc_reg[25]_i_1_n_6 ,\pc_reg[25]_i_1_n_7 }),
        .S(\u_fetch/pc_reg__0 [28:25]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[29]_i_1 
       (.CI(\pc_reg[25]_i_1_n_0 ),
        .CO({\NLW_pc_reg[29]_i_1_CO_UNCONNECTED [3:2],\pc_reg[29]_i_1_n_2 ,\pc_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_reg[29]_i_1_O_UNCONNECTED [3],\pc_reg[29]_i_1_n_5 ,\pc_reg[29]_i_1_n_6 ,\pc_reg[29]_i_1_n_7 }),
        .S({1'b0,\u_fetch/pc_reg__0 [31:29]}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[5]_i_1 
       (.CI(\pc_reg[1]_i_1_n_0 ),
        .CO({\pc_reg[5]_i_1_n_0 ,\pc_reg[5]_i_1_n_1 ,\pc_reg[5]_i_1_n_2 ,\pc_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[5]_i_1_n_4 ,\pc_reg[5]_i_1_n_5 ,\pc_reg[5]_i_1_n_6 ,\pc_reg[5]_i_1_n_7 }),
        .S(\u_fetch/pc_reg__0 [8:5]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[9]_i_1 
       (.CI(\pc_reg[5]_i_1_n_0 ),
        .CO({\pc_reg[9]_i_1_n_0 ,\pc_reg[9]_i_1_n_1 ,\pc_reg[9]_i_1_n_2 ,\pc_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[9]_i_1_n_4 ,\pc_reg[9]_i_1_n_5 ,\pc_reg[9]_i_1_n_6 ,\pc_reg[9]_i_1_n_7 }),
        .S(\u_fetch/pc_reg__0 [12:9]));
  FDSE #(
    .INIT(1'b1)) 
    \u_clk_cntr/count_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(o_ciclos_OBUF[0]),
        .S(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(o_ciclos_OBUF[10]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(o_ciclos_OBUF[11]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(o_ciclos_OBUF[12]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(o_ciclos_OBUF[13]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(o_ciclos_OBUF[14]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(o_ciclos_OBUF[15]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(o_ciclos_OBUF[16]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(o_ciclos_OBUF[17]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[18] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(o_ciclos_OBUF[18]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[19] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(o_ciclos_OBUF[19]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(o_ciclos_OBUF[1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[20] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(o_ciclos_OBUF[20]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[21] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(o_ciclos_OBUF[21]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[22] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(o_ciclos_OBUF[22]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[23] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(o_ciclos_OBUF[23]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[24] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(o_ciclos_OBUF[24]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[25] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(o_ciclos_OBUF[25]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[26] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(o_ciclos_OBUF[26]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[27] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(o_ciclos_OBUF[27]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[28] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(o_ciclos_OBUF[28]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[29] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(o_ciclos_OBUF[29]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(o_ciclos_OBUF[2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[30] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(o_ciclos_OBUF[30]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[31] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(o_ciclos_OBUF[31]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(o_ciclos_OBUF[3]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(o_ciclos_OBUF[4]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(o_ciclos_OBUF[5]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(o_ciclos_OBUF[6]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(o_ciclos_OBUF[7]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(o_ciclos_OBUF[8]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_clk_cntr/count_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\u_clk_cntr/count ),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(o_ciclos_OBUF[9]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \u_decode/u_register/registros_reg[28][4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b0),
        .D(1'b0),
        .Q(o_registros_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[0]),
        .Q(pc_4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[10]),
        .Q(pc_4[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[11]),
        .Q(pc_4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[12]),
        .Q(pc_4[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[13]),
        .Q(pc_4[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[14]),
        .Q(pc_4[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[15]),
        .Q(pc_4[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[16]),
        .Q(pc_4[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[17]),
        .Q(pc_4[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[18] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[18]),
        .Q(pc_4[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[19] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[19]),
        .Q(pc_4[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[1]),
        .Q(pc_4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[20] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[20]),
        .Q(pc_4[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[21] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[21]),
        .Q(pc_4[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[22] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[22]),
        .Q(pc_4[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[23] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[23]),
        .Q(pc_4[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[24] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[24]),
        .Q(pc_4[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[25] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[25]),
        .Q(pc_4[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[26] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[26]),
        .Q(pc_4[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[27] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[27]),
        .Q(pc_4[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[28] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[28]),
        .Q(pc_4[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[29] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[29]),
        .Q(pc_4[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[2]),
        .Q(pc_4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[30] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[30]),
        .Q(pc_4[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[31] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[31]),
        .Q(pc_4[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[3]),
        .Q(pc_4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[4]),
        .Q(pc_4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[5]),
        .Q(pc_4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[6]),
        .Q(pc_4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[7]),
        .Q(pc_4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[8]),
        .Q(pc_4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_fetch/o_pc_4_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[9]),
        .Q(pc_4[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(pc0[0]),
        .Q(\u_fetch/pc_reg ),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[9]_i_1_n_6 ),
        .Q(\u_fetch/pc_reg__0 [10]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[9]_i_1_n_5 ),
        .Q(\u_fetch/pc_reg__0 [11]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[9]_i_1_n_4 ),
        .Q(\u_fetch/pc_reg__0 [12]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[13]_i_1_n_7 ),
        .Q(\u_fetch/pc_reg__0 [13]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[13]_i_1_n_6 ),
        .Q(\u_fetch/pc_reg__0 [14]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[13]_i_1_n_5 ),
        .Q(\u_fetch/pc_reg__0 [15]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[13]_i_1_n_4 ),
        .Q(\u_fetch/pc_reg__0 [16]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[17]_i_1_n_7 ),
        .Q(\u_fetch/pc_reg__0 [17]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[18] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[17]_i_1_n_6 ),
        .Q(\u_fetch/pc_reg__0 [18]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[19] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[17]_i_1_n_5 ),
        .Q(\u_fetch/pc_reg__0 [19]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[1]_i_1_n_7 ),
        .Q(\u_fetch/pc_reg__0 [1]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[20] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[17]_i_1_n_4 ),
        .Q(\u_fetch/pc_reg__0 [20]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[21] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[21]_i_1_n_7 ),
        .Q(\u_fetch/pc_reg__0 [21]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[22] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[21]_i_1_n_6 ),
        .Q(\u_fetch/pc_reg__0 [22]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[23] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[21]_i_1_n_5 ),
        .Q(\u_fetch/pc_reg__0 [23]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[24] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[21]_i_1_n_4 ),
        .Q(\u_fetch/pc_reg__0 [24]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[25] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[25]_i_1_n_7 ),
        .Q(\u_fetch/pc_reg__0 [25]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[26] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[25]_i_1_n_6 ),
        .Q(\u_fetch/pc_reg__0 [26]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[27] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[25]_i_1_n_5 ),
        .Q(\u_fetch/pc_reg__0 [27]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[28] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[25]_i_1_n_4 ),
        .Q(\u_fetch/pc_reg__0 [28]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[29] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[29]_i_1_n_7 ),
        .Q(\u_fetch/pc_reg__0 [29]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[1]_i_1_n_6 ),
        .Q(\u_fetch/pc_reg__0 [2]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[30] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[29]_i_1_n_6 ),
        .Q(\u_fetch/pc_reg__0 [30]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[31] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[29]_i_1_n_5 ),
        .Q(\u_fetch/pc_reg__0 [31]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[1]_i_1_n_5 ),
        .Q(\u_fetch/pc_reg__0 [3]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[1]_i_1_n_4 ),
        .Q(\u_fetch/pc_reg__0 [4]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[5]_i_1_n_7 ),
        .Q(\u_fetch/pc_reg__0 [5]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[5]_i_1_n_6 ),
        .Q(\u_fetch/pc_reg__0 [6]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[5]_i_1_n_5 ),
        .Q(\u_fetch/pc_reg__0 [7]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[5]_i_1_n_4 ),
        .Q(\u_fetch/pc_reg__0 [8]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \u_fetch/pc_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\pc_reg[9]_i_1_n_7 ),
        .Q(\u_fetch/pc_reg__0 [9]),
        .R(i_reset_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_mem/o_read_data_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\u_mem/read_data [0]),
        .Q(o_data_memory_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \u_mem/o_read_data_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_pc_4[31]_i_1_n_0 ),
        .D(\u_mem/read_data [1]),
        .Q(o_data_memory_OBUF[1]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_mem/u_data_mem1/ram_data_reg[0] 
       (.CLR(1'b0),
        .D(1'b1),
        .G(1'b0),
        .GE(1'b1),
        .Q(\u_mem/read_data [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \u_mem/u_data_mem1/ram_data_reg[1] 
       (.CLR(1'b0),
        .D(1'b1),
        .G(1'b0),
        .GE(1'b1),
        .Q(\u_mem/read_data [1]));
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
