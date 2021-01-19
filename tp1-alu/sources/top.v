`timescale 1ns / 1ps

module top
#
(
    parameter   N_BITS = 8 
)
(
    input  wire [N_BITS-1:0] i_switch,
    input  wire [2:0]        i_boton,
    input  wire              i_clock,
    output wire [N_BITS-1:0] o_leds
);
    reg [N_BITS-1:0] dato_a;
    reg [N_BITS-1:0] dato_b;
    reg [5:0]        operacion;
    
    //instancia el modulo ALU
    alu 
    #
    (
        .N_BITS(N_BITS)
    )
    my_alu
    (
        .i_dato_A(dato_a),
        .i_dato_B(dato_b),
        .i_operacion(operacion),
        .o_alu(o_leds)
    );
    
    //asigna los numeros ingresados segun los
    //botones
    always@(posedge i_clock) begin:inputs
    
        case(i_boton)
        3'b001: dato_a <= i_switch;
        3'b010: dato_b <= i_switch;
        3'b100: operacion <= i_switch;
        endcase
         
    end//inputs
            
endmodule
