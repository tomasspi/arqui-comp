module interface_rx
#(
    parameter N_BITS = 8,
    parameter N_BITS_REG = 5,
    parameter N_BITS_INSTR = 32
)
(
    input wire i_clk, i_reset,
    
    //Valores para recibir
    input wire [N_BITS-1:0] i_rx_data,
    input wire              i_rx_done,

    output reg o_exec_mode, //si es continuo o paso a paso
    output reg o_step       //ejecutar un paso
);

    localparam [1:0] IDLE         = 2'b00;
    localparam [1:0] INSTRUCTIONS = 2'b01;
    localparam [1:0] EXEC_MODE    = 2'b10;
    localparam [1:0] STEP         = 2'b11;

    reg [1:0]  state_reg, next_state;
    reg        rx_done;
    reg        step;
    reg [31:0] instrucciones [2047:0];
    reg [31:0] instruccion = 32'b0;
    reg [31:0] i = 0; // numero de instruccion           
    reg [2:0]  j = 0; // numero de byte de una instruccion
    
    always@(posedge i_clk)begin:check_state
        if(i_reset)
        begin
            state_reg   <= IDLE;   
        end
        else
            state_reg <= next_state;
    end

    always@(*)begin:next
        next_state = state_reg;
        
        case(state_reg)
            IDLE:
                next_state = INSTRUCTIONS;
                
            INSTRUCTIONS:
            begin
                if(rx_done)
                begin          
                    instruccion[(N_BITS*j)+:N_BITS] = i_rx_data;
                    j = j + 1;
                    
                    if(j == 4)
                    begin
                        instrucciones[i] = instruccion;  
                        i = i + 1;
                        j = 0;
                    end
                    
                    if(instruccion == {N_BITS_INSTR {1'b1}}) //halt
                    begin
                        $writememb("C:/users/mi_pc/Desktop/programa.mem", instrucciones, 0, i-1);
                        next_state = EXEC_MODE;
                    end
                end                
            end
            
            EXEC_MODE:
            begin
                /*  verificar que no sea el halt del estado anterior */
                if( i_rx_data != ( {N_BITS {1'b1}} ) )
                begin
                    /* se asigna 1 o 0 para el modo de exec */
                    o_exec_mode = i_rx_data;
                    next_state = STEP;
                end
            end
            
            STEP:
            begin
                /* en caso que sea un paso a paso (1), se
                   genera un step automaticamente por la
                   entrada i_rx_data */
                if(rx_done)
                    step = i_rx_data;                
            end
       endcase
    end

    always@(negedge i_clk)begin:rx_done_logic        
        /* aca setea el rx_done */
        if(i_rx_done == 1'b1)
            rx_done <= 1'b1;
        else
            rx_done <= 1'b0;
        
        /* aca setea el step */
        if(step)
            o_step <= 1'b0;
        else
            o_step <= step;
    end

    assign estado = state_reg;
endmodule
