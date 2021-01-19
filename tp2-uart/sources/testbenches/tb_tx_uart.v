`timescale 1ns / 1ps

module tb_tx_uart();

    localparam  F_CLOCK  = 50E6;
    localparam  BAUDRATE = 9600;
    localparam  DBITS = 8;
    localparam  TICKS = 16;
    
    reg              clk, reset;
    reg              start; 
    wire             tick;
    wire             tx_done;
    reg  [DBITS-1:0] data_in;
    wire             data_out;
    
    initial begin
        reset  = 1'b1;
        clk    = 1'b0;
        start  = 1'b0;
        //shiftea un 1 cada 16 ticks
        #40 reset = 1'b0;
        
        #104320
        data_in = {$urandom()};
        
        #104320
        start = 1'b1;
        
        #104320
        wait(tx_done == 1);
        
        reset = 1'b1;
        #40
        $finish;
    end
    
    always #10 clk = ~clk;
    
    tx_uart
    #(
        .DATA_BITS(DBITS), .N_TICKS(TICKS)
     )
    u_tx_uart
     (
        .i_clk(clk), .i_reset(reset),
        .i_tx_start(start), .i_ticks(tick),
        .i_data_in(data_in),
        .o_tx_done(tx_done), 
        .o_data_out(data_out)
     );

    baudrate_generator
    #(
        .F_CLOCK(F_CLOCK), .BAUDRATE(BAUDRATE), .SAMPLING(TICKS)
     )
    u_bd_generator
     (
        .i_clk(clk), .i_reset(reset),
        .o_tick(tick)
     );

endmodule