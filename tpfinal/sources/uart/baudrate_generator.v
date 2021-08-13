`timescale 1ns / 1ps

module baudrate_generator#
(
	parameter F_CLOCK  = 50E6,
	parameter BAUDRATE = 9600,
	parameter SAMPLING = 16
)
(
	input  wire i_clk, i_reset,
	output wire o_tick
);

	localparam CUENTA = F_CLOCK / (BAUDRATE * SAMPLING);	
	localparam N_BITS = $clog2(CUENTA);

	reg  [N_BITS-1:0] contador;
	
	always @(posedge i_clk) begin:cuenta
		if(i_reset || o_tick)
			contador <= CUENTA - 1;
		else 
		    contador <= contador - 1;   
	end	
	
	//como se trabaja con valores flotantes (CUENTA)
	//se realiza una reduccion al contador para poner
	//en 1 ó 0 la salida, indicada por |
	assign o_tick = ~(|contador); //cuando contador == 0, se produce un tick
endmodule
