`timescale 1ns / 1ps

module branch_logic
(
    input  wire       i_branch,
    input  wire       i_zero,
    input  wire [5:0] i_opcode,
    output reg        o_pc_src   
);

always@(*)begin:decide
    case(i_opcode)    
    6'b000100://beq
    begin
        if(i_branch && i_zero)
            o_pc_src = 1'b1;
    end
    
    6'b000101://bne
    begin
        if(i_branch && ~i_zero)
            o_pc_src = 1'b1;
    end
    
    default:
        o_pc_src = 1'b0;
    endcase
end

endmodule
