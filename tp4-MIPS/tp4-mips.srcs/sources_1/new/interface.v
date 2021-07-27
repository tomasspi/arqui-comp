module interface_tx
#
(
    parameter N_BITS = 32,
    parameter N_BITS_REG = 5
)
(
    input wire i_clk, i_reset,
    
    input wire i_exec_mode, //si es continuo o paso a paso
    input wire i_step,      //ejecutar un paso
    
    //Valores para enviar al UART
    input wire [N_BITS-1:0]        i_pc,
    input wire [N_BITS*N_BITS-1:0] i_registros,
    input wire [N_BITS-1:0]        i_memoria,
    input wire [N_BITS-1:0]        i_ciclos,
    
    input wire i_halt,
    input wire i_tx_done,
    
    output reg               o_tx_start,
    output reg               o_done,
    output wire [N_BITS-1:0] o_data_to_send,
    output wire [2:0] estadoT 
    
    //flags debugger
//    output reg o_exec_mode, //paso a paso o continuo 
//    output reg o_step       //ejecutar el step
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
    reg                  tx_done;
    
	//cambios de estado
	always@(posedge i_clk) begin:check_state
		if(i_reset)
            state_reg  <= IDLE;
		else
			state_reg <= next_state;			
	end//check_state

    always@(*)begin:next
        next_state = state_reg;
        
        case(state_reg)
        IDLE: // O se hizo el step.
        begin
            data       = 32'b0;
            o_tx_start = 1'b0;
            o_done     = 1'b0;
            
            if(i_halt || (i_exec_mode == 1'b1 && i_step))//detectar la instruccion HALT
                next_state = PC;
        end
        PC:
        begin
            data = i_pc;
            o_tx_start = 1'b1;
            
            if(tx_done)
            begin
                next_state = REG;
                o_tx_start = 1'b0;
            end
        end
        REG: //manda los regs uno por uno sin usar un for
        begin            
            data = i_registros[(N_BITS*i)+:N_BITS];
            o_tx_start = 1'b1;
            
            if(tx_done)
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
            
            if(tx_done)
            begin
                next_state = CNTR;
                o_tx_start = 1'b0;
            end
        end
        CNTR:
        begin
            data = i_ciclos;
            o_tx_start = 1'b1;
            
            if(tx_done)
            begin
                next_state = IDLE;
                o_done     = 1'b1;
            end
        end
        endcase       
    end
    
    always@(posedge i_clk)begin:tx_done_logic        
        /* aca setea el tx_done */
        if(i_tx_done == 1'b1)
            tx_done <= 1'b1;
        else
            tx_done <= 1'b0;
    end
   
    assign estadoT = state_reg;
    assign o_data_to_send = data;
endmodule
