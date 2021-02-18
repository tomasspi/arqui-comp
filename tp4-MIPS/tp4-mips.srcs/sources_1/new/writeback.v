module wb#
(
    parameter N_BITS = 32,
    parameter N_BITS_REG = 5
)
(
    input wire       i_clk, i_reset, i_valid,
    
	//WB  - señales de control para write-back
    input wire 	  	 i_mem_to_reg,
	input wire 		 i_reg_write,
	
	input wire [N_BITS-1:0] i_read_data,
	input wire [N_BITS-1:0] i_alu_result,
	
	input wire [N_BITS_REG-1:0] i_rd,
	input wire [N_BITS_REG-1:0] i_rt,
	
	//WB  - señales de control para write-back
    output reg 	  	 o_mem_to_reg,
	output reg 		 o_reg_write,
	
	output reg [N_BITS-1:0] o_read_data,
	output reg [N_BITS-1:0] o_alu_result,
	
	output reg [N_BITS_REG-1:0] o_rd,
	output reg [N_BITS_REG-1:0] o_rt	
);

    reg 	  	         mem_to_reg;
	reg 		         reg_write;
	reg [N_BITS-1:0]     read_data;
	reg [N_BITS-1:0]     alu_result;
	reg [N_BITS_REG-1:0] rd;
	reg [N_BITS_REG-1:0] rt;

always@(posedge i_clk)begin
    if(i_reset)
    begin
        o_mem_to_reg <= 1'b0;
        o_reg_write  <= 1'b0;
        o_read_data  <= {N_BITS{1'b0}};
        o_alu_result <= {N_BITS{1'b0}};
        o_rd         <= {N_BITS_REG{1'b0}};
        o_rt         <= {N_BITS_REG{1'b0}};
    end
    else if(i_valid)
    begin
        mem_to_reg <= i_mem_to_reg;
        reg_write  <= i_reg_write;
        read_data  <= i_read_data;
        alu_result <= i_alu_result;
        rd         <= i_rd;
        rt         <= i_rt;
    end
end

always@(negedge i_clk)begin
    if(i_valid)
    begin
        o_mem_to_reg <= mem_to_reg;
        o_reg_write  <= reg_write;
        o_read_data  <= read_data;
        o_alu_result <= alu_result;
        o_rd         <= rd;
        o_rt         <= rt;
    end
end

endmodule