`timescale 1ns / 1ps

module tb_interface_rx();
    
    // INPUTS
    reg  clk, reset;
    reg  rx_done;
    wire  step;
    wire  exec_mode;
    
    reg [31:0] rx_data;
    
    localparam N_BITS = 32;
    
    always #10 clk = ~clk;  // Simulacion de clock 100MHz
        
    initial begin
        clk   = 1'b0;
        reset = 1'b1;
        rx_done = 1'b0;
        
        #40
        reset = 1'b0;
        
//        /* envio que va a empezar a mandar las instrucciones */
//        #20
//        rx_data = 32'b1;
        
//        #60
//        rx_done = 1'b1;
//        #20
//        rx_done = 1'b0;
        
        /* primer instruccion */
        #20
        rx_data = 32'b10;
        
        #60
        rx_done = 1'b1;
        #20
        rx_done = 1'b0;

        /* segunda instruccion */
        #20
        rx_data = 32'b11;
        
        #60
        rx_done = 1'b1;
        #20
        rx_done = 1'b0;      
        
        /* HALT */
        #20
        rx_data = {N_BITS {1'b1}};
        
        #60
        rx_done = 1'b1;
        #20
        rx_done = 1'b0;
        
        /* Modo de ejecución */
        rx_data = 32'b0;
        
        #60
        rx_done = 1'b1;
        #20
        rx_done = 1'b0;
        
        //esperar a que termine el programa
        #200                
        $finish;  
    end
    
    interface_rx u_rx
    (
        .i_clk(clk), .i_reset(reset), 
        .i_rx_data(rx_data), .i_rx_done(rx_done), 
        .o_exec_mode(exec_mode), .o_step(step)
    );
endmodule
