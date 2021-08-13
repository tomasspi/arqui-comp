module jump_logic#
(
    N_BITS     = 32
)
(
    input  wire [1:0]            i_jump,
    input  wire [N_BITS-13:0]    i_instr_index,
    input  wire [N_BITS-1:0]     i_read_data,
    input  wire [N_BITS-1:0]     i_pc_4,
    
    output reg  [N_BITS-1:0]     o_pc_jump
);
    
    always@(*)begin:decide
        case(i_jump)
            2'b00,2'b01: //J, JAL
                o_pc_jump    <= {i_pc_4[31:26], i_instr_index};
                
            2'b10,2'b11: //JALR, JR
                o_pc_jump    <= i_read_data;                
        endcase
    end
endmodule
