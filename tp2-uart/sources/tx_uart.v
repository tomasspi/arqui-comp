`timescale 1ns / 1ps

module tx_uart#
(
	parameter DATA_BITS = 8, 
	parameter N_TICKS	= 16 //Ticks para los bits de stop
)
(
	input  wire 				i_clk, i_reset,
	input  wire 				i_tx_start, i_ticks,
	input  wire [DATA_BITS-1:0] i_data_in,
	output reg  				o_tx_done,
	output wire 				o_data_out
);

	//declaracion de los estados
	localparam [1:0] IDLE  = 2'b00;
	localparam [1:0] START = 2'b01;
	localparam [1:0] DATA  = 2'b10;
	localparam [1:0] STOP  = 2'b11;
	
	//declaracion de variables
	reg [1:0]			state_reg, next_state;
	reg [2:0]			bits_counter, next_bit_counter; //contador de los bits
	reg [3:0]		    sampling_counter, next_sampling_counter; //contador de ticks
	reg [DATA_BITS-1:0]	buffer, next_buffer;
	reg 				tx_data, next_tx;
	
	//cambios de estado
	always @(posedge i_clk) begin:check_state
		if(i_reset)
		begin
			state_reg <= IDLE;
			
			sampling_counter <= 0;
			bits_counter	 <= 0;
			buffer		     <= 0;			
			tx_data 		 <= 1'b1;
		end
		else
		begin
			state_reg <= next_state;
			
			sampling_counter <= next_sampling_counter;
			bits_counter 	 <= next_bit_counter;
			buffer 		     <= next_buffer;
			tx_data 		 <= next_tx;
		end
	end
	
	//estado siguiente
	always @(*) begin:next
		next_state = state_reg;
		o_tx_done  = 1'b0;
		
		next_sampling_counter = sampling_counter;
		next_bit_counter	  = bits_counter;
		next_buffer			  = buffer;
		
		case(state_reg)
			IDLE:
			begin
				next_tx = 1'b1;
				if(i_tx_start)
				begin
					next_state = START;
					
					next_sampling_counter = 0;
					next_buffer           = i_data_in;
				end
			end
			
			START:
			begin
				next_tx = 1'b0;
				if(i_ticks)
				begin
					if(sampling_counter == 15)
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
				next_tx = buffer[0];
				if(i_ticks)
				begin
					if(sampling_counter == 15)
					begin
						next_sampling_counter = 0;
						next_buffer = buffer >> 1;
						if(bits_counter == (DATA_BITS-1))
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
				next_tx = 1'b1;
				if(i_ticks)
				begin
					if(sampling_counter == (N_TICKS-1))
					begin
						next_state = IDLE;
						o_tx_done  = 1'b1;
					end
					else
						next_sampling_counter = sampling_counter + 1;
				end
			end
		endcase
	end
	
	//output
	assign o_data_out = tx_data;
endmodule