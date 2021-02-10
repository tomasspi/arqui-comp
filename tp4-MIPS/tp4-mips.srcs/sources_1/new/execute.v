module ex_mem#
(
    parameter N_BITS = 32,
    parameter N_BITS_REG = 5
)
(
    input wire       i_clk, i_reset, i_valid,
    
    //MEM - señales de control para acceso a memoria
	input wire 	 	 i_branch,
	input wire 		 i_jump,
	input wire 	 	 i_mem_read,
	input wire 	 	 i_mem_write,
	
	//WB  - señales de control para write-back
    input wire 	  	 i_mem_to_reg,
	input wire 		 i_reg_write,
	
	//otros
	input wire [N_BITS-1:0]     i_pc_branch,
	input wire [N_BITS-1:0]     i_alu_result,
	input wire [N_BITS-1:0]     i_read_data_2,
	input wire [N_BITS_REG-1:0] i_rt,
	input wire [N_BITS_REG-1:0] i_rd,
	input wire                  i_zero,
	
	//MEM - señales de control para acceso a memoria
	output reg 	 	 o_branch,
	output reg 		 o_jump,
	output reg 	 	 o_mem_read,
	output reg 	 	 o_mem_write,
	
	//WB  - señales de control para write-back
    output reg 	  	 o_mem_to_reg,
	output reg 		 o_reg_write,
	
	//otros
	output reg [N_BITS-1:0]     o_pc_branch,
	output reg [N_BITS-1:0]     o_alu_result,
	output reg [N_BITS-1:0]     o_read_data_2,
	output reg [N_BITS_REG-1:0] o_rt,
	output reg [N_BITS_REG-1:0] o_rd,
	output reg                  o_zero
);


	reg 	 	         branch;
	reg 		         jump;
	reg 	 	         mem_read;
	reg 	 	         mem_write;
    reg 	  	         mem_to_reg;
	reg 		         reg_write;
	reg [N_BITS-1:0]     pc_branch;
	reg [N_BITS-1:0]     alu_result;
	reg [N_BITS-1:0]     read_data_2;
	reg [N_BITS_REG-1:0] rt;
	reg [N_BITS_REG-1:0] rd;
	reg                  zero;
	
	always@(posedge i_clk)begin:lectura
	   if(i_reset)
	   begin
	       	o_branch      <= 1'b0;
	       	o_jump        <= 1'b0;
	       	o_mem_read    <= 1'b0;
	       	o_mem_write   <= 1'b0;
	       	o_mem_to_reg  <= 1'b0;
	       	o_reg_write   <= 1'b0;
	       	o_pc_branch   <= {N_BITS{1'b0}};
	       	o_alu_result  <= {N_BITS{1'b0}};
	       	o_read_data_2 <= {N_BITS{1'b0}};
	       	o_rt          <= {N_BITS_REG{1'b0}};
	       	o_rd          <= {N_BITS_REG{1'b0}};
	       	o_zero        <= {N_BITS_REG{1'b0}};
	   end
	   else if(i_valid)
	   begin
	       branch      <= i_branch;
	       jump        <= i_jump;
	       mem_read    <= i_mem_read;
	       mem_write   <= i_mem_write;
	       mem_to_reg  <= i_mem_to_reg;
	       reg_write   <= i_reg_write;
	       pc_branch   <= i_pc_branch;
	       alu_result  <= i_alu_result;
	       read_data_2 <= i_read_data_2;
	       rt          <= i_rt;
	       rd          <= i_rd;
	       zero        <= i_zero;
	   end
	end
	
	always@(negedge i_clk)begin:exritura
	   if(i_valid)
	   begin
	       o_branch      <= branch;
	       o_jump        <= jump;
	       o_mem_read    <= mem_read;
	       o_mem_write   <= mem_write;
	       o_mem_to_reg  <= mem_to_reg;
	       o_reg_write   <= reg_write;
	       o_pc_branch   <= pc_branch;
	       o_alu_result  <= alu_result;
	       o_read_data_2 <= read_data_2;
	       o_rt          <= rt;
	       o_rd          <= rd;
	       o_zero        <= zero;
	   end
	end

endmodule





