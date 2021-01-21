`timescale 1ns / 1ps

module top_mips_np
(
    input wire i_clk, i_reset, i_valid
);

    reg [31:0] new_pc_addr;
    wire [31:0] pc;
    wire [31:0] instruccion;
    reg [5:0]  reg1; //(rs)
    reg [5:0]  reg2; //(rt)
    reg [5:0]  reg3; //(rd)
    wire [15:0] offset;
    wire [5:0]  opcode;
    wire [31:0] extended;
    reg	[5:0]  write_reg;	
    reg	[31:0] write_data;
    wire [31:0] read_data_1;
    wire [31:0] read_data_2;
    reg [31:0] datoB;
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
    
    always@(posedge i_clk)begin:fetch
        reg1    = instruccion[25:21]; //(rs)
        reg2    = instruccion[20:16]; //(rt)
        reg3    = instruccion[15:11]; //(rd)    
    end
    
    assign offset  = instruccion[15:0];
    assign PCSrc = branch && zero;
    
    //MUX 1: decide el valor del PC
    always@(posedge i_clk) begin        
        if(PCSrc)
            new_pc_addr <= pc + 4 + (extended << 2);
        else
            new_pc_addr <= pc + 4;
    end
    
    //MUX 2 decide el valor de i_write_reg (si es rt o rd)
    always@(posedge i_clk) begin
        if(regdst)
            write_reg <= reg3;
        else
            write_reg <= reg2;
    end
    
    //MUX 3 decide el valor de entrada a la ALU
    always@(posedge i_clk) begin
        if(alusrc)
            datoB <= extended;
        else
            datoB <= reg2;
    end
    
    //MUX 4 decide el valor a escribir en el registro
    always@(posedge i_clk) begin
        if(memtoreg)
            write_data <= data_memory;
        else
            write_data <= aluResult;
    end
    
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
        .i_read_reg_1(reg1), .i_read_reg_2(reg2), 
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