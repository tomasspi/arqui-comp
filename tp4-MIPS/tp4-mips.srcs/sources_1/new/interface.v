module interface#
(
    parameter N_BITS = 32,
    parameter N_BITS_REG = 5
)
(
    input wire i_clk, i_reset,
    
    //Valores para enviar al UART
    input wire [N_BITS-1:0]        i_pc,
    input wire [N_BITS*N_BITS-1:0] i_registros,
    input wire [N_BITS-1:0]        i_memoria,
    input wire [N_BITS-1:0]        i_ciclos,
    
    input wire i_halt,
    input wire i_tx_done,
    
    output wire [N_BITS-1:0] o_data_to_send
);
	//declaracion de los estados
	localparam [2:0] IDLE = 3'b000;
	localparam [2:0] PC   = 3'b001;
	localparam [2:0] REG  = 3'b010;
	localparam [2:0] MEM  = 3'b011;
	localparam [2:0] CNTR = 3'b100;
	
	reg [N_BITS_REG-1:0] i = 5'b0;
	reg [1:0]            state_reg, next_state;
    reg [N_BITS-1:0]     data;
    
	//cambios de estado
	always @(posedge i_clk) begin:check_state
		if(i_reset)
            state_reg <= IDLE;
		else
			state_reg <= next_state;			
	end//check_state

    always@(*)begin:next
        next_state = state_reg;
        
        case(state_reg)
        IDLE: // O se hizo el step.
        begin
            data = 32'b0;
            if(i_halt)//detectar la instruccion HALT
                next_state = PC;
        end
        PC:
        begin
            data = i_pc;
            if(i_tx_done)
                next_state = REG;
        end
        REG:
        begin            
            data = i_registros[(N_BITS*i)+:N_BITS];
            if(i_tx_done)
            begin
                i = i + 1;
                if(i == N_BITS)
                    next_state = MEM;
            end
        end
        MEM:
        begin
            data = i_memoria;
            if(i_tx_done)
                next_state = CNTR;
        end
        CNTR:
        begin
            data = i_ciclos;
            if(i_tx_done)
                next_state = IDLE;
        end
        endcase       
    end
    
    assign o_data_to_send = data;
endmodule
