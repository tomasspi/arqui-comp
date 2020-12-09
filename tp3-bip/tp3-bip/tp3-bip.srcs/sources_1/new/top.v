`timescale 1ns / 1ps

module top
(
    input  wire i_clk,
    input  wire i_reset,
    input  wire i_valid,
    output wire o_tx,
    output wire o_tx_done
);

    wire [10:0] program_addr; //program counter
    wire [10:0] data_addr;    //direccion de DM
    wire [15:0] in_data;      //dato a leer
    wire [15:0] out_data;     //dato a guardar
    wire [15:0] instruccion;  //insturccion a decodificar
    wire        write_ram;
    wire        read_ram;
    
    wire tx_start;
    wire tick;
    wire uart_out, tx_done;
    
    assign o_tx = uart_out;
    assign o_tx_done = tx_done;
    
    // MODULOS
    
    // BIP I
    bip_i u_bip_i
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_instruction(instruccion),
        .i_data_memory(in_data),
        .o_pc(program_addr),
        .o_data_addr(data_addr),
        .o_data_memory(out_data),
        .o_write_ram(write_ram),
        .o_read_ram(read_ram)
    );
    
    // Memoria de programa
    program_memory u_program_memory
    (
        .i_valid(i_valid),
        .i_clk(i_clk),
        .i_addr(program_addr),
        .o_instruction(instruccion)
    );
    
    // Memoria de datos
    data_memory u_data_memory
    (
        .i_valid(i_valid),
        .i_clk(i_clk),
        .i_addr(data_addr),
        .i_data(out_data),
        .i_read_enable(read_ram),
        .i_write_enable(write_ram),
        .o_data(in_data)
    );
    
    // Interfaz entre el CPU y le UART
    interfaz_uart u_interfaz_uart
    (
//        .i_clk(i_clk),
        .i_valid(i_valid),
        .i_instruccion(instruccion),
        .o_tx_start(tx_start)
    );
    
    // UART
    // bps
    baudrate_generator u_bd_generator
    (
        .i_clk(i_clk), .i_reset(i_reset),
        .o_tick(tick)
    );
    
    // transmisor
    tx_uart u_tx
    (
        .i_clk(i_clk), .i_reset(i_reset),
	    .i_tx_start(tx_start), 
	    .i_ticks(tick),
	    .i_data_in(out_data),
	    .o_tx_done(tx_done),
	    .o_data_out(uart_out)
    );

endmodule
