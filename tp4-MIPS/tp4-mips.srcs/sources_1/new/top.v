module top
(
    input wire i_clk, i_reset,
    
    /* PARA CONECTAR CON UART VIRTUAL */ 
    input wire i_rx, i_tx,
    input wire o_rx_done, o_tx_done,
    
    /* indica que se terminó de enviar
       toda la informacion que se tenia
       que enviar
    */
    output wire o_done
);

    //INTERFAZ
    wire [31:0] data_to_send;
    wire done;
    
    //UART
    wire [31:0] rx_data;
    wire        tx_start;
    wire        rx, tx, rx_done, tx_done;
    
    //MIPS
    wire halt;
    wire [31:0] data_memory;
    wire [31:0] ciclos;
    wire [31:0] pc;
    wire [1023:0] registros;
    
    top_pipeline u_mips
    (
        .i_clk(clk_out), .i_reset(i_reset), .i_valid(locked),
        .i_exec_mode(exec_mode), .i_step(step),
        .o_pc(pc), .o_registros(registros), .o_data_memory(data_memory),
        .o_ciclos(ciclos), .o_halt(halt)
    );

    interface_tx u_tx
    (
        .i_clk(clk_out), .i_reset(i_reset), .i_pc(pc), .i_registros(registros), 
        .i_memoria(data_memory), .i_ciclos(ciclos), .i_halt(halt), .i_tx_done(tx_done), 
        .i_exec_mode(exec_mode), .i_step(step),
        .o_tx_start(tx_start), .o_data_to_send(data_to_send), .o_done(done)
    );   
    
    interface_rx u_rx
    (
        .i_clk(clk_out), .i_reset(i_reset), 
        .i_rx_data(rx_data), .i_rx_done(rx_done), 
        .o_exec_mode(exec_mode), .o_step(step)
    );
    
    top_uart u_uart
    (
        .i_clk(clk_out), .i_reset(i_reset),
        .i_rx_top(rx), 
        .i_tx_start(tx_start), .i_tx_data_in(data_to_send),
        .o_tx_top(tx), .o_tx_done(tx_done),
        .o_rx_done(rx_done), .o_rx_data(rx_data)
    );    

    clk_wiz_0 u_clock
    (
        .clk_in1(i_clk),
        .reset(i_reset),
        .clk_out1(clk_out),
        .locked(locked)
    );
    
    assign o_done = done;
endmodule
