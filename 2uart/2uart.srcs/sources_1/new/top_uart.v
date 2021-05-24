module top_uart
#(
    parameter N_BITS   = 8,
    parameter F_CLOCK  = 50E6,
    parameter BAUDRATE = 9600,
    parameter SAMPLING = 16
 )
 (
    input  wire              i_clk, i_reset,
    input  wire              i_start_tx_pc,
    input  wire              i_start_tx_fpga,
    input  wire [N_BITS-1:0] i_instruccion_archivo,
    input  wire [N_BITS-1:0] i_informacion    
 );
    
    //signals
    wire              tick;   
    wire              bit_pc_out;  
    wire              bit_fpga_out;   
    wire              rx_fpga_done; 
    wire [N_BITS-1:0] rx_fpga_out; 
    wire              rx_pc_done;
    wire [N_BITS-1:0] rx_pc_out;
    wire              tx_pc_done;
    wire              tx_fpga_done;
    
    
    //RX FPGA
    rx_uart u_rx_fpga(
        .i_clk(i_clk), .i_reset(i_reset),
        .i_rx(bit_pc_out), .i_ticks(tick),
        .o_rx_done(rx_fpga_done), .o_data_out(rx_fpga_out)
        );
        
    //TX PC
    tx_uart u_tx_pc(
        .i_clk(i_clk), .i_reset(i_reset),
        .i_tx_start(i_start_tx_pc), .i_ticks(tick),
        .i_data_in(i_instruccion_archivo),
        .o_tx_done(tx_pc_done), .o_data_out(bit_pc_out)
        );
    
    //RX PC
    rx_uart u_rx_pc(
        .i_clk(i_clk), .i_reset(i_reset),
        .i_rx(bit_fpga_out), .i_ticks(tick),
        .o_rx_done(rx_pc_done), .o_data_out(rx_pc_out)
        );
        
    //TX FPGA
    tx_uart u_tx_fpga(
        .i_clk(i_clk), .i_reset(i_reset),
        .i_tx_start(i_start_tx_fpga), .i_ticks(tick),
        .i_data_in(i_informacion),
        .o_tx_done(tx_fpga_done), .o_data_out(bit_fpga_out)
        );
        
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
