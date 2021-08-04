`timescale 1ns / 1ps

module tb_pipeline();   
    
    localparam N_BITS = 32;
        
    // INPUTS
    reg clk_out;
    reg reset;
    reg locked;    
    reg exec_mode, step;
    
    wire [N_BITS-1:0]        pc;
//    wire [N_BITS*N_BITS-1:0] registros;
    wire [N_BITS-1:0] registro;
    wire [N_BITS-1:0]        data_memory;
    wire [N_BITS-1:0]        ciclos;
    wire halt;
    
    wire [4:0] n_reg;
    
    //PARA MODO CONTINUO
//    initial begin
//        clk_out = 1'b0;
//        reset   = 1'b1;
//        locked  = 1'b0;
        

        
//        #40
//        reset = 1'b0;
        
//        #20
//        exec_mode = 1'b0;
//        step = 1'b0;       
        
//        #20 
//        locked  = 1'b1;
        
//        wait(n_reg == 31)
//        #20
//        $finish;
//    end

    /* 
        PARA MODO PASO A PASO:
        pone el modo paso a paso, espera 2 ciclos 
        y hace un step. Luego, espera 5 ciclos para
        hacer el segundo step y después de 2 ciclos
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
        .o_pc(pc), .o_registro(registro), .o_data_memory(data_memory),
        .o_ciclos(ciclos), .o_halt(halt), .o_n_reg(n_reg) 
    );
    
    always #10 clk_out = ~clk_out;  // Simulacion de clock 50MHz
    
endmodule