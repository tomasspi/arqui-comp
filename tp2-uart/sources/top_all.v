`timescale 1ns / 1ps

module top_all
#(
    parameter N_BITS   = 8,
    parameter OP_BITS  = 6,
    parameter F_CLOCK  = 50E6,
    parameter BAUDRATE = 9600,
    parameter SAMPLING = 16
 )
 (
    input  wire i_clk, i_reset,
    input  wire i_rx_top,
    output wire o_tx_top,
    output wire o_tx_done
 );
    
    //signals
    wire               tick;          
    wire               rx_done;       
    wire               tx_done;
    wire               tx_start;
    wire [N_BITS-1:0]  tx_data_in; 
    wire [N_BITS-1:0]  rx_data_out;        
    wire [N_BITS-1:0]  dato_a;
    wire [N_BITS-1:0]  dato_b;   
    wire [N_BITS-1:0]  o_alu;
    wire [OP_BITS-1:0] operacion;
    wire               o_tx;
    
    assign o_tx_top  = o_tx;
    assign o_tx_done = tx_done;
    
    //==================== UART ====================
    
    //instancia modulos
    //receptor
    rx_uart
    #(
        .DATA_BITS(N_BITS), .N_TICKS(SAMPLING)
     ) 
     u_rx_uart
     (
        .i_clk(i_clk), .i_reset(i_reset),
        .i_rx(i_rx_top), .i_ticks(tick),
        .o_rx_done(rx_done), .o_data_out(rx_data_out)
     );
    
    //transmisor
    tx_uart    
    #(
        .DATA_BITS(N_BITS), .N_TICKS(SAMPLING)
     )  
     u_tx_uart
     (
        .i_clk(i_clk), .i_reset(i_reset),
        .i_tx_start(tx_start), .i_ticks(tick),
        .i_data_in(tx_data_in),
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
    
    //==============================================
    
     //interfaz
     interface
     #(
        .DATA_BITS(N_BITS), .OP_BITS(OP_BITS)
      )
      u_interface
      (
        .i_clk(i_clk), .i_reset(i_reset),
        .i_rx_done(rx_done), .i_rx_data_in(rx_data_out),
        .i_alu_data_in(o_alu),
        .o_dato_A(dato_a), .o_dato_B(dato_b), .o_op(operacion),
        .o_tx_start(tx_start), .o_data_out(tx_data_in)
      );
     
     //ALU
     alu
     #(
        .N_BITS(N_BITS)
      )
      u_alu
      (
        .i_dato_A(dato_a), .i_dato_B(dato_b),
        .i_operacion(operacion),
        .o_alu(o_alu) 
      );
    
endmodule