module if_id#(
	//Parameters
	parameter N_BITS     = 32,
	parameter N_BITS_REG = 5
)
(
	//inputs
	input wire                   i_clk, i_reset, i_valid,
	input wire [N_BITS-1:0]      i_instruccion,
	input wire [N_BITS-1:0]    	 i_pc,
	
	//output
	output reg [N_BITS-1:0]     o_pc_4,
	output reg [N_BITS-17:0]    o_offset,
	output reg [N_BITS-7:0]     o_instr_index,
	output reg [N_BITS_REG-1:0] o_rs,
	output reg [N_BITS_REG-1:0] o_rd,
	output reg [N_BITS_REG-1:0] o_rt	
);

    reg [N_BITS-1:0] pc;
    reg [N_BITS_REG-1:0] rs;// = 
    reg [N_BITS_REG-1:0] rd;// = 
    reg [N_BITS_REG-1:0] rt;// = 

    reg [N_BITS-17:0] offset;// = 
    reg [N_BITS-7:0]  instr_index;// = 
    
always@(posedge i_clk)begin:lectura
    if(i_reset)
    begin
        pc          <= {N_BITS{1'b0}};
        rs          <= {N_BITS_REG{1'b0}};
        rd          <= {N_BITS_REG{1'b0}};
        rt          <= {N_BITS_REG{1'b0}};
        offset      <= {N_BITS-17{1'b0}};
        instr_index <= {N_BITS-7{1'b0}};
    end
    else if(i_valid)
    begin
        pc          <= i_pc + 4;
        rs          <= i_instruccion[25:21];
        rd          <= i_instruccion[15:11];
        rt          <= i_instruccion[20:16];
        offset      <= i_instruccion[15:0];
        instr_index <= i_instruccion[25:0];
    end
end

always@(negedge i_clk)begin:escritura
    if(i_valid)
    begin
        o_pc_4        <= pc;
        o_rs          <= rs;
        o_rd          <= rd;
        o_rt          <= rt;
        o_offset      <= offset;
        o_instr_index <= instr_index;
    end
end

endmodule