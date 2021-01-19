`timescale 1ns / 1ps

module bip_i
(
    input         i_clk, i_reset,
    input         i_valid,
    input  [15:0] i_data_memory,  // entrada de data memory (DM)
    input  [15:0] i_instruction,  // entrada de program memory (PM)
    output [10:0] o_pc,           // program counter (entrada a 'addr' de PM)
    output        o_write_ram,
    output        o_read_ram,
    output [10:0] o_data_addr,    // direccion de DM para guardar el dato
    output [15:0] o_data_memory   // dato a guardar en DM
);
    
    wire [10:0] operando;
    wire [1:0]  sel_a;
    wire        sel_b;
    wire        write_acc;
    wire        operacion;
    
    // Instancia modulos
    // Control
    control u_control_blk
    (
        .i_clk(i_clk), 
        .i_reset(i_reset),
        .i_valid(i_valid),
        .i_instruction(i_instruction), 
        .o_operand(operando), 
        .o_sel_a(sel_a),
        .o_sel_b(sel_b), 
        .o_write_acc(write_acc),
        .o_operacion(operacion), 
        .o_write_ram(o_write_ram),
        .o_read_ram(o_read_ram), 
        .o_addr(o_pc)
    ); 
    
    // Datapath
    datapath u_datapath
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_sel_a(sel_a),
        .i_sel_b(sel_b),
        .i_write_acc(write_acc),
        .i_operacion(operacion),
        .i_operando(operando),
        .i_memory_data(i_data_memory),
        .o_data_addr(o_data_addr),
        .o_memory_data(o_data_memory)            
    );
endmodule
