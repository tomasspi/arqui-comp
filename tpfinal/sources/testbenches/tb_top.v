`timescale 1ns / 1ns

module tb_top();

    // INPUTS
    reg  clk, reset, valid;
    reg  rx;
    wire tx, rx_done, tx_done;
    
    wire done;
    
    integer fd, i, ii, j;
    reg  [31:0] data_to_send;
    wire [7:0] rx_data;    
    wire halt;
    
    always #5 clk = ~clk;  // Simulacion de clock 100MHz

    /*
        aca es donde se abre el archivo que se
        genera con el micomips (compilador)
        se mandan las instrucciones, y por ultimo
        el modo de ejecucion.
    */

    initial begin        
        clk   = 1'b0;
        valid = 1'b0;
        reset = 1'b1;
        data_to_send = 32'b0;
        rx = 1'b1;
        
        #100
        reset = 1'b0;
        
        //abre el archivo binario
        fd = $fopen("C:/users/mi_pc/Desktop/programa.bin", "r");
        
        //recorre el archivo y envia las instrucciones
        while(data_to_send != ({32 {1'b1}}))
        begin
            //lee linea y la asigna al dato a enviar            
            $fscanf(fd,"%b",data_to_send);
            
            for(j = 0; j < 4; j = j + 1)
            begin    
                //comienza el envio del dato
                #104320
                rx = 1'b0; //bit de inicio
                    
                //comienzo a enviar la instruccion de N_BITS bits
                //de LSB a MSB                
                for(ii = 0; ii < 8; ii = ii + 1)
                    #104320 rx = data_to_send[(8*j)+ii];
                    
                #104320
                rx = 1'b1; //bit de stop
            end
        end
        
        //ya envio el programa, cierra el archivo
        $fclose(fd);
                
        //------ MODO DE EJECUCION ------//
        
        // -- CONTINUO
        //comienza el envio del modo de exec
        #104320
        rx = 1'b0; //bit de inicio
            
        //comienzo a enviar el dato de N_BITS bits
        //de LSB a MSB
        for(ii = 0; ii < 8; ii = ii + 1)
            #104320 rx = 1'b0;
            
        #104320
        rx = 1'b1; //bit de stop
        
        //step (si no manda, se clava)
        #104320
        rx = 1'b0; //bit de inicio
            
        //comienzo a enviar el dato de N_BITS bits
        //de LSB a MSB
        for(ii = 0; ii < 8; ii = ii + 1)
            #104320 rx = 1'b0;
            
        #104320
        rx = 1'b1; //bit de stop
        //pone la señal de valid del procesador en 1
        valid = 1'b1;
        wait(done == 1'b1);
        // -- CONTINUO F
        
        // -- PASO A PASO 
//        #104320
//        rx = 1'b0; //bit de inicio
            
//        //comienzo a enviar el dato de N_BITS bits
//        //de LSB a MSB
//        #104320
//        rx = 1'b1; //modo paso a paso
        
//        for(ii = 0; ii < 8; ii = ii + 1)
//            #104320 rx = 1'b0;
            
//        #104320
//        rx = 1'b1; //bit de stop
        
//        //espera a que el uart termine de recibir el dato
//        wait(rx_done == 1'b1);
//        //pone la señal de valid del procesador en 1
//        valid = 1'b1;
//        //espera el envio de la info
//        wait(done == 1'b1);
        
//        // ENVIO STEP (5 en este caso para terminar el programa
//        for(i = 0; i < 5; i = i + 1)
//        begin
//            #104320
//            rx = 1'b0; //bit de inicio
                
//            #104320
//            rx = 1'b1; //step propiamente dicho
            
//            for(ii = 0; ii < 7; ii = ii + 1)
//                #104320 rx = 1'b0;
                
//            #104320
//            rx = 1'b1; //bit de stop
//            wait(done == 1'b1);
//        end
//        //-- PASO A PASO F
        
        $finish;
    end

    top u_top
    (
        .i_clk(clk), .i_reset(reset), .i_valid(valid),
        .i_rx(rx), .o_tx(tx), 
        .o_rx_done(rx_done), .o_tx_done(tx_done),  
        .o_done(done), .o_rx_data(rx_data), .o_halt(halt)
    );

endmodule
