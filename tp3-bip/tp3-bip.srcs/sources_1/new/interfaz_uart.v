`timescale 1ns / 1ps

module interfaz_uart
(
    input  [10:0] i_pc,
    output        o_tx_start
);

    reg [10:0] old_pc;
    reg        tx_start;
    
    assign o_tx_start = tx_start;
    
    always@(*)begin:check
        if(i_pc == old_pc)
            tx_start = 1'b1;
        else
        begin
            old_pc   = i_pc;
            tx_start = 1'b0;
        end
    end
endmodule
