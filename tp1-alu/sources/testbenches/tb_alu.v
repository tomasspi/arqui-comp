`timescale 1ns / 1ps

module tb_alu();
  
  localparam N_BITS         = 8;
  
  //operaciones de la alu
  localparam ADD = 6'b100000;
  localparam SUB = 6'b100010;
  localparam AND = 6'b100100;
  localparam OR  = 6'b100101;
  localparam XOR = 6'b100110;
  localparam SRA = 6'b000011;
  localparam SRL = 6'b000010;
  localparam NOR = 6'b100111;
  
  // señales para el testbench  
  reg  [N_BITS-1:0]         dato_a; 
  reg  [N_BITS-1:0]         dato_b; 
  reg  [N_BITS-3:0]         operacion; 
  wire [N_BITS-1:0]         resul;
  reg  [N_BITS-1:0]         resul_esperado;
  reg  [3:0]                id_op; //para realizar las operaciones
  reg                       clk;
  reg                       test_start;
  
  initial begin
    //inicializacion de variables en 0
    id_op  = 4'b0;
    dato_a = 8'b0;
    dato_b = 8'b0;
    operacion = 6'b0;
    resul_esperado = 8'b0;
    test_start = 1'b0;
    clk = 1'b0;
    
    #15
    test_start = 1'b1;
    #200
    
    $display ("-----TEST OK!-----");
    $finish();
  end
  
  
  always@(posedge clk)
  begin
    dato_a = $random();
    dato_b = $urandom();
  end
  
  
  always @(posedge clk)
  begin
    case(id_op)
    4'd0:
        begin
            operacion <= ADD;  
            resul_esperado <= dato_a + dato_b;
        end
    4'd1:
        begin
            operacion <= SUB;
            resul_esperado <= dato_a - dato_b;                                                                          
        end
    4'd2:
        begin
            operacion <= AND;
            resul_esperado <= dato_a & dato_b;
        end
    4'd3:
        begin
            operacion <= OR;
            resul_esperado <= dato_a | dato_b;
        end
    4'd4:
        begin
            operacion <= XOR;
            resul_esperado <= dato_a ^ dato_b;
        end
    4'd5:
        begin
            operacion <= SRA;
            resul_esperado <= dato_a >>> dato_b;
        end
    4'd6:
        begin
            operacion <= SRL;
            resul_esperado <= dato_a >> dato_b;
        end
    4'd7:
        begin
            operacion <= NOR;
            resul_esperado <= ~(dato_a | dato_b);
        end
    default: $finish();
    endcase
  end 
  
  always #10 clk = ~clk;   
  
  always @(posedge clk)
  begin
    if (test_start)
     begin
        if(resul != resul_esperado)
            begin
                $display("----- TEST FALLO -----");
                $display(id_op); 
                $display(resul);                                        
                $display(resul_esperado);                                                                                               
                $finish();
            end //end if               
        id_op = (id_op + 1) % 8;  
     end
  end              
  
  alu 
  #
  (
        .N_BITS(N_BITS)
  )
  my_alu
  (
        .i_dato_A(dato_a),
        .i_dato_B(dato_b),
        .i_operacion(operacion),
        .o_alu(resul)
   );
endmodule