module interface_rx
#(
    parameter N_BITS = 32,
    parameter N_BITS_REG = 5
)
(
    input wire i_clk, i_reset,
    
    //Valores para enviar al UART
    input wire [N_BITS-1:0] i_rx_data,
    input wire              i_rx_done,
    
    output wire [1:0] estado,
    output reg o_exec_mode, //si es continuo o paso a paso
    output reg o_step       //ejecutar un paso
);

    localparam [1:0] IDLE = 2'b00;
    localparam [1:0] INSTRUCTIONS = 2'b01;
    localparam [1:0] EXEC_MODE = 2'b10;
    localparam [1:0] STEP = 2'b11;

    reg [1:0] state_reg, next_state;
    reg       rx_done;
    reg       is_open;
    
    integer fd;    
    
    always@(posedge i_clk)begin:check_state
        if(i_reset)
        begin
            state_reg   <= INSTRUCTIONS;
            next_state  <= INSTRUCTIONS;   
            rx_done     <= rx_done;         
            is_open     <= 1'b0;
            o_step      <= 1'b0;
            o_exec_mode <= 1'b0;
        end
        else
            state_reg <= next_state;
    end

    always@(*)begin:next
        case(state_reg)
            IDLE:
                next_state = INSTRUCTIONS;
                
            INSTRUCTIONS:
            begin
                //https://www.javatpoint.com/verilog-file-operations
                /* se usa el path relativo porque sino genera el archivo 
                en la carpeta de simulacion, y la memoria utiliza el que esta
                en la carpeta de recursos (sources) */
                if(~is_open)
                begin
                    //$writememb(INIT_FILE, PRAM, 0, RAM_DEPTH-1);
                    fd = $fopen("C:/users/user/desktop/programa.mem", "w");
                    is_open = 1'b1;
                end
                
                if(rx_done)
                begin
                    $fdisplayb(fd, i_rx_data);
                
                    if(i_rx_data == {N_BITS {1'b1}}) //halt
                    begin
                        $fclose(fd);
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
                   entrada i_rx_data
                 */
                if(rx_done)
                    o_step = i_rx_data;                
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
        if(o_step)
            o_step <= 1'b0;
    end

    assign estado = state_reg;
endmodule
