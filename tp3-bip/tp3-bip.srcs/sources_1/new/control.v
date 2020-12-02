`timescale 1ns / 1ps

module control
(
    input  wire        i_clk,
    input  wire        i_reset,
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
 
 reg  [10:0] pc;
 wire        write_pc;
 wire        opcode;
 
 assign opcode    = i_instruction[15 -: 11];
 assign o_operand = i_instruction[10:0];
 assign o_add     = pc;
 
 always@(posedge i_clk)begin:update_pc
    if(i_reset)
        pc <= 11'b0;
    else if(write_pc)
        pc <= pc + 1'b1;
 end
 
 op_decoder u_op_decoder
 (
    .i_reset(i_reset),
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
