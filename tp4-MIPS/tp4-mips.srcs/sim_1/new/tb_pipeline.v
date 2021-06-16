`timescale 1ns / 1ps

module tb_pipeline();   
    
    localparam F_CLOCK  = 50E6;
    localparam BAUDRATE = 9600;
    localparam SAMPLING = 16;
        
    // INPUTS
    reg clk_out;
    reg reset;
    reg locked;    
    reg exec_mode, step;
    
    wire pc;
    wire registros;
    wire data_memory;
    wire ciclos;
    wire halt;
    
    
    //PARA MODO CONTINUO
//    initial begin
//        clk_out = 1'b0;
//        reset   = 1'b1;
//        locked  = 1'b1;
        
//        #60
//        reset = 1'b0;
        
        
//        #20
//        exec_mode = 1'b0;
//        step = 1'b0;
        
//        #600
//        $finish;
//    end

    /* 
        PARA MODO PASO A PASO:
        pone el modo paso a paso, espera 2 ciclos 
        y hace un step. Luego, espera 5 ciclos para
        hacer el segundo step y despu�s de 2 ciclos
        ejecuta todo el programa 
    */
    initial begin
        clk_out = 1'b0;
        reset   = 1'b1;
        locked  = 1'b1;
        
        #60
        reset = 1'b0;
        
        
        #20
        exec_mode = 1'b1;
        
        #40
        step = 1'b1;
        #20
        step = 1'b0;
        
        #100
        step = 1'b1;
        #20
        step = 1'b0;
        
        #40
        step = 1'b1;
        
        #600
        $finish;
    end

    top_pipeline u_top
    (
        .i_clk(clk_out), .i_reset(reset), .i_valid(locked),
        .i_exec_mode(exec_mode), .i_step(step),
        .o_pc(pc), .o_registros(registros), .o_data_memory(data_memory),
        .o_ciclos(ciclos), .o_halt(halt)
    );
    
    always #10 clk_out = ~clk_out;  // Simulacion de clock 100MHz
    
endmodule