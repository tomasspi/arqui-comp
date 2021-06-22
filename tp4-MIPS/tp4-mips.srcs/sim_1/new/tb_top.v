`timescale 1ns / 1ps

module tb_top();

    // INPUTS
    reg  clk, reset;
    reg  rx;
    wire tx, rx_done, tx_done;
    
    wire done;
    
    integer fd, ii;
    reg  [31:0] data_to_send;
    
    always #10 clk = ~clk;  // Simulacion de clock 100MHz

    /*
        aca es donde se abre el archivo que se
        genera con el micomips (compilador)
        se mandan las instrucciones, y por ultimo
        el modo de ejecucion.
    */

    initial begin        
        clk   = 1'b0;
        reset = 1'b1;

        #100
        reset = 1'b0;
        
        fd = $fopen("../../../../tp4-mips.srcs/sources_1/new/programa.bin", "r");
        
        //recorre el archivo y envia las instrucciones
        while(!$feof(fd))
        begin
            //lee linea y la asigna al dato a enviar
            $fgets(data_to_send, fd);
            
            //comienza el envio del dato
            #104320
            rx = 1'b0; //bit de inicio
            
            //comienzo a enviar el dato random de N_BITS bits
            //de LSB a MSB
            for(ii = 0; ii < 32; ii = ii + 1)
                #104320 rx = data_to_send[ii];
            
            #104320
            rx = 1'b1; //bit de stop
        end
        
        //ya envio el programa
        $fclose(fd);
        
        /*
            TODO: envio del modo de ejecucion 
        */
        
        wait(done == 1'b1);
        #20
        
        $finish;
    end

    top u_top
    (
        .i_clk(clk), .i_reset(reset),
        .i_rx(rx), .i_tx(tx), 
        .o_rx_done(rx_done), .o_tx_done(tx_done),  
        .o_done(done)
    );

endmodule
