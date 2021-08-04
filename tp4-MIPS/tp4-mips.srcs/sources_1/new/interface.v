module interface_tx
#
(
    parameter N_BITS_INSTR = 32,
    parameter N_BITS_UART  = 8,
    parameter N_BITS_REG   = 5
)
(
    input wire i_clk, i_reset,
    
    input wire i_exec_mode, //si es continuo o paso a paso
    input wire i_step,      //ejecutar un paso
    
    //Valores para enviar al UART
    input wire [N_BITS_INSTR-1:0]              i_pc,
    input wire [N_BITS_INSTR*N_BITS_INSTR-1:0] i_registros,
    input wire [N_BITS_INSTR-1:0]              i_memoria,
    input wire [N_BITS_INSTR-1:0]              i_ciclos,
    
    input wire i_halt,
    input wire i_tx_done,
    
    output reg                    o_tx_start,
    output reg                    o_done,
    output wire [N_BITS_UART-1:0] o_data_to_send
);
	//declaracion de los estados
	localparam [2:0] IDLE = 3'b000;
	localparam [2:0] PC   = 3'b001;
	localparam [2:0] REG  = 3'b010;
	localparam [2:0] MEM  = 3'b011;
	localparam [2:0] CNTR = 3'b100;
	
	reg [N_BITS_REG-1:0]   i = 5'b0;
	reg [N_BITS_REG-1:0]   reg_num = 5'b0;
	reg [2:0]              state_reg, next_state;
    reg [N_BITS_INSTR-1:0] data;
    reg                    tx_done;
    
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
                i = i + 1;
                
                if(i == 4)
                begin
                    i = 5'b0;
                    next_state = REG;
                    o_tx_start = 1'b0;
                end
            end
        end
        REG: //manda los regs uno por uno sin usar un for
        begin            
            data = i_registros[(N_BITS_INSTR*reg_num)+:N_BITS_INSTR];
            o_tx_start = 1'b1;
            
            if(tx_done)
            begin
                i = i + 1;
                o_tx_start = 1'b0;
                
                if(i == 4)
                begin
                    i = 5'b0;           
                                        
                    if(reg_num == N_BITS_INSTR-1)
                    begin                        
                        next_state = MEM;
                        reg_num = 5'b0;
                    end
                    else
                        reg_num = reg_num + 1;
                end
            end
        end
        MEM:
        begin
            data = i_memoria;
            o_tx_start = 1'b1;
            
            if(tx_done)
            begin
                i = i + 1;
                
                if(i == 4)
                begin
                    i = 5'b0;
                    next_state = CNTR;
                    o_tx_start = 1'b0;
                end
            end
        end
        CNTR:
        begin
            data = i_ciclos;
            o_tx_start = 1'b1;
            
            if(tx_done)
            begin
                i = i + 1;
                
                if(i == 4)
                begin
                    i = 5'b0;
                    next_state = IDLE;
                    o_done     = 1'b1;
                end
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

    assign o_data_to_send = data[(N_BITS_UART*i)+:N_BITS_UART];
endmodule
