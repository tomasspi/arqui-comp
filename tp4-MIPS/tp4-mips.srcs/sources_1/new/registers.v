module registers#
(
	parameter	N_BITS		= 32,
	parameter	N_BITS_REG	= 5
)
(
    input  wire       			 i_clk,
    input  wire     		     i_reset,
    input  wire       		 	 i_valid,
    input  wire [N_BITS_REG-1:0] i_read_reg_1,
	input  wire [N_BITS_REG-1:0] i_read_reg_2,
	input  wire [N_BITS_REG-1:0] i_write_reg,
	input  wire [N_BITS-1:0]	 i_write_data,
	input  wire 	   			 i_reg_write,  //señal de control
    
    output reg  [N_BITS-1:0] 	 o_read_data_1,
    output reg  [N_BITS-1:0] 	 o_read_data_2,
    
    //salida de los registros para debug
    output reg  [N_BITS*N_BITS-1:0] 	 o_registros
);
 
 localparam BITS_CONTADOR = $clog2(N_BITS);
 
 reg [N_BITS-1:0] 	   registros [N_BITS-1:0];
 reg [BITS_CONTADOR:0] i,j;
 
 //inicializa los registros 0 a 31
 initial begin
	for(i = 0; i < N_BITS; i = i + 1)
		registros[i] = {N_BITS{1'b0}};
	
	registros[5]  = 32'b1;     //1
	registros[6]  = 32'b10;    //2
	registros[16] = 32'b10000; //16
	registros[24] = 32'b11000; //24
	registros[28] = 32'b10101; //21
 end

 always@(*)begin:lectura 
    if(i_reset)
	begin
		o_read_data_1 = {N_BITS{1'b0}};
		o_read_data_2 = {N_BITS{1'b0}};
	end
	else if(i_valid)
	begin
		o_read_data_1 = registros[i_read_reg_1];
		o_read_data_2 = registros[i_read_reg_2];
	end
 end
 
 always@(negedge i_clk)begin:escritura
	if(i_reg_write && i_valid && i_write_reg != 5'b0)
	begin
		registros[i_write_reg] <= i_write_data; //dato nuevo (calculado o leido)
    end
 end
 
 always@(*)begin:mapeo_registros
    for(j = 0; j < N_BITS; j = j + 1) 
//    begin
        o_registros[(N_BITS*j)+:N_BITS] = registros[j];
//        registrosMAPA = o_registros[(N_BITS*j)+:N_BITS];
//        $display("RMAPA[%0d]: %0d",j, registrosMAPA);
//    end
 end
endmodule
