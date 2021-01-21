`timescale 1ns / 1ps

	/*
		si usamos la señal de control aca, hay que decidir
		si se hace PC+4 o la direccion de salto
		sino se hace en el modulo anterio a este
	*/

module program_counter#
(
	parameter N_BITS = 32
)
(
    input  wire        		 i_clk,
    input  wire     		 i_reset,
    input  wire        		 i_valid,
    input  wire [N_BITS-1:0] i_address,
    
    output wire [N_BITS-1:0] o_pc
);
 
 reg [N_BITS-1:0] pc;
 
 assign o_pc = pc;
 
 always@(posedge i_clk)begin:update_pc
    if(i_reset)
        pc <= {N_BITS{1'b0}};
    else if(i_valid)
        pc <= i_address;
 end

endmodule