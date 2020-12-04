`timescale 1ns / 1ps

module tb_datapath();

    // INPUTS
    reg        clk, reset;
    reg [1:0]  sel_a;
    reg        sel_b;
    reg        write_acc;
    reg        operation;
    reg [11:0] operando;
    reg [15:0] i_memory_data;                      
    
    // OUTPUTS
    wire [11:0] addr;
    wire [15:0] o_memory_data;
    wire        clk_out, locked;
    
    initial begin
        clk           = 1'b0;
        sel_a         = 2'b00;
        sel_b         = 1'b0;
        operation     = 1'b0;
        write_acc     = 1'b0;
        operando      = 12'b0;
        i_memory_data = 16'b0;
        
        reset = 1'b1;        
        #20
        reset = 1'b0; 
        
        wait(locked == 1);

        //LDI: ACC<-operando (acc = 1)
        #20
        sel_a         = 2'b01;
        sel_b         = 1'b0;
        write_acc     = 1'b1;
        operation     = 1'b1;
        operando      = 16'b1;
        i_memory_data = 16'b10;
        
        //ADD: ACC<-ACC+DRAM[operando] (acc+=4 -> 5)
        #20
        sel_a         = 2'b10;
        sel_b         = 1'b0;
        operation     = 1'b0;
        write_acc     = 1'b1;
        operando      = 16'b11;
        i_memory_data = 16'b100;
        
        //ADDI: ACC<-ACC+operando (acc+=5 -> 10)
        #20
        sel_a         = 2'b10;
        sel_b         = 1'b1;
        operation     = 1'b0;
        write_acc     = 1'b1;
        operando      = 16'b101;
        i_memory_data = 16'b110;
        
        //SUB: ACC<-ACC-DRAM[operando] (acc-=8 -> 2)
        #20
        sel_a         = 2'b10;
        sel_b         = 1'b0;
        operation     = 1'b1;
        write_acc     = 1'b1;
        operando      = 16'b111;
        i_memory_data = 16'b1000;
        
        //SUBI: ACC<-ACC-operando (acc-=1 -> 1)
        #20
        sel_a         = 2'b00;
        sel_b         = 1'b1;
        operation     = 1'b1;
        write_acc     = 1'b1;
        operando      = 16'b0001;
        i_memory_data = 16'b0001;
        
        #100 
        $finish;
    end
    
    always #5 clk = ~clk;  // Simulacion de clock
    
     clock u_clock
     (
        .clk_in1(clk),
        .reset(reset),
        .clk_out1(clk_out),
        .locked(locked)
     );
    
    // Modulo datapath
    datapath u_datapath
    (
        .i_clk(clk_out), .i_reset(reset),
        .i_sel_a(sel_a),
        .i_sel_b(sel_b),
        .i_write_acc(write_acc),
        .i_operacion(operation),
        .i_operando(operando),
        .i_memory_data(i_memory_data),
        .o_data_addr(addr),
        .o_memory_data(o_memory_data)            
    );
    
endmodule