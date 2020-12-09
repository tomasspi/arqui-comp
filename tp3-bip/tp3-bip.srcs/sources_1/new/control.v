`timescale 1ns / 1ps

module control
(
    input  wire        i_clk,
    input  wire        i_reset,
    input  wire        i_valid,
    input  wire [15:0] i_instruction,
    
    output wire [10:0] o_operand,
    output wire [1:0]  o_sel_a,
    output wire        o_sel_b,
    output wire        o_write_acc,    
    output wire        o_operacion,
    output wire        o_write_ram,
    output wire        o_read_ram,
    output wire [10:0] o_addr
);
 
 reg  [10:0]    pc;
 wire           write_pc;
 wire [4:0]     opcode;
 
 assign opcode    = i_instruction[15:11]; // = [15-:5]
 assign o_operand = i_instruction[10:0];
 assign o_addr    = pc;
 
 always@(posedge i_clk)begin:update_pc
    if(i_reset)
        pc <= 11'b0;
    else if(write_pc && i_valid)
        pc <= pc + 1'b1;
 end
 
 // Intancia modulo decodificador 
 op_decoder u_op_decoder
 (
    .i_valid(i_valid),
    .i_opcode(opcode),
    .o_write_pc(write_pc),
    .o_sel_a(o_sel_a),
    .o_sel_b(o_sel_b),
    .o_write_acc(o_write_acc),
    .o_operacion(o_operacion),
    .o_write_ram(o_write_ram),
    .o_read_ram(o_read_ram)
 ); 
endmodule
