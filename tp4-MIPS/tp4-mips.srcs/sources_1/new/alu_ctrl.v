`timescale 1ns / 1ps

module alu_ctrl#(
	//Parameters
	parameter		N_BITS          = 6,
	parameter		N_BITS_CTRL		= 5
)
(
	//inputs
	input wire  [N_BITS-1:0]	  i_funcion,
	input wire  [N_BITS_CTRL-3:0] i_alu_op,
	
	//output
	output reg  [N_BITS_CTRL-1:0] o_alu_ctrl
);

    always@(*) begin:alu
		case(i_alu_op)
		2'b00: 
		begin
		  case(i_funcion)
		  6'b100000: //lb
		      o_alu_ctrl = 5'b01101;
		  6'b100001: //lh
		      o_alu_ctrl = 5'b01110;
		  6'b100011: //lw
		      o_alu_ctrl = 5'b00010;
		  6'b100100: //lbu
		      o_alu_ctrl = 5'b01111;
		  6'b100101: //lhu
		      o_alu_ctrl = 5'b10000;
		  6'b100111: //lwu
		      o_alu_ctrl = 5'b00011;
		  endcase
		end
		
		2'b01: o_alu_ctrl = 4'b0110;
		
		2'b10:
		begin
			case(i_funcion)
			6'b100100: o_alu_ctrl = 4'b0000; //and
			6'b100101: o_alu_ctrl = 4'b0001; //or
			6'b001000: o_alu_ctrl = 4'b0010; //addi
			6'b100001: o_alu_ctrl = 4'b0011; //addu			
			6'b100111: o_alu_ctrl = 4'b0100; //nor
			6'b100110: o_alu_ctrl = 4'b0101; //xor
			6'b000000: o_alu_ctrl = 4'b0110; //sll
			6'b000100: o_alu_ctrl = 4'b0110; //sllv
			6'b100010: o_alu_ctrl = 4'b0111; //sub
			6'b100011: o_alu_ctrl = 4'b1000; //subu
			6'b101010: o_alu_ctrl = 4'b1001; //slt
			6'b000010: o_alu_ctrl = 4'b1010; //srl
			6'b000110: o_alu_ctrl = 4'b1010; //srlv
			6'b000011: o_alu_ctrl = 4'b1011; //sra
			6'b000111: o_alu_ctrl = 4'b1011; //srav
			6'b001111: o_alu_ctrl = 4'b1100; //LUI
			default:   o_alu_ctrl = 4'b1101; //invalid
			endcase
		end
		default: o_alu_ctrl = 4'b1011; //invalid
        endcase
    end
endmodule