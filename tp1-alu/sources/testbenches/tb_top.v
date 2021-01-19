`timescale 1ns / 1ps

module tb_top();
  
  localparam N_BITS        = 8;
  localparam N_OPERACIONES = 8; 
  
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
  reg  [N_BITS-1:0] switch; 
  reg  [2:0]        boton;  
  reg               clk;
  wire [N_BITS-1:0] leds;
 
  reg  [3:0]        id_op; //para realizar las operaciones
  
  initial begin
    //inicializacion de variables en 0
    clk    = 1'b0;
    boton  = 3'b0;
    switch = {N_BITS {1'b0}};
    id_op  = 4'b0;
    
    //asigna un valor a i_dato_A
    #100
    switch = {$urandom()}; 
    #50
    boton = 3'b001;
    #50
    boton = 3'b000;
    
    //asigna un valor a i_dato_B
    #50
    switch = {$urandom()};
    #50
    boton = 3'b010;
    #50
    boton = 3'b000;

    //realiza todas las operaciones de la alu con 
    //los datos dados
    for(id_op = 0; id_op < N_OPERACIONES; id_op = id_op + 1)
	begin
	
	   #50
	   boton = 3'b100;
	   case(id_op)
	   4'd0: switch = ADD;
	   4'd1: switch = SUB;
	   4'd2: switch = AND;
	   4'd3: switch = OR;
	   4'd4: switch = XOR;
	   4'd5: switch = SRA;
	   4'd6: switch = SRL;
	   4'd7: switch = NOR;
	   endcase
	   
	   #50
       boton = 3'b000;	   
	end
  end
  
  //inicio el modulo top que, asu vez,
  //instancia la ALU
  top 
  #(
    .N_BITS(N_BITS)
  )
  u_top
  (
    .i_switch	 (switch),
    .i_boton	 (boton),
    .i_clock     (clk),
    .o_leds      (leds)
  );
  
  //genera el clock
  always #10 clk = ~clk;
endmodule
