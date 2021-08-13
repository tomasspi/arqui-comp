
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
	output reg                 o_flush,
	output reg [1:0]           o_jump,
	output reg [N_BITS_OP-1:0] o_opcode
);
	
	reg [N_BITS_OP-1:0]   opcode;
	reg [N_BITS_FUNC-1:0] funcion;	
	
	always@(*)begin:control
		if(i_reset)
		begin
			o_reg_dst 	 = 1'b0;
			o_branch 	 = 1'b0;
			o_mem_read 	 = 1'b0;
			o_mem_to_reg = 1'b0;
			o_alu_op 	 = 2'b0;
			o_mem_write  = 1'b0;
			o_alu_src 	 = 1'b0;
			o_reg_write  = 1'b0;
			o_jump 		 = 2'b0;
			o_flush      = 1'b0;
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
				6'b001001: //jalr
				begin
					o_reg_dst 	 = 1'b1;
					o_branch 	 = 1'b0;
					o_mem_read 	 = 1'b0;
					o_mem_to_reg = 1'b0;
					o_alu_op 	 = 1'b0;
					o_mem_write  = 1'b0;
					o_alu_src 	 = 1'b0;
					o_reg_write  = 1'b1;
					o_jump	 	 = 2'b10;
					o_flush      = 1'b1;
					o_opcode 	 = funcion;
				end
				
				6'b001000: //jr
				begin
					o_reg_dst 	 = 1'b0;
					o_branch 	 = 1'b0;
					o_mem_read 	 = 1'b0;
					o_mem_to_reg = 1'b0;
					o_alu_op 	 = 1'b0;
					o_mem_write  = 1'b0;
					o_alu_src 	 = 1'b0;
					o_reg_write  = 1'b0;
					o_jump	 	 = 2'b11;
					o_flush      = 1'b1;
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
					o_jump 		 = 2'b0;
					o_flush      = 1'b0;
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
				o_jump 		 = 2'b0;
				o_flush      = 1'b0;
				o_opcode 	 = 6'b001000;
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
				o_jump 		 = 2'b0;
				o_flush      = 1'b0;
				o_opcode 	 = 6'b100100;
			end
			
			6'b000100: //beq
			begin
				o_reg_dst 	 = 1'b0;
				o_branch 	 = 1'b1;
				o_mem_read 	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op 	 = 2'b01;
				o_mem_write  = 1'b0;
				o_alu_src 	 = 1'b0;
				o_reg_write  = 1'b0;
				o_jump 		 = 2'b0;
				o_flush      = 1'b0;
				o_opcode 	 = 6'b100011;
			end
			
			6'b000101: //bne
			begin
				o_reg_dst 	 = 1'b0;
				o_branch 	 = 1'b1;
				o_mem_read 	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op 	 = 2'b01;
				o_mem_write  = 1'b0;
				o_alu_src 	 = 1'b0;
				o_reg_write  = 1'b0;
				o_jump 		 = 2'b0;
				o_flush      = 1'b0;
				o_opcode 	 = 6'b100010;
			end
			
			6'b000011://jal
			begin
				o_reg_dst 	 = 1'b1;
				o_branch 	 = 1'b0;
				o_mem_read 	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op 	 = 1'b0;
				o_mem_write  = 1'b0;
				o_alu_src 	 = 1'b0;
				o_reg_write  = 1'b1;
				o_jump 		 = 2'b01;
				o_flush      = 1'b1;
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
				o_jump 	 	 = 2'b0;
				o_flush      = 1'b0;
				o_opcode 	 = 6'b100101;
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
				o_jump 		 = 2'b0;
				o_flush      = 1'b0;
				o_opcode 	 = 6'b101010;
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
				o_jump		 = 2'b0;
				o_flush      = 1'b0;
				o_opcode	 = 6'b100110;
			end
			
			6'b000010://j	
			begin
				o_reg_dst	 = 1'b0;
				o_branch	 = 1'b0;
				o_mem_read	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op	 = 1'b0;
				o_mem_write	 = 1'b0;
				o_alu_src	 = 1'b0;
				o_reg_write	 = 1'b0;
				o_jump		 = 2'b0;
				o_flush      = 1'b1;
				o_opcode	 = opcode;
			end
			
			//lb,lbu,lh,lhu,lw,lwu
			6'b100000,6'b100100,6'b100001,6'b100101,6'b100011,6'b100111:
			begin 
				o_reg_dst	 = 1'b0;
				o_branch	 = 1'b0;
				o_mem_read	 = 1'b1;
				o_mem_to_reg = 1'b1;
				o_alu_op	 = 2'b0;
				o_mem_write	 = 1'b0;
				o_alu_src	 = 1'b1;
				o_reg_write	 = 1'b1;
				o_jump		 = 2'b0;
				o_flush      = 1'b0;
				o_opcode	 = opcode;
			end
			
			//lui
			6'b001111:
			begin 
				o_reg_dst	 = 1'b0;
				o_branch	 = 1'b0;
				o_mem_read	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op	 = 2'b10;
				o_mem_write	 = 1'b0;
				o_alu_src	 = 1'b1;
				o_reg_write	 = 1'b1;
				o_jump		 = 2'b0;
				o_flush      = 1'b0;
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
				o_jump		 = 2'b0;
				o_flush      = 1'b0;
				o_opcode	 = opcode;
			end
				
			default: //halt o no valida
			begin
			    o_reg_dst	 = 1'b0;
				o_branch	 = 1'b0;
				o_mem_read	 = 1'b0;
				o_mem_to_reg = 1'b0;
				o_alu_op	 = 2'b0;
				o_mem_write	 = 1'b0;
				o_alu_src	 = 1'b0;
				o_reg_write	 = 1'b0;
				o_jump		 = 2'b0;
				o_flush      = 1'b0;
				o_opcode	 = {N_BITS_OP{1'b0}};
		    end
			endcase
		end
	end
endmodule				