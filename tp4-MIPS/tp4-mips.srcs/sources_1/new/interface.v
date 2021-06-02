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
    
    output reg               o_tx_start,
    output wire [N_BITS-1:0] o_data_to_send
);
	//declaracion de los estados
	localparam [2:0] IDLE = 3'b000;
	localparam [2:0] PC   = 3'b001;
	localparam [2:0] REG  = 3'b010;
	localparam [2:0] MEM  = 3'b011;
	localparam [2:0] CNTR = 3'b100;
	
	reg [N_BITS_REG-1:0] i = 5'b0;
	reg [2:0]            state_reg, next_state;
    reg [N_BITS-1:0]     data;
    
	//cambios de estado
	always @(posedge i_clk) begin:check_state
		if(i_reset)
		begin
            state_reg  <= IDLE;
            next_state <= IDLE;
            data = 32'b0;
            o_tx_start = 1'b0;
        end
		else
			state_reg <= next_state;			
	end//check_state

    always@(*)begin:next
        
        case(state_reg)
        IDLE: // O se hizo el step.
        begin
            data = 32'b0;
            o_tx_start = 1'b0;
            
            if(i_halt)//detectar la instruccion HALT
                next_state = PC;
        end
        PC:
        begin
            data = i_pc - 32'b1;
            o_tx_start = 1'b1;
            
            if(i_tx_done)
            begin
                next_state = REG;
                o_tx_start = 1'b0;
            end
        end
        REG: //manda los regs uno por uno sin usar un for
        begin            
            data = i_registros[(N_BITS*i)+:N_BITS];
            o_tx_start = 1'b1;
            
            if(i_tx_done)
            begin
                o_tx_start = 1'b0;                
                if(i == N_BITS-1)
                begin
                    next_state = MEM;
                    i = 5'b0;
                end
                else
                    i = i + 1;
            end
        end
        MEM:
        begin
            data = i_memoria;
            o_tx_start = 1'b1;
            
            if(i_tx_done)
            begin
                next_state = CNTR;
                o_tx_start = 1'b0;
            end
        end
        CNTR:
        begin
            data = i_ciclos;
            o_tx_start = 1'b1;
            
            if(i_tx_done)
                next_state = IDLE;
        end
        endcase       
    end
    
    assign o_data_to_send = data;
endmodule
