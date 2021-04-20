`timescale 1ns / 1ps

module branch_logic
(
    input  wire       i_branch,
    input  wire       i_zero,
    input  wire [5:0] i_opcode,
    output reg        o_pc_src,
    output reg        o_flush   
);

always@(*)begin:decide
    case(i_opcode)    
    6'b100011://beq
    begin
        if(i_branch && i_zero)
        begin
            o_pc_src = 1'b1;
            o_flush  = 1'b1;
        end
    end
    
    6'b100010://bne
    begin
        if(i_branch && ~i_zero)
        begin
            o_pc_src = 1'b1;
            o_flush  = 1'b1;
        end
    end
    
    default:
    begin
        o_pc_src = 1'b0;
        o_flush  = 1'b0;
    end    
    endcase
end
endmodule
