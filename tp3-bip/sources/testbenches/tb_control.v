`timescale 1ns / 1ps

module tb_control();

    //INPUTS
    reg        clk, reset; 
    reg [15:0] instruction;
    wire       locked;
    wire       clk_out;
    
    //OUTPUTS
    wire [10:0] operand;
    wire [1:0]  sel_a;  
    wire        sel_b;
    wire        write_acc;
    wire        operation;
    wire        write_ram;
    wire        read_ram;
    wire [10:0] addr;
    
    initial begin
        clk = 1'b0;
        reset = 1'b1;
        #20
        reset = 1'b0;
        
        wait(locked == 1'b1);
           
        #20    
        instruction = 16'b0010100000000001; // ACC+1
        
        #100
        $finish;
    end
    
    always #5 clk = ~clk;

     clock u_clock
     (
        .clk_in1(clk),
        .reset(reset),
        .clk_out1(clk_out),
        .locked(locked)
     );
            
    control u_control_blk
    (
        .i_clk(clk_out), .i_reset(reset),
        .i_instruction(instruction), 
        .o_operand(operand), .o_sel_a(sel_a),
        .o_sel_b(sel_b), .o_write_acc(write_acc),
        .o_operacion(operation), .o_write_ram(write_ram),
        .o_read_ram(read_ram), .o_addr(addr)
    );   
endmodule
