`timescale 1ns / 1ps

module tb_top();

    // INPUTS
    reg clk, reset;
    wire done;
    
    always #10 clk = ~clk;  // Simulacion de clock 100MHz

    initial begin        
        clk   = 1'b0;
        reset = 1'b1;

        #100
        reset = 1'b0;
                
        
        wait(done == 1'b1);
        #20
        
        $finish;
    end

    top u_top
    (
        .i_clk(clk), .i_reset(reset),
        .o_done(done)
    );

endmodule
