module writeback#
(
    parameter N_BITS = 32,
    parameter N_BITS_REG = 5
)
(
    input wire i_clk, i_reset, i_valid,
    
    input wire [N_BITS-1:0] i_pc_4,
    
	//WB  - señales de control para write-back
    input wire       i_mem_to_reg,
	input wire       i_reg_write,
	input wire       i_halt,
	input wire [1:0] i_jump,
	
	input wire [N_BITS-1:0] i_read_data,
	input wire [N_BITS-1:0] i_alu_result,
	
	input wire [N_BITS_REG-1:0] i_rd_rt,
	
	//WB  - señales de control para write-back
    output reg o_mem_to_reg,
	output reg o_reg_write,
	
	output wire o_stop,
	
	output reg [N_BITS-1:0] o_write_data,
	
	output reg [N_BITS_REG-1:0] o_rd_rt
);

    reg 	  	         mem_to_reg;
	reg 		         reg_write;
	reg                  stop;
	reg [N_BITS-1:0]     read_data;
	reg [N_BITS-1:0]     alu_result;
	reg [N_BITS-1:0]     write_data;
	reg [N_BITS_REG-1:0] rd_rt;

    //MUX 4 decide entre el dato leido y el resultado de la alu
    always@(*) begin
        if(i_valid)
        begin
            if(i_mem_to_reg)
                write_data <= read_data;
            else
                write_data <= i_alu_result;
        end
    end
    
    //MUX 5 decide el valor a escribir en el registro, ya que
    //JAL y JALR escriben en los registros
    always@(*) begin
        if(i_valid)
        begin
            case(i_jump)
            2'b01:
            begin
                o_write_data <= i_pc_4;
                rd_rt        <= 5'b11111;
            end
            
            2'b10:
            begin
                o_write_data <= i_pc_4;
                rd_rt        <= i_rd_rt;
            end
            
            default:
            begin
                o_write_data <= write_data;
                rd_rt        <= i_rd_rt;
            end
            endcase           
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
//            rd_rt      <= i_rd_rt;
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

    //lógica para el contador de ciclos
    always@(*)begin
        if(i_halt)
            stop <= 1'b1;
    end

    assign o_stop = stop;

endmodule