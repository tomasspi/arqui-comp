`timescale 1ns / 1ps

module clk_cntr
(
    input  wire         i_clk, i_reset, i_valid,
    input  wire         i_exec_mode, i_step,
    input  wire [31:0]  i_instruccion,
    input  wire         i_stop,
    
    output wire         o_halt,
    output wire [31:0]  o_count
);
    reg [31:0] count;
    reg        halt = 1'b0;
    
    always@(posedge i_clk)begin:contar
        if(i_reset)
            count <= 32'b1;
        else if(i_exec_mode == 1'b0 || (i_exec_mode && i_step))
        begin
            if(i_valid && ~i_stop)
                count <= count + 1;
            else
                count <= count;
        end
    end
    
    always@(*)begin:leer_instruccion
        if(i_reset)
            halt = 1'b0;
        else if(i_instruccion == {32{1'b1}})
            halt = 1'b1;
    end
    
    assign o_count = count;
    assign o_halt  = halt;
endmodule
