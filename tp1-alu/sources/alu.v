`timescale 1ns / 1ps

module alu#(
	//Parameters
	parameter		N_BITS          = 8
)
(
	//inputs
	input wire [N_BITS-1:0]    i_dato_A,
	input wire [N_BITS-1:0]    i_dato_B,
	input wire [5:0]           i_operacion,
	
	//output
	output reg [N_BITS-1:0]    o_alu
);

    //local parameters	
    localparam ADD = 6'b100000;
    localparam SUB = 6'b100010;
    localparam AND = 6'b100100;
    localparam OR  = 6'b100101;
    localparam XOR = 6'b100110;
    localparam SRA = 6'b000011;
    localparam SRL = 6'b000010;
    localparam NOR = 6'b100111;

    always@(*) begin:alu
               
        case(i_operacion)
        AND:  o_alu = i_dato_A + i_dato_B;    //suma
        SUB:  o_alu = i_dato_A - i_dato_B;    //resta
        AND:  o_alu = i_dato_A & i_dato_B;    //and
        OR:   o_alu = i_dato_A | i_dato_B;    //or
        XOR:  o_alu = i_dato_A ^ i_dato_B;    //xor
        SRA:  o_alu = i_dato_A >>> i_dato_B;  //SRA (arithmetic): extiende el signo
        SRL:  o_alu = i_dato_A >> i_dato_B;   //SRL (logic): insterta 0
        NOR:  o_alu = ~(i_dato_A | i_dato_B); //nor
        default:    o_alu = {N_BITS{1'b0}};   //default = 0
        endcase
                
    end
    
endmodule