`timescale 1ns / 1ps

module alu_ctrl#(
	//Parameters
	parameter		N_BITS          = 6,
	parameter		N_BITS_CTRL		= 4
)
(
	//inputs
	input wire  [N_BITS-1:0]	  i_funcion,
	input wire  [N_BITS_CTRL-2:0] i_alu_op,
	
	//output
	output reg  [N_BITS_CTRL-1:0] o_alu_ctrl
);

    always@(*) begin:alu
		case(i_alu_op)
		2'b00: o_alu_ctrl = 4'b0010;
		2'b01: o_alu_ctrl = 4'b0110;
		2'b10:
		begin
			case(i_funcion)
			6'b100100: o_alu_ctrl = 4'b0000; //and
			6'b100101: o_alu_ctrl = 4'b0001; //or
			6'b100000: o_alu_ctrl = 4'b0010; //add
			6'b100111: o_alu_ctrl = 4'b0011; //nor
			6'b100110: o_alu_ctrl = 4'b0100; //xor
			6'b000000: o_alu_ctrl = 4'b0101; //sll
			6'b100010: o_alu_ctrl = 4'b0110; //sub		
			6'b101010: o_alu_ctrl = 4'b0111; //slt
			6'b000010: o_alu_ctrl = 4'b1000; //srl
			6'b000011: o_alu_ctrl = 4'b1001; //sra
			default:   o_alu_ctrl = 4'b1010; //invalid
			endcase
		end
		default: o_alu_ctrl = 4'b1010; //invalid
        endcase
    end
endmodule