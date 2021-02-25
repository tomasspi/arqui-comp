`timescale 1ns / 1ps

module clk_cntr
(
    input wire         i_clk, i_reset, i_valid,
    input wire         i_halt,
    output wire [31:0] o_count
);
    reg [31:0] count = 0;
    
    always@(posedge i_clk)begin:contar
        if(i_reset)
            count <= 32'b0;
        else if(i_valid && ~i_halt)
            count <= count + 1;
        else
            count <= count;
    end
    
    assign o_count = count;
    
endmodule
