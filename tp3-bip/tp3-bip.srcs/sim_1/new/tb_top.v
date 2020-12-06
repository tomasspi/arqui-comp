`timescale 1ns / 1ps

module tb_top();
    
    reg  clk, reset;
    wire tx, tx_done;
    
    wire clk_out, locked;
    
    initial begin
        clk   = 1'b0;
        reset = 1'b1;
        #20
        reset = 1'b0;
        
        wait(locked == 1);
        
        
        //debe emepzar a trabajar
        
        wait(tx_done == 1);
        
        $finish;
    end
     
    always #5 clk = ~clk;  // Simulacion de clock
    
    // clock
    clock u_clock
    (
       .clk_in1(clk),
       .reset(reset),
       .clk_out1(clk_out),
       .locked(locked)
    );

    // TOP
    top u_top
    (
        .i_clk(clk_out),
        .i_reset(reset),
        .o_tx(tx),
        .o_tx_done(tx_done)
    );
endmodule
