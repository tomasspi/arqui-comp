module writeback#
(
    parameter N_BITS = 32,
    parameter N_BITS_REG = 5
)
(
    input wire       i_clk, i_reset, i_valid,
    
	//WB  - señales de control para write-back
    input wire 	  	 i_mem_to_reg,
	input wire 		 i_reg_write,
	input wire       i_halt,
	
	input wire [N_BITS-1:0] i_read_data,
	input wire [N_BITS-1:0] i_alu_result,
	
	input wire [N_BITS_REG-1:0] i_rd_rt,
	
	//WB  - señales de control para write-back
    output reg 	  	 o_mem_to_reg,
	output reg 		 o_reg_write,
	
	output wire      o_stop,
	
	output reg [N_BITS-1:0] o_write_data,
	
	output reg [N_BITS_REG-1:0] o_rd_rt
);

    reg 	  	         mem_to_reg;
	reg 		         reg_write;
	reg                  stop;
	reg [N_BITS-1:0]     read_data;
	reg [N_BITS-1:0]     alu_result;
	reg [N_BITS_REG-1:0] rd_rt;

    //MUX 4 decide el valor a escribir en el registro
    always@(*) begin
        if(i_valid)
        begin
            if(i_mem_to_reg)
                o_write_data <= read_data;
            else
                o_write_data <= i_alu_result;
        end
    end
    
    always@(posedge i_clk)begin:lectura
        if(i_reset)
        begin
            o_mem_to_reg <= 1'b0;
            o_reg_write  <= 1'b0;
            
            stop         <= 1'b0;
            
            o_write_data <= {N_BITS{1'b0}};
            o_rd_rt      <= {N_BITS_REG{1'b0}};
            read_data    <= {N_BITS{1'b0}};
            alu_result   <= {N_BITS{1'b0}};
        end
        else if(i_valid)
        begin
            mem_to_reg <= i_mem_to_reg;
            reg_write  <= i_reg_write;
            read_data  <= i_read_data;
            rd_rt      <= i_rd_rt;
        end
    end
    
    always@(negedge i_clk)begin:escritura
        if(i_valid)
        begin
            o_mem_to_reg <= mem_to_reg;
            o_reg_write  <= reg_write;
            o_rd_rt      <= rd_rt;
        end
    end

    always@(*)begin
        if(i_halt)
            stop <= 1'b1;
    end

    assign o_stop = stop;

endmodule