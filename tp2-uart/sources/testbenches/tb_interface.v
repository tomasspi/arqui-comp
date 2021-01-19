`timescale 1ns / 1ps

module tb_interface();

    localparam  DATA_BITS  = 8;  // # buffer bits
    localparam  OP_BITS    = 6;  // Operation bits
	           
   //INPUT
    reg                       clk, reset;
    reg                       rx_done;
    reg      [DATA_BITS-1:0]  rx_data_in;
    wire     [DATA_BITS-1:0]  alu_data_in;
    
    //OUTPUT
	wire    [DATA_BITS-1 : 0] dato_a;
	wire    [DATA_BITS-1 : 0] dato_b;
	wire    [OP_BITS-1 : 0]   operation;
    wire                      tx_start;
    wire    [DATA_BITS-1:0]   data_out;

    initial begin
        clk        = 1'b0; 
        reset      = 1'b1;
        rx_done    = 1'b0;
        rx_data_in = {DATA_BITS{1'b0}};

        #40 reset = 1'b0; // Desactivo la accion del reset.

        rx_data_in = 8'b00000001; //data a
        #20
        
        rx_done = 1'b1;
        #20
        rx_done = 1'b0;
        
        rx_data_in = 8'b00000010; //data b
        #20
        
        rx_done = 1'b1;
        #20
        rx_done = 1'b0;
        
        rx_data_in = 8'b00100000; //suma
        #20
        
        rx_done = 1'b1;
        #20
        rx_done = 1'b0;
        
        #60 reset = 1'b1;
        $finish;
    end
    
    always #10 clk = ~clk; // Simulacion de clock.

    interface 
    #(
        .DATA_BITS    (DATA_BITS),
        .OP_BITS      (OP_BITS)
    )
    u_interface 
    (
        .i_clk              (clk),
        .i_reset            (reset),
        .i_rx_done          (rx_done),
        .i_rx_data_in       (rx_data_in),
        .i_alu_data_in      (alu_data_in),
        .o_dato_A           (dato_a),
        .o_dato_B           (dato_b),
        .o_op               (operation),
        .o_tx_start         (tx_start),
        .o_data_out         (data_out)
    );
    
    alu #(
        .NB_DATA (DATA_BITS)
    )

    u_alu (
        .i_dato_A (dato_a),
        .i_dato_B (dato_b),
        .i_operacion (operation),
        .o_alu (alu_data_in)
    );

endmodule
