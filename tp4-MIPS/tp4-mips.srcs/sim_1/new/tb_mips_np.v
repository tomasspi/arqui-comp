`timescale 1ns / 1ps

module tb_mips_np();
    
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
        
        #20 
        valid = 1'b1;
        #120
        $finish;
    end
 
    always #10 clk = ~clk;  // Simulacion de clock 100MHz
    
     top_mips_np u_top
     (
        .i_clk(clk), .i_reset(reset), .i_valid(valid)
     );
endmodule
