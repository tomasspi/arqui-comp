module jump_logic#
(
    N_BITS     = 32
//    N_BITS_REG = 5,
//    N_BITS_OP  = 6
)
(
//    input  wire                  i_clk, i_valid,
    input  wire [1:0]            i_jump,
//    input  wire [N_BITS_REG-1:0] i_rd,
//    input  wire [N_BITS_REG-1:0] i_write_reg,
    input  wire [N_BITS-13:0]    i_instr_index,
//    input  wire [N_BITS-1:0]     i_write_data,
    input  wire [N_BITS-1:0]     i_read_data,
    input  wire [N_BITS-1:0]     i_pc_4,
//    input  wire                  i_reg_write,
    
//    output reg  [N_BITS_REG-1:0] o_write_reg,
    output reg  [N_BITS-1:0]     o_pc_jump
//    output reg  [N_BITS-1:0]     o_write_data,
//    output reg                   o_reg_write
);
//    initial begin
//    o_write_data = 32'b0;
//    end
    
    always@(*)begin:decide
        case(i_jump)
            2'b00,2'b01: //J, JAL
                o_pc_jump    <= {i_pc_4[31:26], i_instr_index};
                
            2'b10,2'b11: //JALR, JR
                o_pc_jump    <= i_read_data;                
        endcase
    end
endmodule
