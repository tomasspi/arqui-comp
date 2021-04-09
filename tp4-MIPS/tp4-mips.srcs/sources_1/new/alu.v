`timescale 1ns / 1ps

module alu#(
	//Parameters
	parameter		N_BITS          = 32,
	parameter		N_BITS_CONTROL  = 5
)
(
	//inputs
	input wire [N_BITS-1:0]    		i_dato_A,
	input wire [N_BITS-1:0]    		i_dato_B,
	input wire [N_BITS_CONTROL-1:0] i_alu_ctrl,
	
	//output
	output reg [N_BITS-1:0]   o_alu_result,
	output wire 			  o_alu_zero
);
	
	assign o_alu_zero = (o_alu_result == 0);
    
    always@(*) begin:alu
               
        case(i_alu_ctrl)
        5'b00000:  o_alu_result = i_dato_A & i_dato_B;                          //and
        5'b00001:  o_alu_result = i_dato_A | i_dato_B;                          //or
        5'b00010:  o_alu_result = i_dato_A + i_dato_B;                          //suma con signo
        5'b00011:  o_alu_result = $unsigned(i_dato_A) + $unsigned(i_dato_B);    //suma sin signo
        5'b00100:  o_alu_result = ~(i_dato_A | i_dato_B);                       //nor
        5'b00101:  o_alu_result = i_dato_A ^ i_dato_B;                          //xor
        5'b00110:  o_alu_result = i_dato_A << i_dato_B;                         //sll
        5'b00111:  o_alu_result = i_dato_A - i_dato_B;                          //resta con signo - beq
        5'b01000:  o_alu_result = $unsigned(i_dato_A) - $unsigned(i_dato_B);    //resta sin signo - bne
        5'b01001:  o_alu_result = i_dato_A < i_dato_B;                          //slt
        //--!quickfix: invertimos el orden de los datos
        5'b01010:  o_alu_result = i_dato_B >> i_dato_A;                         //SRL (logic): insterta 0
        5'b01011:  o_alu_result = i_dato_B >>> i_dato_A;                        //SRA (arithmetic): extiende el signo
        //--!quickfix: invertimos el orden de los datos
		5'b01100:  o_alu_result = i_dato_B << 16;                               //LUI
		5'b01101:  o_alu_result = (i_dato_A + i_dato_B) & 32'h0xff;             //carga un byte (signed)
		5'b01110:  o_alu_result = (i_dato_A + i_dato_B) & 32'h0xffff;           //carga media palabra (signed)
		5'b01111:  o_alu_result = ($unsigned(i_dato_A) + $unsigned(i_dato_B)) & 32'h0xff;      //carga un byte (unsigned)
		5'b10000:  o_alu_result = ($unsigned(i_dato_A) + $unsigned(i_dato_B)) & 32'h0xffff;    //carga media palabra (unsigned)
        default: o_alu_result = {N_BITS{1'b0}};                                //default = 0
        endcase
        $display("A: %d, B: %d, Resultado: %d",i_dato_A,i_dato_B,o_alu_result);        
    end
endmodule