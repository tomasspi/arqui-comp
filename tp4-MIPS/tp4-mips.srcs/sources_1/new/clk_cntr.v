`timescale 1ns / 1ps

module clk_cntr
(
    input  wire         i_clk, i_reset, i_valid,
    input  wire [31:0]  i_instruccion,
    input  wire         i_stop,
    
    output wire         o_halt,
    output wire [31:0]  o_count
);
    reg [31:0] count = 32'b1;
    reg        halt = 0;
    
    always@(posedge i_clk)begin:contar
        if(i_reset)
        begin
            count <= 32'b1;
            halt  <= 1'b0;
        end
        else if(i_valid && ~i_stop)
            count <= count + 1;
        else
            count <= count;
    end
    
    always@(*)begin:leer_instruccion
        if(i_instruccion == {32{1'b1}})
            halt <= 1;
    end
    
    assign o_count = count;
    assign o_halt  = halt;
endmodule
