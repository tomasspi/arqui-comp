module memory#
(
    parameter N_BITS = 32,
    parameter N_BITS_REG = 5
)
(
    input wire       i_clk, i_reset, i_valid,
    
    //MEM - señales de control para acceso a memoria
	input wire 	 	 i_branch,
	input wire [1:0] i_jump,
	input wire 	 	 i_mem_read,
	input wire 	 	 i_mem_write,
	
	//WB  - señales de control para write-back
    input wire 	  	 i_mem_to_reg,
	input wire 		 i_reg_write,
	input wire       i_halt,
	
	input wire [N_BITS-1:0]     i_pc_4,
	input wire [N_BITS_REG:0]   i_opcode, 
	input wire [N_BITS-1:0]     i_pc_branch,
	input wire                  i_zero,
	input wire [N_BITS-1:0]     i_alu_result,
	input wire [N_BITS-1:0]     i_read_data_2,
	input wire [N_BITS_REG-1:0] i_rt_rd,

	output reg [N_BITS-1:0]     o_pc_4,
	
	output reg [1:0]            o_jump,
	output reg                  o_mem_to_reg,
	output reg                  o_reg_write,
	output reg                  o_halt,
	output reg                  o_pc_src,
	output reg [N_BITS-1:0]     o_read_data,
	output reg [N_BITS-1:0]     o_alu_result,
	output reg [N_BITS_REG-1:0] o_rt_rd
);

    wire              pc_src;
    wire [N_BITS-1:0] read_data;
	
	reg                   halt;
	reg                   mem_to_reg;
	reg                   reg_write;
	reg [1:0]             jump;
	reg [N_BITS-1:0]      alu_result;
	reg [N_BITS-1:0]      pc_4;
	reg [N_BITS_REG-1:0]  rt_rd;
    
	
    always@(posedge i_clk)begin:lectura
        if(i_reset)
        begin
            o_mem_to_reg <= 1'b0;
            o_reg_write  <= 1'b0;
			o_pc_src     <= 1'b0;
			o_halt       <= 1'b0;
			o_jump       <= 2'b0;
			o_alu_result <= {N_BITS{1'b0}};
			o_pc_4       <= {N_BITS{1'b0}};
            o_rt_rd      <= {N_BITS_REG{1'b0}};
            
			halt         <= 1'b0;
			mem_to_reg	 <= 1'b0;
			reg_write	 <= 1'b0;
			jump         <= 2'b0;
			alu_result   <= {N_BITS{1'b0}};
			pc_4         <= {N_BITS{1'b0}};
			rt_rd        <= {N_BITS_REG{1'b0}};
        end
        else if(i_valid)
        begin
            halt       <= i_halt;
            jump       <= i_jump;
            mem_to_reg <= i_mem_to_reg;
            reg_write  <= i_reg_write;
            alu_result <= i_alu_result;
            pc_4       <= i_pc_4;
            rt_rd      <= i_rt_rd;
        end
    end
    
	always@(negedge i_clk)begin:escritura
	   o_halt       <= halt;
	   o_jump       <= jump;
	   o_mem_to_reg <= mem_to_reg;
       o_reg_write  <= reg_write;
       o_pc_4       <= pc_4;
       o_alu_result <= alu_result;
       o_rt_rd      <= rt_rd;
	   o_read_data  <= read_data;
	   o_pc_src     <= pc_src;
	end
	
    branch_logic u_branch_logic
    (
        .i_branch(i_branch), .i_zero(i_zero), .i_opcode(i_opcode), 
        .o_pc_src(pc_src)  
    );

    data_memory u_data_mem1
    (
        .i_clk(i_clk), .i_valid(i_valid), .i_address(alu_result),
        .i_write_data(i_read_data_2), .i_read_enable(i_mem_read), 
        .i_write_enable(i_mem_write),
        .o_read_data(read_data)
    );
endmodule