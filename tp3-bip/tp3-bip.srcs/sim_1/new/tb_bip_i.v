`timescale 1ns / 1ps

module tb_bip_i();

    // INPUTS
    reg         clk;
    reg         reset;
    reg [15:0]  instruccion;
    reg [15:0]  in_data;
    
    // OUTPUTS
    wire [10:0] program_memory;
    wire [10:0] data_addr;
    wire [15:0] out_data;
    wire        write_ram;
    wire        read_ram;

    // VARIABLES
    reg [15:0]  data_memory_out;
    reg [15:0]  data_memory_in;
    wire        clk_out, locked;
    
    always @(*) begin:ram_access
        if (read_ram) 
            in_data = data_memory_out;
        
        if (write_ram) 
            data_memory_in = out_data;        
    end

    initial begin
        clk             = 1'b0;
        reset           = 1'b1;
        instruccion     = {15{1'b0}};
        data_memory_out = {15{1'b0}};

        #20
        reset = 1'b0; 
        
        wait(locked == 1);
        
        data_memory_out = $random() % 2048;

        #20 instruccion = 16'b00010_000_0000_0001; // Load variable 0x01 => ACC=DRAM[0x01]
        #20 instruccion = 16'b00101_000_0000_0010; // Add immediate +0x2 => ACC=DRAM[0x01]+0x02
        #20 instruccion = 16'b00001_000_0000_1001; // Store in 0x9 =>DRAM[0x09]=ACC
        #20 instruccion = 16'b00011_000_0000_1000; // Load immediate 0x08 => ACC=0x08
        #20 instruccion = 16'b00110_000_0000_0010; // Substract variable in 0x02 => ACC=0x08-DRAM[0x02]
        #20 instruccion = 16'b00100_000_0000_0010; // Add variable in 0x02 => ACC=0x08
        #20 instruccion = 16'b00111_000_0000_0100; // Substract immediate 0x04 => ACC = 0x04
        #20 instruccion = 16'b00000_000_0000_0000; // Halt
        
        #20 $finish;
    end
 
    always #5 clk = ~clk;  // Simulacion de clock 100MHz
    
     clock u_clock
     (
        .clk_in1(clk),
        .reset(reset),
        .clk_out1(clk_out),
        .locked(locked)
     );
    bip_i u_tb_bip_i
    (
        .i_clk(clk_out), .i_reset(reset),
        .i_instruction(instruccion),
        .i_data_memory(in_data),
        .o_pc(program_memory),
        .o_data_addr(data_addr),
        .o_data_memory(out_data),
        .o_write_ram(write_ram),
        .o_read_ram(read_ram)
    );
endmodule
