`timescale 1ns / 1ps

module rx_uart#
(
	parameter DATA_BITS = 8, 
	parameter N_TICKS	= 16 //Ticks para los bits de stop
)
(
	input  wire 				i_clk, i_reset,
	input  wire 				i_rx, i_ticks,
	output reg  				o_rx_done,
	output wire [DATA_BITS-1:0] o_data_out
);

	//declaracion de los estados
	localparam [1:0] IDLE  = 2'b00;
	localparam [1:0] START = 2'b01;
	localparam [1:0] DATA  = 2'b10;
	localparam [1:0] STOP  = 2'b11;

	//declaracion de variables
	//2 en funcion de los data bits: para contar la cantidad de bits
	//3 en funcion del n_ticks: 16n
	
	reg [1:0] 			state_reg, next_state;
	reg [5:0] 			bits_counter, next_bit_counter; //contador de los bits
	reg [3:0] 			sampling_counter, next_sampling_counter; //contador de ticks
	reg [DATA_BITS-1:0] buffer, next_buffer; //bits recibidos
    reg [DATA_BITS-1:0] data_out;
    
	//cambios de estado
	always @(posedge i_clk) begin:check_state
		if(i_reset)
			begin
				state_reg 		 <= IDLE;
				sampling_counter <= 0;
				bits_counter	 <= 0;
				buffer           <= 0;
			end
		else
			begin
				state_reg 		 <= next_state;
				sampling_counter <= next_sampling_counter;
				bits_counter	 <= next_bit_counter;
				buffer           <= next_buffer;
			end
	end//check_state

	//estados siguientes
	always @(*) begin:next
		next_state = state_reg;
		o_rx_done  = 1'b0;
		
		next_sampling_counter = sampling_counter;
		next_bit_counter	  = bits_counter;
		next_buffer		      = buffer;
		
		case(state_reg)
			IDLE:
			begin			    
				if(~i_rx)
				begin
					next_state = START;
					
					next_sampling_counter = 0;
				end
			end
			
			START:
			begin
				if(i_ticks)
				begin
					if(sampling_counter == 7)
					begin
						next_state = DATA;
						
						next_sampling_counter = 0;
						next_bit_counter	  = 0;
					end
					else 
						next_sampling_counter = sampling_counter + 1;
				end
			end
			
			DATA:
			begin
				if(i_ticks)
				begin
					if(sampling_counter == 15)
					begin
						next_sampling_counter = 0;
						next_buffer = {i_rx, buffer[DATA_BITS-1:1]};//orderna los bits recibidos
						
						if(next_bit_counter == (DATA_BITS-1))
							next_state = STOP;
						else
							next_bit_counter = bits_counter + 1;
					end
					else
						next_sampling_counter = sampling_counter + 1;
				end
			end
			
			STOP:
			begin
				if(i_ticks)
				begin
					if(sampling_counter == (N_TICKS-1))
					begin
						next_state = IDLE;
						o_rx_done  = 1'b1;
						data_out   = buffer;
					end
					else
						next_sampling_counter = sampling_counter + 1;
				end
			end
		endcase
	end

	//output
	assign o_data_out = data_out;

endmodule