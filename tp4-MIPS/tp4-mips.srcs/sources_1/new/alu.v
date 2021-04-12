`timescale 1ns / 1ps

module alu#(
	//Parameters
	parameter		N_BITS          = 32,
	parameter		N_BITS_CONTROL  = 4
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
	
	//assign o_alu_result = alu_result;
	assign o_alu_zero = (o_alu_result == 0);
    
    always@(*) begin:alu
               
        case(i_alu_ctrl)
        4'b0010:  o_alu_result = i_dato_A + i_dato_B;    //suma
        4'b0110:  o_alu_result = i_dato_A - i_dato_B;    //resta
        4'b0000:  o_alu_result = i_dato_A & i_dato_B;    //and
        4'b0010:  o_alu_result = i_dato_A | i_dato_B;    //or
        4'b0111:  o_alu_result = i_dato_A < i_dato_B;    //slt
        4'b1001:  o_alu_result = i_dato_A >>> i_dato_B;  //SRA (arithmetic): extiende el signo
        4'b1000:  o_alu_result = i_dato_A >> i_dato_B;   //SRL (logic): insterta 0
        4'b0011:  o_alu_result = ~(i_dato_A | i_dato_B); //nor
		4'b0101:  o_alu_result = i_dato_A << i_dato_B;   //sll
		4'b0100:  o_alu_result = i_dato_A ^ i_dato_B;    //xor
        default: o_alu_result = {N_BITS{1'b0}};          //default = 0
        endcase
                
    end
endmodule