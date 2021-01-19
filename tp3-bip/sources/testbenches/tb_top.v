`timescale 1ns / 1ps

module tb_top();
    
    // INPUTS
    reg         clk;
    reg         reset;
    reg         locked;
    
    wire        tx, tx_done;
    
    initial begin
        clk             = 1'b0;
        reset           = 1'b1;

        #20
        reset = 1'b0; 
        
        #20 locked = 1'b1;
    end
 
    always@(posedge clk)begin
        if(tx_done == 1)
            $finish;
    end
 
    always #10 clk = ~clk;  // Simulacion de clock 100MHz
    
     top u_top
     (
        .i_clk(clk), .i_reset(reset), .i_valid(locked),
        .o_tx(tx),  .o_tx_done(tx_done)
     );
endmodule
