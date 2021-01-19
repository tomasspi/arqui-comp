`timescale 1ns / 1ps

module tb_baudrate_generator();

    reg clk, reset;
    wire ticks;
    
    initial begin
        clk   = 1'b0;
        reset = 1'b1;
        
        #10
        reset = 1'b0;
        
        #654
        $finish();
    end
    
    always #1 clk = ~clk;
    
    baudrate_generator
    #(
        .F_CLOCK(50E6), .BAUDRATE(9600), .SAMPLING(16)
     )
    u_bd_gen
     (
        .i_clk(clk), .i_reset(reset),
        .o_tick(ticks)
     );
endmodule
