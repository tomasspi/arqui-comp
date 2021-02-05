module id_ex#
(
	//Parameters
	parameter N_BITS      = 32,
	parameter N_BITS_REG  = 5
)
(
	//inputs
	input wire       i_clk, i_reset, i_valid,
	
    //EX  - señales de control para ejecucion
	input wire [2:0] i_alu_op,
	input wire 		 i_alu_src,
	input wire  	 i_reg_dst,	
	
	//MEM - señales de control para acceso a memoria
	input wire 	 	 i_branch,
	input wire 		 i_jump,
	input wire 	 	 i_mem_read,
	input wire 	 	 i_mem_write,
	
	//WB  - señales de control para write-back
    input wire 	  	 i_mem_to_reg,
	input wire 		 i_reg_write,
	 
	//otros
	input wire [N_BITS-1:0] i_pc_4,
	input wire [N_BITS-1:0] i_read_data_1,
	input wire [N_BITS-1:0] i_read_data_2,
	input wire [N_BITS-1:0] i_extended,
	
	input wire [N_BITS_REG-1:0] i_rs,
	input wire [N_BITS_REG-1:0] i_rd,
	input wire [N_BITS_REG-1:0] i_rt,
	
	//========================= OUTPUTS
	//EX  - señales de control para ejecuciÃ³n
	output reg [2:0] o_alu_op,
	output reg 	     o_alu_src,
	output reg  	 o_reg_dst,	
	
	//MEM - señales de control para acceso a memoria
	output reg 	  o_branch,
	output reg 	  o_jump,
	output reg 	  o_mem_read,
	output reg 	  o_mem_write,
	
	//WB  - señales de control para write-back
    output reg 	  o_mem_to_reg,
	output reg 	  o_reg_write,
	
	//otros
	output reg [N_BITS-1:0] o_pc_4,
	output reg [N_BITS-1:0] o_read_data_1,
	output reg [N_BITS-1:0] o_read_data_2,
	output reg [N_BITS-1:0] o_extended,
	
	output reg [N_BITS_REG-1:0] o_rs,
	output reg [N_BITS_REG-1:0] o_rd,
	output reg [N_BITS_REG-1:0] o_rt
);

    reg	[2:0]            alu_op;
	reg                  alu_src;
	reg                  reg_dst;	
	reg	                 branch;
	reg	                 jump;
	reg	                 mem_read;
	reg	                 mem_write;
    reg                  mem_to_reg;
	reg	                 reg_write;
	reg [N_BITS-1:0]     pc_4;
	reg [N_BITS-1:0]     read_data_1;
	reg [N_BITS-1:0]     read_data_2;
	reg [N_BITS-1:0]     extended;
	reg [N_BITS_REG-1:0] rs;
	reg [N_BITS_REG-1:0] rd;
	reg [N_BITS_REG-1:0] rt;
    
//leerentradas
always@(posedge i_clk)begin:leer_entradas
    if(i_reset)
    begin
        o_alu_op      <= 3'b0;
        o_alu_src     <= 1'b0;
        o_reg_dst     <= 1'b0;
        o_branch      <= 1'b0;
        o_jump        <= 1'b0;
        o_mem_read    <= 1'b0;
        o_mem_write   <= 1'b0;
        o_mem_to_reg  <= 1'b0;
        o_reg_write   <= 1'b0;
        o_pc_4        <= 32'b0;
        o_read_data_1 <= 32'b0;
        o_read_data_2 <= 32'b0;
        o_extended    <= 32'b0;
        o_rs          <= 6'b0;
        o_rd          <= 6'b0;
        o_rt          <= 6'b0;
    end
    else if(i_valid)
    begin
    	alu_op      <= i_alu_op;
        alu_src     <= i_alu_src;
        reg_dst     <= i_reg_dst;	
        branch      <= i_branch;
        jump        <= i_jump;
        mem_read    <= i_mem_read;
        mem_write   <= i_mem_write;
        mem_to_reg  <= i_mem_to_reg;
        reg_write   <= i_reg_write;
        pc_4        <= i_pc_4;
        read_data_1 <= i_read_data_1;
        read_data_2 <= i_read_data_2;
        extended    <= i_extended;
        rs          <= i_rs;
        rd          <= i_rd;
        rt          <= i_rt;
    end   
end


always@(negedge i_clk)begin:escribir_salidas
    if(i_valid)
    begin
        o_alu_op      <= alu_op;
        o_alu_src     <= alu_src;
        o_reg_dst     <= reg_dst;	
        o_branch      <= branch;
        o_jump        <= jump;
        o_mem_read    <= mem_read;
        o_mem_write   <= mem_write;
        o_mem_to_reg  <= mem_to_reg;
        o_reg_write   <= reg_write;
        o_pc_4        <= pc_4;
        o_read_data_1 <= read_data_1;
        o_read_data_2 <= read_data_2;
        o_extended    <= extended;
        o_rs          <= rs;
        o_rd          <= rd;
        o_rt          <= rt;
    end
end

endmodule