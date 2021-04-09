module top_mips_np
(
    input wire i_clk, i_reset, i_valid
);

    reg  [31:0] new_pc_addr;
    reg  [31:0] pc_branch;
    //wire [31:0] wire_branch;
    wire [31:0] pc;
    wire [31:0] pc_4;
    wire [31:0] instruccion;
    wire [4:0]  rs; //(rs)
    wire [4:0]  rt; //(rt)
    wire [4:0]  rd; //(rd)
    wire [25:0] instr_index;
    wire [15:0] offset;
    wire [5:0]  opcode;
    wire [31:0] extended;
    reg	 [4:0]  write_reg;	
    reg	 [31:0] write_data;
    wire [31:0] read_data_1;
    wire [31:0] read_data_2;
    reg  [31:0] datoB;
    wire [31:0] aluResult;
    wire        zero;
    wire [31:0] data_memory;
    
    wire [3:0] aluctrl;
    wire [2:0] aluop;
    wire       alusrc;
    wire       regdst;
    wire       branch;
    wire       memrd;
    wire       memwr;
    wire       memtoreg;
    wire       regwr;
    wire       jump;
    wire       PCSrc;
    
    
    //assign wire_branch = pc_branch;
    
    assign rs          = instruccion[25:21];
    assign rt          = instruccion[20:16];
    assign rd          = instruccion[15:11];
    assign offset      = instruccion[15:0];
    assign instr_index = instruccion[25:0];
    
    
    assign PCSrc  = branch && zero;
    
    //MUX 1: decide el valor del PC
    always@(*) begin        
        if(i_valid)
        begin
            if(PCSrc)
                pc_branch <= pc+4 + (extended << 2);
            else
                pc_branch <= pc_4;
        end 
    end
    
    //MUX 5: selecciona si es el jump
    always@(*) begin        
        if(i_valid)
        begin
            if(jump) //pc+4[31:25]+offset<<2
                new_pc_addr <= {pc[31:26], (instr_index << 2)};
            else
                new_pc_addr <= pc_branch;
        end 
    end
    
    //MUX 2 decide el valor de i_write_reg (si es rt o rd)
    always@(*) begin
        if(i_valid)
        begin
            if(regdst)
                write_reg <= rd;
            else
                write_reg <= rt;
        end
    end
    
    //MUX 3 decide el valor de entrada a la ALU
    always@(*) begin
        if(i_valid)
        begin
            if(alusrc)
                datoB <= extended;
            else
                datoB <= read_data_2; 
        end
    end
    
    //MUX 4 decide el valor a escribir en el registro
    always@(*) begin
        if(i_valid)
        begin
            if(memtoreg)
                write_data <= data_memory;
            else
                write_data <= aluResult;
        end
    end
    
    //----------------------------------------------------------------------------------//
    
    //FETCH-DECODE
    fetch u_fetch
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_pc_salto(new_pc_addr), .i_pc_src(PCSrc),
        .o_pc_4(pc_4), .o_offset(offset), .o_instr_index(instr_index),
        .o_rs(rs), .o_rd(rd), .o_rt(rt) 
    );
    
//    //DECODE-EXECUTION
//    id_ex u_de
//    (
//        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
//        .i_alu_op(aluop), .i_alu_src(alu_src), .i_reg_dst(reg_dst), .i_branch(branch), 
//        .i_jump(jump), .i_mem_read(mem_read), .i_mem_write(mem_write), 
//        .i_mem_to_reg(mem_to_reg), .i_reg_write(reg_write), .i_pc_4(pc_4), 
//        .i_read_data_1(read_data_1), .i_read_data_2(read_data_2), 
//        .i_extended(extended), .i_rs(rs), .i_rd(rd), .i_rt(rt), 
//        .o_alu_op(aluop), .o_alu_src(alu_src), .o_reg_dst(reg_dst), .o_branch(branch), 
//        .o_jump(jump), .o_mem_read(mem_read), .o_mem_write(mem_write), 
//        .o_mem_to_reg(mem_to_reg), .o_reg_write(reg_write), .o_pc_4(), 
//        .o_read_data_1(read_data_1), .o_read_data_2(read_data_2), 
//        .o_extended(extended), .o_rs(rs), .o_rd(rd), .o_rt(rt)
//    );
    
//    //EXECUTION-MEMORY
//    ex_mem u_em
//    (
//        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
//        .i_branch(branch), .i_jump(jump), .i_mem_read(mem_read), .i_mem_write(mem_write), 
//        .i_mem_to_reg(mem_to_red), .i_reg_write(reg_write), .i_pc_branch(wire_branch), 
//        .i_alu_result(aluResult), .i_read_data_2(read_data_2), .i_rt(rt), .i_rd(rd), 
//        .i_zero(zero), .o_branch(branch), .o_jump(jump), .o_mem_read(mem_read), 
//        .o_mem_write(mem_write), .o_mem_to_reg(mem_to_reg), .o_reg_write(reg_write), 
//        .o_pc_branch(wire_branch), .o_alu_result(aluResult), 
//        .o_read_data_2(read_data_2), .o_rt(rt), .o_rd(rd), .o_zero(zero) 
//    );
    
//    //WRITEBACK
//    wb u_wb
//    (
//        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
//        .i_mem_to_reg(mem_to_reg), .i_reg_write(reg_write), .i_read_data(data_memory), 
//        .i_alu_result(aluResult), .i_rd(rd), .i_rt(rt), 
//        .o_mem_to_reg(mem_to_reg), .o_reg_write(reg_write), .o_read_data(data_memory), 
//        .o_alu_result(aluResult), .o_rd(rd), .o_rt(rt) 
//    );
    
    //----------------------------------------------------------------------------------//
    
    alu u_alu
    (
        .i_dato_A(read_data_1), .i_dato_B(datoB), .i_alu_ctrl(aluctrl),
        .o_alu_result(aluResult), .o_alu_zero(zero)
    );
    
    alu_ctrl u_alu_ctrl
    (
        .i_funcion(opcode), .i_alu_op(aluop),
        .o_alu_ctrl(aluctrl)
    );
    
    program_counter u_pc
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid), .i_address(new_pc_addr),
        .o_pc(pc)
    );
    
    registers u_register
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_read_reg_1(rs), .i_read_reg_2(rt), 
        .i_write_reg(write_reg), .i_write_data(write_data), .i_reg_write(regwr),
        .o_read_data_1(read_data_1), .o_read_data_2(read_data_2)
    );
    
    sign_extend u_sign_ex
    (
        .i_offset(offset),
        .o_extended(extended)
    );
    
    control_unit u_ctrl
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_instruccion(instruccion),
        .o_alu_op(aluop), .o_alu_src(alusrc), .o_reg_dst(regdst),
        .o_branch(branch), .o_mem_read(memrd), .o_mem_write(memwr),
        .o_mem_to_reg(memtoreg), .o_reg_write(regwr),
        .o_jump(jump),
        .o_opcode(opcode)
    );
    
    instruction_memory u_i_mem
    (
        .i_clk(i_clk), .i_valid(i_valid), .i_addr(pc),
        .o_instruccion(instruccion)
    );
    
    data_memory u_data_mem
    (
        .i_clk(i_clk), .i_valid(i_valid), .i_address(aluResult),
        .i_write_data(read_data_2), .i_read_enable(memrd), .i_write_enable(memwr),
        .o_read_data(data_memory)
    );
endmodule