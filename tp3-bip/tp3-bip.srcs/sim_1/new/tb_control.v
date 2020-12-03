`timescale 1ns / 1ps

module tb_control();

    //INPUTS
    reg clk, reset;
    reg [15:0]  instruction;
    
    //OUTPUTS
    wire [10:0]  operand;
    wire [1:0]   sel_a;  
    wire         sel_b;
    wire         write_acc;
    wire         operation;
    wire         write_ram;
    wire         read_ram;
    wire [10:0]  addr;
    
    initial begin
        clk         = 1'b0;
        reset       = 1'b1;
        /*sel_a       = 2'b0;  
        sel_b       = 1'b0;
        write_acc   = 1'b0;
        operation   = 1'b0;
        write_ram   = 1'b0;
        read_ram    = 1'b0;
        addr        = 10'b0;*/
        
        #100 reset = 1'b0;
        #100 reset = 1'b1;
        
        instruction = 15'b001010000000001; //la idea era hacer el acumulador +1(?
           
        #100
        
        $finish;
    end
    
    always #10 clk = ~clk;
    
    
    
      
    
        
    control
        #(
        ) 
    control_blk
        (
            .i_clk(clk), .i_reset(reset),
            .i_instruction(instruction), 
            .o_operand(operand), .o_sel_a(sel_a),
            .o_sel_b(sel_b), .o_write_acc(write_acc),
            .o_operacion(operacion), .o_write_ram(write_ram),
            .o_read_ram(read_ram), .o_addr(addr) 
        );   
endmodule
