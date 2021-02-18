`timescale 1ns / 1ps

module memory#
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
	
	input wire [N_BITS_REG:0]   i_opcode, 
	input wire [N_BITS-1:0]     i_pc_branch,
	input wire                  i_zero,
	input wire [N_BITS-1:0]     i_alu_result,
	input wire [N_BITS-1:0]     i_read_data_2,
	input wire [N_BITS_REG-1:0] i_rt_rd,
	
	output reg                   o_mem_to_reg,
	output reg                   o_reg_write,
	output wire [N_BITS-1:0]     o_read_data,
	output reg  [N_BITS-1:0]     o_alu_result,
	output reg  [N_BITS_REG-1:0] o_rt_rd
);
    wire pc_src;
    
    always@(posedge i_clk)begin:gg
        if(i_reset)
        begin
            o_mem_to_reg <= 1'b0;
            o_reg_write  <= 1'b0;
            o_alu_result <= 32'b0;
            o_rt_rd      <= 5'b0;
        end
        else if(i_valid)
        begin
            o_mem_to_reg <= i_mem_to_reg;
            o_reg_write  <= i_reg_write;
            o_alu_result <= i_alu_result;
            o_rt_rd      <= i_rt_rd;
        end
    end
    
    branch_logic u_branch_logic
    (
        .i_branch(i_branch), .i_zero(i_zero), .i_opcode(i_opcode), 
        .o_pc_src(pc_src)  
    );

    data_memory u_data_mem1
    (
        .i_clk(i_clk), .i_valid(i_valid), .i_address(i_alu_result),
        .i_write_data(i_read_data_2), .i_read_enable(i_mem_read), 
        .i_write_enable(i_mem_write),
        .o_read_data(o_read_data)
    );

endmodule
