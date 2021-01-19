`timescale 1ns / 1ps

module interface
#(
    parameter DATA_BITS = 8,
    parameter OP_BITS   = 6 
 )
 (
    input wire                 i_clk, i_reset,
    input wire                 i_rx_done,
    input      [DATA_BITS-1:0] i_rx_data_in,  //el dato ingresado
    input      [DATA_BITS-1:0] i_alu_data_in, //el resultado de la ALU
    
    output reg [DATA_BITS-1:0] o_dato_A,
    output reg [DATA_BITS-1:0] o_dato_B,
    output reg [OP_BITS-1:0]   o_op,
    output reg                 o_tx_start,
    output     [DATA_BITS-1:0] o_data_out     //dato transmitido
 );
 
    //estados
    localparam [1:0] DATO_A   = 2'b00;
    localparam [1:0] DATO_B   = 2'b01;
    localparam [1:0] ID_OP    = 2'b10;
    localparam [1:0] SEND_RES = 3'b11;
    
    //registros para las transiciones
    reg [1:0]           state_reg, next_state;
    
    reg [DATA_BITS-1:0] dato_a    = {DATA_BITS {1'b0}};
    reg [DATA_BITS-1:0] dato_b    = {DATA_BITS {1'b0}};
    reg [OP_BITS-1:0]   operacion = {OP_BITS   {1'b0}};
    
    assign o_data_out = i_alu_data_in;
    
    always@(posedge i_clk) begin:states
        if(i_reset)
        begin
            state_reg  <= DATO_A;
            o_dato_A   <= {DATA_BITS {1'b0}};
            o_dato_B   <= {DATA_BITS {1'b0}};
            o_op       <= {OP_BITS   {1'b0}};
        end
        else
        begin
            state_reg  <= next_state;
            o_dato_A   <= dato_a;
            o_dato_B   <= dato_b;
            o_op       <= operacion;
        end
    end//states
        
    always @(posedge i_clk) begin:data
        next_state = state_reg;  
        
        o_tx_start = 1'b0;
        
        if(state_reg == SEND_RES)
        begin
            next_state  = DATO_A;
            o_tx_start  = 1'b1;
        end
            
        if(i_rx_done)
        begin              
            case(state_reg)
            DATO_A:
            begin
                dato_a   = i_rx_data_in;
                next_state = DATO_B;    
            end
                        
            DATO_B:
            begin
                dato_b   = i_rx_data_in;
                next_state = ID_OP;
            end
                        
            ID_OP:
            begin
                operacion  = i_rx_data_in;
                next_state = SEND_RES;
            end
            
            SEND_RES:;
            endcase
        end     
    end    
endmodule
