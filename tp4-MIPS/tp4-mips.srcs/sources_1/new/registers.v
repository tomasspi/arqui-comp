`timescale 1ns / 1ps

module registers#
(
	parameter	N_BITS		= 32,
	parameter	N_BITS_REG	= 5
)
(
    input  wire       			 i_clk,
    input  wire     		     i_reset,
    input  wire       		 	 i_valid,
    input  wire [N_BITS_REG-1:0] i_read_reg_1,
	input  wire [N_BITS_REG-1:0] i_read_reg_2,
	input  wire [N_BITS_REG-1:0] i_write_reg,
	input  wire [N_BITS-1:0]	 i_write_data,
	input  wire 	   			 i_reg_write,  //señal de control
    
    output reg  [N_BITS-1:0] 	 o_read_data_1,
    output reg  [N_BITS-1:0] 	 o_read_data_2
);
 
 localparam BITS_CONTADOR = $clog2(N_BITS);
 
 reg [N_BITS-1:0] 	   registros [N_BITS-1:0];
 reg [BITS_CONTADOR:0] i;
 
 //inicializa los registros 0 a 31
 initial begin
	for(i = 0; i < 32; i = i + 1)
		registros[i] = {N_BITS{1'b0}}; // o deja i, despues vemos
		registros[5] = 1;
		registros[6] = 2;
 end

 always@(posedge i_clk)begin:lectura 
    if(i_reset)
	begin
		o_read_data_1 <= {N_BITS{1'b0}};
		o_read_data_2 <= {N_BITS{1'b0}};
	end
    if(i_valid)
	begin
		o_read_data_1 <= registros[i_read_reg_1];
		o_read_data_2 <= registros[i_read_reg_2];
	end
 end
 
 always@(negedge i_clk)begin:escritura
	if(i_reg_write && i_valid && i_write_reg != 5'b0)
	begin
		registros[i_write_reg] <= i_write_data; //dato nuevo (calculado o leido)
    end
 end
 
endmodule
