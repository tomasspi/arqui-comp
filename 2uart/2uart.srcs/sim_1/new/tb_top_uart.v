`timescale 1ns / 1ps

module tb_top_uart();

    reg clk, reset;
    reg start_tx_fpga;
    reg start_tx_pc;
    reg [7:0] archivo;
    reg [7:0] informacion;
    
    reg[31:0] str;  
    integer     fd, fdO;  
    
    initial begin
        clk = 1'b0;
        reset = 1'b1;
        start_tx_fpga = 1'b0;
        start_tx_pc = 1'b0;
        
        archivo = 8'b0;
        informacion = 8'b0;
        
        #20
        reset = 1'b0;
        
        fd = $fopen("programa.mem", "r");
  
        fdO = $fopen("my_file.txt", "w");
   
        if(fd)
        begin  
            // Keep reading lines until EOF is found  
            while (! $feof(fd)) 
            begin  
              #1043200
              $fscanf(fd,"%b\n",str); //scan each line and get the value as an 
              
              //ya se abrio el archivo, entonces hay que:
              //mandar al UART del procesador
              archivo = str;
              //esperar a que termine de recibirlo
              start_tx_pc = 1'b1;     
              #40
              start_tx_pc = 1'b0;
              //hacer el loop, entonces, en vez de haber un display, tiene que haber un wait for el tx-done
              
              //ESCRIBIR EL ARCHIVO DE LO QUE RECIBIO!!!!
              //entonces del lado del cpu, tiene que ir esta instruccion
              //luego de recibir la instruccion.
              //$fdisplay(fdO,"%b",str); //write as decimal  
            end
            
            $fclose(fd);  
        end
        else 
          $display("ERROR");        
        
//        #1043200
        
//        start_tx_fpga = 1'b1;
//        #40
//        start_tx_fpga = 1'b0;
        
        #(1043200*2)
        //pasado este tiempo, "el cpu" ya recibio todo el programa
        //entonces queda hacer la ejecucion continua o paso a paso
        $finish;
    end
    
    always #10 clk = ~clk;

    top_uart u_top
    (
        .i_clk(clk), .i_reset(reset), .i_start_tx_pc(start_tx_pc), 
        .i_start_tx_fpga(start_tx_fpga), 
        .i_instruccion_archivo(archivo), 
        .i_informacion(informacion)
    );

    /*
        si paso a paso y comando
    
    */
    

endmodule
