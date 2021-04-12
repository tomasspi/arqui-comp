`timescale 1ns / 1ps

module tb_pipeline();   
        
    // INPUTS
    reg         clk;
    reg         reset;
    reg         valid;
    
    integer fd;
    integer i;
    
    initial begin        
        clk   = 1'b0;
        reset = 1'b1;

        #20
        reset = 1'b0; 
        
        #40 
        valid = 1'b1;
        #300
        $finish;
    end
 
    always #10 clk = ~clk;  // Simulacion de clock 100MHz

    top_pipeline u_pipe
    (
        .i_clk(clk), .i_reset(reset), .i_valid(valid)
    );
endmodule