`timescale 1ns / 1ps

module interfaz_uart
(
    input  wire [15:0] i_instruccion,
    input  wire        i_valid,
    output wire        o_tx_start
);

    localparam [15:0] HLT = 16'b0;

    reg tx_start;
    
    assign o_tx_start = tx_start;
    
    always@(*)begin:check
        if(i_valid)
        begin
            tx_start = 1'b0;
            
            if(i_instruccion == HLT)
                tx_start = 1'b1;
        end            
    end
endmodule
