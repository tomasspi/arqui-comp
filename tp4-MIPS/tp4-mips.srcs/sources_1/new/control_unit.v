`timescale 1ns / 1ps

/*
	en funcion del opcode, setea todas las señales de 
	control
*/

module control_unit#
(
	parameter	N_BITS		= 32,
	parameter 	N_BITS_OP	= 6,
	parameter 	N_BITS_FUNC = 6
)
(
    input  wire       			 i_clk,
    input  wire     		     i_reset,
    input  wire       		 	 i_valid,
	input  wire [N_BITS-1:0]	 i_instruccion,
    
	//EX  - señales de control para ejecución
	output reg [2:0] o_alu_op,
	output reg 		 o_alu_src,
	output reg  	 o_reg_dst,	
	
	//MEM - señales de control para acceso a memoria
	output reg 	 	 o_branch,
	output reg 	 	 o_mem_read,
	output reg 	 	 o_mem_write,
	
	//WB  - señales de control para write-back
    output reg 	  	 o_mem_to_reg,
	output reg 		 o_reg_write,
	
	//posibles
	output reg 		 o_jump,
	output reg [N_BITS_OP-1:0] o_opcode
);
	
	reg [N_BITS_OP-1:0]   opcode;
	reg [N_BITS_FUNC-1:0] funcion;	
	
	always@(posedge i_clk)begin:control
		if(i_reset)
		begin
			o_reg_dst 	 = 1'b0;
			o_branch 	 = 1'b0;
			o_mem_read 	 = 1'b0;
			o_mem_to_reg = 1'b0;
			o_alu_op 	 = 2'b0;
			o_mem_write  = 1'b0;
			o_alu_src 	 = 2'b0;
			o_reg_write  = 1'b0;
			o_jump 		 = 1'b0;
		end
		else if(i_valid)
		begin
		    opcode  = i_instruccion[31:26];
	        funcion = i_instruccion[5:0];
		
			case(opcode)
			//tipo R
			6'b000000:
				case(funcion)
				//tipo J
				6'b001001, 6'b001000: //jarl, jr
				begin
					o_reg_dst 	 = 1'b0;
					o_branch 	 = 1'b0;
					o_mem_read 	 = 1'b0;
					o_mem_to_reg = 1'b0;
					o_alu_op 	 = 1'b0;
					o_mem_write  = 1'b0;
					o_alu_src 	 = 1'b0;
					o_reg_write  = 1'b0;
					o_jump	 	 = 1'b1;
					o_opcode 	 = funcion;
				end
				default: //tipo R cualquiera
				begin
					o_reg_dst 	 = 1'b1;
					o_branch 	 = 1'b0;
					o_mem_read 	 = 1'b0;
					o_mem_to_reg = 1'b0;
					o_alu_op  	 = 2'b10;
					o_mem_write  = 1'b0;
					o_alu_src 	 = 1'b0;
					o_reg_write  = 1'b1;
					o_jump 		 = 1'b0;
					o_opcode 	 = funcion;
				end
				endcase
			
			//tipo I
			6'b001000://addi
			begin
				o_reg_dst 	 = 1'b0;
				o_branch 	 = 1'b0;
				o_mem_read 	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op 	 = 2'b10;
				o_mem_write  = 1'b0;
				o_alu_src 	 = 1'b1;
				o_reg_write  = 1'b1;
				o_jump 		 = 1'b0;
				o_opcode 	 = opcode;
			end
			
			6'b001100://andi
			begin
				o_reg_dst 	 = 1'b0;
				o_branch 	 = 1'b0;
				o_mem_read 	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op 	 = 2'b10;
				o_mem_write  = 1'b0;
				o_alu_src 	 = 1'b1;
				o_reg_write  = 1'b1;
				o_jump 		 = 1'b0;
				o_opcode 	 = opcode;
			end
			
			6'b000100, 6'b000101: //beq, bne
			begin
				o_reg_dst 	 = 1'b0;
				o_branch 	 = 1'b1;
				o_mem_read 	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op 	 = 2'b01;
				o_mem_write  = 1'b0;
				o_alu_src 	 = 1'b0;
				o_reg_write  = 1'b0;
				o_jump 		 = 1'b0;
				o_opcode 	 = opcode;
			end
			
			6'b000011://jal
			begin
				o_reg_dst 	 = 1'b0;
				o_branch 	 = 1'b0;
				o_mem_read 	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op 	 = 1'b0;
				o_mem_write  = 1'b0;
				o_alu_src 	 = 2'b0;
				o_reg_write  = 1'b0;
				o_jump 		 = 1'b1;
				o_opcode 	 = opcode;
			end
			6'b001101://ori
			begin
				o_reg_dst 	 = 1'b0;
				o_branch 	 = 1'b0;
				o_mem_read 	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op 	 = 2'b10;
				o_mem_write  = 1'b0;
				o_alu_src 	 = 1'b1;
				o_reg_write  = 1'b1;
				o_jump 	 	 = 1'b0;
				o_opcode 	 = opcode;
			end
			
			6'b001010://slti
			begin
				o_reg_dst 	 = 1'b0;
				o_branch 	 = 1'b0;
				o_mem_read 	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op 	 = 2'b10;
				o_mem_write  = 1'b0;
				o_alu_src  	 = 1'b1;
				o_reg_write  = 1'b1;
				o_jump 		 = 1'b0;
				o_opcode 	 = opcode;
			end
			
			6'b001110://xori
			begin
				o_reg_dst	 = 1'b0;
				o_branch	 = 1'b0;
				o_mem_read	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op	 = 2'b10;
				o_mem_write	 = 1'b0;
				o_alu_src	 = 1'b1;
				o_reg_write	 = 1'b1;
				o_jump		 = 1'b0;
				o_opcode	 = opcode;
			end
			
			6'b000010://j	
			begin
				o_reg_dst	 = 1'b0;
				o_branch	 = 1'b0;
				o_mem_read	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op	 = 1'b0;
				o_mem_write	 = 1'b0;
				o_alu_src	 = 2'b0;
				o_reg_write	 = 1'b0;
				o_jump		 = 1'b1;
				o_opcode	 = opcode;
			end
			
			//tipo load
			//lb,lbu,lhu,lui,lwu
			6'b100000,6'b100100,6'b100101,6'b001111,6'b100111:
			begin 
				o_reg_dst	 = 1'b0;
				o_branch	 = 1'b0;
				o_mem_read	 = 1'b1;
				o_mem_to_reg = 1'b1;
				o_alu_op	 = 2'b0;
				o_mem_write	 = 1'b0;
				o_alu_src	 = 1'b1;
				o_reg_write	 = 1'b1;
				o_jump		 = 1'b0;
				o_opcode	 = opcode;
			end
			
			//tipo store
			//sb,sh,sw
			6'b101000,6'b101001,6'b101011: 
			begin 
				o_reg_dst	 = 1'b0;
				o_branch	 = 1'b0;
				o_mem_read	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op	 = 2'b0;
				o_mem_write	 = 1'b1;
				o_alu_src	 = 1'b1;
				o_reg_write	 = 1'b0;
				o_jump		 = 1'b0;
				o_opcode	 = opcode;
			end
				
			//default: algo;
			endcase
		end
	end
endmodule

				/*6'b000011, 6'b000111: //sra, srav
				begin
					o_alu_op = 2'b10;
				end
				6'b000010, 6'b000110: //srl, srlv
				begin
					o_alu_op = 2'b0;
				end
				6'b000000, 6'b000100: //sll, sllv
				begin
					o_alu_op = 2'b0;
				end
				6'b100001://addu
				begin
					o_alu_op = 2'b0;
				end
				6'b100100://and
				begin
					o_alu_op = 2'b0;
				end
				6'b100111://nor
				begin
					o_alu_op = 2'b0;
				end
				6'b100101://or				
				begin
					o_alu_op = 2'b0;
				end
				6'b101010://slt				
				begin
					o_alu_op = 2'b0;
				end
				6'b100011://subu
				begin
					o_alu_op = 2'b0;
				end
				6'b100110://xor
				begin
					o_alu_op = 2'b0;
				end*/
				