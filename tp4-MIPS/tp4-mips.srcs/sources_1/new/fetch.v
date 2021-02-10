module fetch#(
	//Parameters
	parameter N_BITS     = 32,
	parameter N_BITS_REG = 5
)
(
	//inputs
	input wire                   i_clk, i_reset, i_valid,
	input wire [N_BITS-1:0]      i_pc_salto,
	input wire                   i_pc_src, //se�al de control
	
	//output
	output reg [N_BITS-1:0]     o_pc_4,
	output reg [N_BITS-1:0]     o_instruccion
);

    reg [N_BITS-1:0]     pc;
    
    wire [N_BITS-1:0] instruccion;
    
    //MUX 1: decide el valor del PC
    always@(posedge i_clk) begin        
        if(i_valid)
        begin
            if(i_pc_src)
                pc <= i_pc_salto;
            else
                pc <= pc + 4;
        end 
    end
    
    always@(posedge i_clk)begin:lectura
        if(i_reset)
        begin
            pc <= {N_BITS{1'b0}};
        end
    end
    
    always@(negedge i_clk)begin:escritura
        if(i_valid)
        begin
            o_pc_4        <= pc + 4;
            o_instruccion <= instruccion;
        end
    end

    instruction_memory u_i_mem1
    (
        .i_clk(i_clk), .i_valid(i_valid), .i_addr(pc),
        .o_instruccion(instruccion)
    );
endmodule