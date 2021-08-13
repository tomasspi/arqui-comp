`timescale 1ns / 1ps

module tb_clk_cntr();

    // INPUTS
    reg         clk;
    reg         reset;
    reg         valid;
    reg         halt;
    wire [31:0]  count;
    
    initial begin        
        clk   = 1'b0;
        halt  = 1'b0;
        reset = 1'b1;

        #20
        reset = 1'b0; 
        
        #40 
        valid = 1'b1;
        
        #100
        halt = 1'b1;
        #20
        $finish;
    end
 
    always #10 clk = ~clk;  // Simulacion de clock 100MHz

    clk_cntr u_clk_cntr
    (
        .i_clk(clk), .i_reset(reset), .i_valid(valid), 
        .i_halt(halt),
        .o_count(count) 
    );

endmodule
