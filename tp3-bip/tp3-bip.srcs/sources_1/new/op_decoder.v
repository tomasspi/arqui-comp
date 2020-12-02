`timescale 1ns / 1ps

module op_decoder
(
    input  wire       i_reset,
    input  wire [4:0] i_opcode,
    
    output reg        o_write_pc,
    output reg  [1:0] o_sel_a,
    output reg        o_sel_b,
    output reg        o_write_acc,
    output reg        o_operacion,
    output reg        o_write_ram,
    output reg        o_read_ram
);

    localparam [4:0] HLT  = 4'b00000;
    localparam [4:0] STO  = 4'b00001;
    localparam [4:0] LD   = 4'b00010;
    localparam [4:0] LDI  = 4'b00011;
    localparam [4:0] ADD  = 4'b00100;
    localparam [4:0] ADDI = 4'b00101;
    localparam [4:0] SUB  = 4'b00110;
    localparam [4:0] SUBI = 4'b00111;

    always@(*)begin:decode
        if(i_reset)
            o_write_pc = 1'b0;
        else
            o_write_pc = 1'b1;
            
        //valores iniciales
        o_sel_a     = 2'b0;
        o_sel_b     = 1'b0;
        o_write_acc = 1'b0;
        o_operacion = 1'b0;
        o_write_ram = 1'b0;
        o_read_ram  = 1'b0;
        
        case(i_opcode)
            HLT:
            begin
                o_write_pc = 1'b0;
            end
            
            STO:
            begin
                o_write_ram = 1'b1;
            end
            
            LD: 
            begin
                o_write_acc = 1'b1;
                o_read_ram  = 1'b1;
            end
            
            LDI:
            begin
                o_sel_a     = 2'b01;
                o_write_acc = 1'b1;
            end
            
            ADD:
            begin
                o_sel_a     = 2'b10;
                o_sel_b     = 1'b0;
                o_write_acc = 1'b1;
                o_read_ram  = 1'b1;
            end
            
            ADDI:
            begin
                o_sel_a     = 2'b10;
                o_sel_b     = 1'b1;
                o_write_acc = 1'b1;
            end
            
            SUB:
            begin
                o_sel_a     = 2'b10;
                o_sel_b     = 1'b0;
                o_operacion = 1'b1;
                o_write_acc = 1'b1;
                o_read_ram  = 1'b1;
            end
            
            SUBI:
            begin
                o_sel_a     = 2'b10;
                o_sel_b     = 1'b1;
                o_operacion = 1'b1;
                o_write_acc = 1'b1;
            end
            
            default:
            begin
                o_write_pc = 1'b0;
            end
        endcase
    end
endmodule
