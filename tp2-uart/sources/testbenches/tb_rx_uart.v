`timescale 1ns / 1ps

module tb_rx_uart();

    localparam  F_CLOCK  = 50E6;
    localparam  BAUDRATE = 9600;
    localparam  DBITS = 8;
    localparam  TICKS = 16;
    localparam CNT_BITS = $clog2(DBITS);
    
    reg              clk, reset;
    reg              rx; 
    wire             tick;
    wire             rx_done;
    wire [DBITS-1:0] data_out;
    
    reg [CNT_BITS-1:0] ii;
    
    initial begin
        reset = 1'b1;
        clk = 1'b0;
        rx  = 1'b1;
        
        #40 reset = 1'b0;
        
        #104320
        rx = 1'b0; //bit de inicio
        
        //comienzo a enviar el dato random de N_BITS bits
        //de LSB a MSB
        for(ii = 0; ii < DBITS; ii = ii + 1)
            #104320 rx = 1'b1;
        
        #104320
        rx = 1'b1; //bit de stop    
    end
    
    always @(*)
    begin
        if(rx_done == 1)
        begin
            $display("------ TEST OK! ------");
            $finish;
        end
    end
    
    always #10 clk = ~clk;
    
    rx_uart
    #(
        .DATA_BITS(DBITS), .N_TICKS(TICKS)
     )
    u_rx_uart
     (
        .i_clk(clk), .i_reset(reset),
        .i_rx(rx), .i_ticks(tick),
        .o_rx_done(rx_done), 
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
