`timescale 1ns / 1ps

module tb_registers();

    //inputs
    reg clk, reset, valid;
    reg [5:0] reg1, reg2, write_reg;
    reg regwr;
    reg [31:0] write_data;
    wire [31:0] read_data_1, read_data_2;
    
    initial begin
        clk = 1'b0;
        reset = 1'b1;
        
        #20
        reset = 1'b0;
        
        #20
        valid = 1'b1;
        
        write_reg = 5'b01000;
        write_data = 32'b10;
        
        regwr = 1'b1;
        #20
        regwr = 1'b0;

        reg1 = 5'b01000;
        reg2 = 5'b01001;
        #20
        $finish;
    end
    
    always #10 clk = ~clk;
    
    registers u_register
    (
        .i_clk(clk), .i_reset(reset), .i_valid(valid),
        .i_read_reg_1(reg1), .i_read_reg_2(reg2), 
        .i_write_reg(write_reg), .i_write_data(write_data), .i_reg_write(regwr),
        .o_read_data_1(read_data_1), .o_read_data_2(read_data_2)
    );
endmodule
