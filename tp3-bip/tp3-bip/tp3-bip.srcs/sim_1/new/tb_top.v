`timescale 1ns / 1ps

module tb_top();
    
    // INPUTS
    reg         clk;
    reg         reset;
    reg         locked;
    
//    wire        clk_out, locked;
    wire        tx, tx_done;
    
    initial begin
        clk             = 1'b0;
        reset           = 1'b1;

        #20
        reset = 1'b0; 
        
        #20 locked = 1'b1;
        
        wait(tx_done == 1);
       
        #200 $finish;
    end
 
    always #10 clk = ~clk;  // Simulacion de clock 100MHz
    
//     clock u_clock
//     (
//        .clk_in1(clk),
//        .reset(reset),
//        .clk_out1(clk_out),
//        .locked(locked)
//     );
    
     top u_top
     (
        .i_clk(clk), .i_reset(reset), .i_valid(locked),
        .o_tx(tx),  .o_tx_done(tx_done)
     );
endmodule
