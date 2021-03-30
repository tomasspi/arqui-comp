`timescale 1ns / 1ps

module top_pipeline
(
    input wire i_clk, i_reset, i_valid
);

    reg  [31:0] pc_salto;
    wire [31:0] pc_4;
    wire [31:0] pc_4_d;
    wire [31:0] instruccion;
    wire [4:0]  rs; //(rs)
    wire [4:0]  rt; //(rt)
    wire [4:0]  rd; //(rd)
    wire [25:0] instr_index;
    wire [5:0]  opcode;
    wire [5:0]  opcode_e;
    wire [31:0] extended;
    wire [4:0]  write_reg;	
    wire [31:0] write_data;
    wire [31:0] pc_branch;
    wire [31:0] read_data_1;
    wire [31:0] read_data_2;
    wire [31:0] read_data_2_e;
    reg  [31:0] datoB;
    wire [4:0]  rt_rd;
    wire [4:0]  rt_rd_m;
    wire [31:0] aluResult;
    wire [31:0] alu_result;
    wire        zero;
    wire [31:0] data_memory;
    wire [31:0] count;
    
    wire [2:0] aluop;
    wire       alusrc;
    wire       regdst;
    wire       branch;
    wire       memrd;
    wire       memwr;
    wire       memtoreg;
    wire       regwr;
    wire       jump;
    wire       flush;
    wire       pc_src;
    
    wire branch_e;
//    wire jump_e;
    wire memrd_e;
    wire memwr_e;
    wire memtoreg_e;
    wire regwr_e;
    wire memtoreg_m;
    wire regwr_m;
    wire memtoreg_w;
    
    wire halt;
    wire halt_f;
    wire halt_d;
    wire halt_e;
    wire halt_m;
    wire stop;
    wire stall;
    
    wire [1:0] muxA;
    wire [1:0] muxB;
    
    always@(*)begin
        if(i_valid)
        begin
            if(pc_src)
                pc_salto <= pc_branch;
            else if(jump)
                pc_salto <= {pc_4[31:26], instr_index};             
        end
    end 
    
    
    //FETCH
    fetch u_fetch
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_pc_salto(pc_salto), .i_pc_src(flush), .i_halt(halt), .i_stall(stall),
        .o_pc_4(pc_4), .o_instruccion(instruccion), .o_halt(halt_f)
    );
    
    //DECODE
    decode u_decode
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid), .i_halt(halt_f),
        .i_instruccion(instruccion), .i_pc_4(pc_4), .i_write_data(write_data),
        .i_write_reg(write_reg), .i_reg_write(regwr_w), .i_mem_read_idex(memrd),
        .i_rt_idex(rt),
        .o_alu_op(aluop), .o_alu_src(alusrc), .o_reg_dst(regdst), .o_branch(branch), 
        .o_jump(jump), .o_mem_read(memrd), .o_mem_write(memwr), .o_mem_to_reg(memtoreg),
        .o_reg_write(regwr), .o_halt(halt_d), 
        .o_pc_4(pc_4_d), .o_read_data_1(read_data_1), .o_read_data_2(read_data_2), 
        .o_extended(extended), .o_instr_index(instr_index),
        .o_rs(rs), .o_rd(rd), .o_rt(rt), .o_opcode(opcode), .o_stall(stall), .o_flush(flush)
    );
    
    //EXECUTE
    execute u_exe
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid), .i_halt(halt_d),
        .i_alu_op(aluop), .i_alu_src(alusrc), .i_reg_dst(regdst), .i_branch(branch), 
        .i_mem_read(memrd), .i_mem_write(memwr), .i_mem_to_reg(memtoreg), .i_jump(jump),
        .i_reg_write(regwr), .i_pc_4(pc_4_d), .i_read_data_1(read_data_1), 
        .i_read_data_2(read_data_2), .i_extended(extended), .i_opcode(opcode),
        .i_alu_result(aluResult), .i_data_memory(write_data), 
        .i_rd(rd), .i_rt(rt), .i_mux_A(muxA), .i_mux_B(muxB),
        .o_branch(branch_e), .o_mem_read(memrd_e), .o_mem_write(memwr_e), 
        .o_mem_to_reg(memtoreg_e), .o_reg_write(regwr_e), .o_pc_branch(pc_branch), 
        .o_alu_result(aluResult), .o_halt(halt_e), .o_opcode(opcode_e),
        .o_read_data_2(read_data_2_e), .o_rt_rd(rt_rd), .o_zero(zero)
    );
    
    //MEMORY
    memory u_mem
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid), .i_halt(halt_e),
        .i_branch(branch_e), .i_mem_read(memrd_e), 
        .i_mem_write(memwr_e), .i_mem_to_reg(memtoreg_e), .i_reg_write(regwr_e), 
        .i_opcode(opcode_e), .i_pc_branch(pc_branch), .i_zero(zero), 
        .i_alu_result(aluResult), .i_read_data_2(read_data_2_e), .i_rt_rd(rt_rd), 
        .o_mem_to_reg(memtoreg_m), .o_reg_write(regwr_m), .o_read_data(data_memory), 
        .o_alu_result(alu_result), .o_rt_rd(rt_rd_m), .o_pc_src(pc_src), .o_halt(halt_m)
    );
    
    //WRITEBACK
    writeback u_wb
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid), .i_halt(halt_m),
        .i_mem_to_reg(memtoreg_m), .i_reg_write(regwr_m), .i_read_data(data_memory), 
        .i_alu_result(alu_result), .i_rd_rt(rt_rd_m), .o_stop(stop),
        .o_mem_to_reg(memtoreg_w), .o_reg_write(regwr_w), .o_write_data(write_data),
        .o_rd_rt(write_reg)
    );
    
    //Contador de ciclos
    clk_cntr u_clk_cntr
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid), 
        .i_instruccion(instruccion), .i_stop(stop),
        .o_halt(halt), .o_count(count) 
    );
    
    //Fowarding Unit
    fowarding_unit u_fw
    (
        .i_rs_idex(rs), .i_rt_idex(rt), .i_rd_exmem(rt_rd), 
        .i_rd_memwb(rt_rd_m), .i_reg_write_exmem(regwr_e), .i_reg_write_memwb(regwr_m), 
        .o_mux_A(muxA), .o_mux_B(muxB)
    );
endmodule
