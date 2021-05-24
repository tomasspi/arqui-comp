module uart_pc
#(
    parameter N_BITS   = 8,
    parameter F_CLOCK  = 50E6,
    parameter BAUDRATE = 9600,
    parameter SAMPLING = 16
 )
 (
    input  wire i_clk, i_reset,
    input  wire i_rx_top,
    output wire o_tx_top,
    output wire o_rx_done,
    output wire o_tx_done
 );
    
    //signals
    wire               tick;   
    wire               rx_done;       
    wire               tx_done;
    wire [N_BITS-1:0]  rx_data_out;
    wire [N_BITS-1:0]  tx_data_in;         
    wire               o_tx;
    
    assign o_tx_top  = o_tx;
    assign o_tx_done = tx_done;
    assign o_rx_done = rx_done;
    
    //instancia modulos con RX->TX (loopback)
    //receptor
    rx_uart u_rx_uart(
        .i_clk(i_clk), .i_reset(i_reset),
        .i_rx(i_rx_top), .i_ticks(tick),
        .o_rx_done(rx_done), .o_data_out(rx_data_out)
        );
    
    //transmisor
    tx_uart u_tx_uart(
        .i_clk(i_clk), .i_reset(i_reset),
        .i_tx_start(rx_done), .i_ticks(tick),
        .i_data_in(rx_data_out),
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

