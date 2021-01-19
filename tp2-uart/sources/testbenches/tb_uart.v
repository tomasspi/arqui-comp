`timescale 1ns / 1ps

module tb_uart();

    localparam N_BITS   = 8;
    localparam F_CLOCK  = 50E6;
    localparam BAUDRATE = 9600;
    localparam SAMPLING = 16;
    localparam CNT_BITS = $clog2(N_BITS);
    
    reg               clk, reset;
    reg  [N_BITS-1:0] data;
    reg               rx;
    wire              tx_done;
    wire              tx;
    
    reg [CNT_BITS-1:0] ii;
    
    /*
     * cada 326 ciclos de reloj se produce 1 tick
     * hay que contar 16 ticks, entonces
     * 326*16 = 5216
     *
     * 1 ciclo            -> 20ns
     * 326 ciclos (1tick) -> 104320ns
     */
    initial begin
        clk   = 1'b0;
        rx    = 1'b1;
        reset = 1'b1;
        
        #40
        reset = 1'b0;
        
        //Mando dato random
        data = {$urandom()};

        #104320
        rx = 1'b0; //bit de inicio
        
        //comienzo a enviar el dato random de N_BITS bits
        //de LSB a MSB
        for(ii = 0; ii < N_BITS; ii = ii + 1)
            #104320 rx = data[ii];
        
        #104320
        rx = 1'b1; //bit de stop    
    end
    
    always #10 clk = ~clk;
    
    always @(posedge clk)
    begin
        if(tx_done == 1)
        begin
            $display("------ TEST OK! ------");
            $finish;
        end
    end
    
    top_uart
    #(
        .N_BITS(N_BITS), .F_CLOCK(F_CLOCK), 
        .BAUDRATE(BAUDRATE), .SAMPLING(SAMPLING)
     )
    u_top_uart
    (
        .i_clk(clk), .i_reset(reset),
        .i_rx_top(rx),
        .o_tx_top(tx), .o_tx_done(tx_done)
    );    
endmodule
