`timescale 1ns / 1ps

module top_pipeline
(
    input wire i_clk, i_reset, i_valid
);

    reg  [31:0] pc_salto;
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
    wire       pc_src;
    
//    assign rs = instruccion[25:21];
//    assign rt = instruccion[20:16];
//    assign rd = instruccion[15:11];
//    assign offset = instruccion[15:0];
//    assign instr_index = instruccion[25:0];
    
    assign pc_src = branch && zero;
    
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
    
    /*calcula la direccion de salto
      condicional o no condicional */
    always@(*) begin        
        if(i_valid)
        begin
           if(branch)
                pc_salto <= pc_4 + (extended << 2);
           else //jump
                pc_salto <= {pc_4[31:26], (instr_index << 2)};
        end 
    end
    
    
    //FETCH
    fetch u_fetch
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_pc_salto(pc_salto), .i_pc_src(pc_src),
        .o_pc_4(pc_4), .o_instruccion(instruccion)
    );
    
    //DECODE
    decode u_decode
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_instruccion(instruccion), .i_pc_4(pc_4), .i_write_data(write_data),
        .o_alu_op(aluop), .o_alu_src(alusrc), .o_reg_dst(regdst), .o_branch(branch), 
        .o_jump(jump), .o_mem_read(memrd), .o_mem_write(memwr), .o_mem_to_reg(memtoreg),
        .o_reg_write(regwr),
        .o_pc_4(pc_4), .o_read_data_1(read_data_1), .o_read_data_2(read_data_2), 
        .o_extended(extended), 
        .o_rs(rs), .o_rd(rd), .o_rt(rt), .o_opcode(opcode)   
    );
    
    alu u_alu1
    (
        .i_dato_A(read_data_1), .i_dato_B(datoB), .i_alu_ctrl(aluctrl),
        .o_alu_result(aluResult), .o_alu_zero(zero)
    );
    
    alu_ctrl u_alu_ctrl1
    (
        .i_funcion(opcode), .i_alu_op(aluop),
        .o_alu_ctrl(aluctrl)
    );
    
//    registers u_register1
//    (
//        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
//        .i_read_reg_1(rs), .i_read_reg_2(rt), 
//        .i_write_reg(write_reg), .i_write_data(write_data), .i_reg_write(regwr),
//        .o_read_data_1(read_data_1), .o_read_data_2(read_data_2)
//    );
    
//    sign_extend u_sign_ex1
//    (
//        .i_offset(offset),
//        .o_extended(extended)
//    );
    
//    control_unit u_ctrl1
//    (
//        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
//        .i_instruccion(instruccion),
//        .o_alu_op(aluop), .o_alu_src(alusrc), .o_reg_dst(regdst),
//        .o_branch(branch), .o_mem_read(memrd), .o_mem_write(memwr),
//        .o_mem_to_reg(memtoreg), .o_reg_write(regwr),
//        .o_jump(jump),
//        .o_opcode(opcode)
//    );
    
        data_memory u_data_mem1
    (
        .i_clk(i_clk), .i_valid(i_valid), .i_address(aluResult),
        .i_write_data(read_data_2), .i_read_enable(memrd), .i_write_enable(memwr),
        .o_read_data(data_memory)
    );
endmodule
