`timescale 1ns / 1ps

module top_uart
#(
    parameter N_BITS   = 8,
    parameter F_CLOCK  = 50E6,
    parameter BAUDRATE = 9600,
    parameter SAMPLING = 16
 )
 (
    input  wire              i_clk, i_reset,
    input  wire              i_rx_top,
    input  wire [N_BITS-1:0] i_tx_data_in,
    input  wire              i_tx_start,
    output wire              o_tx_top,
    output wire              o_rx_done,
    output wire [N_BITS-1:0] o_rx_data,
    output wire              o_tx_done
 );
    
    //signals
    wire               tick;   
    wire               rx_done;       
    wire               tx_done;
    wire [N_BITS-1:0]  rx_data_out;
    //wire [N_BITS-1:0]  tx_data_in;    
    wire               o_tx;
    
    assign o_tx_top  = o_tx;
    assign o_tx_done = tx_done;
    assign o_rx_done = rx_done;
    assign o_rx_data = rx_data_out;
    
    //receptor
    rx_uart u_rx_uart
    (
        .i_clk(i_clk), .i_reset(i_reset),
        .i_rx(i_rx_top), .i_ticks(tick),
        .o_rx_done(rx_done), .o_data_out(rx_data_out)
    );
    
    //transmisor
    tx_uart u_tx_uart
    (
        .i_clk(i_clk), .i_reset(i_reset),
        .i_tx_start(i_tx_start), .i_ticks(tick),
        .i_data_in(i_tx_data_in),
        .o_tx_done(tx_done), .o_data_out(o_tx)
    );
    
    //baudrate generator 
    baudrate_generator 
    #(
        .F_CLOCK(F_CLOCK), .BAUDRATE(BAUDRATE), .SAMPLING(SAMPLING)
     )
     u_bd_generator
     (
        .i_clk(i_clk), .i_reset(i_reset),
        .o_tick(tick)
     );    
endmodule
