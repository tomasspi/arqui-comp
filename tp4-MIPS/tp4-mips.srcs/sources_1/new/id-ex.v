module decode#
(
	//Parameters
	parameter N_BITS      = 32,
	parameter N_BITS_REG  = 5
)
(
	//INPUTS
	input wire              i_clk, i_reset, i_valid,
	
    input wire [N_BITS-1:0] i_instruccion,  	
	input wire [N_BITS-1:0] i_pc_4,
	input wire [N_BITS-1:0] i_write_data,
    //OUTPUTS
	//EX  - señales de control para ejecucion
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
	output wire [N_BITS-1:0] o_pc_4,
	output wire [N_BITS-1:0] o_read_data_1,
	output wire [N_BITS-1:0] o_read_data_2,
	output wire [N_BITS-1:0] o_extended,
	
	output wire [N_BITS_REG-1:0] o_rs,
	output wire [N_BITS_REG-1:0] o_rd,
	output wire [N_BITS_REG-1:0] o_rt,
	output wire [N_BITS_REG:0]   o_opcode
);
     
    wire	[2:0]            alu_op;
	wire                  alu_src;
	wire                  reg_dst;	
	wire	                 branch;
	wire	                 jump;
	wire	                 mem_read;
	wire	                 mem_write;
    wire                  mem_to_reg;
	wire	                 reg_write;
	reg [N_BITS-1:0]     pc_4;
	wire [N_BITS-1:0]     read_data_1;
	wire [N_BITS-1:0]     read_data_2;
//	reg [N_BITS-1:0]     extended;
//	reg [N_BITS_REG-1:0] rs;
//	reg [N_BITS_REG-1:0] rd;
	reg [N_BITS_REG-1:0] write_reg;
    wire [15:0]          offset;
//    wire [5:0]           opcode;
    
    assign o_pc_4 = i_pc_4;
    
    assign o_rs          = i_instruccion[25:21];
    assign o_rt          = i_instruccion[20:16];
    assign o_rd          = i_instruccion[15:11];
    assign offset        = i_instruccion[15:0];
//    assign o_instr_index = i_instruccion[25:0];
//    assign opcode        = i_instruccion[31:26];
    
    assign o_extended = {{(N_BITS-16){offset[15]}},offset};
    
    assign o_read_data_1 = read_data_1;
    assign o_read_data_2 = read_data_2;
    
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
//        o_pc_4        <= 32'b0;
//        o_read_data_1 <= 32'b0;
//        o_read_data_2 <= 32'b0;
//        o_extended    <= 32'b0;
//        o_rs          <= 6'b0;
//        o_rd          <= 6'b0;
//        o_rt          <= 6'b0;
    end
    else if(i_valid)
    begin
        if(reg_dst)
             write_reg <= o_rd;
        else
             write_reg <= o_rt;
             
        o_alu_op      <= alu_op;
        o_alu_src     <= alu_src;
        o_reg_dst     <= reg_dst;	
        o_branch      <= branch;
        o_jump        <= jump;
        o_mem_read    <= mem_read;
        o_mem_write   <= mem_write;
        o_mem_to_reg  <= mem_to_reg;
        o_reg_write   <= reg_write;
//        instr_index = i_instruccion[25:0];
    
//    	alu_op      <= i_alu_op;
//        alu_src     <= i_alu_src;
//        reg_dst     <= i_reg_dst;	
//        branch      <= i_branch;
//        jump        <= i_jump;
//        mem_read    <= i_mem_read;
//        mem_write   <= i_mem_write;
//        mem_to_reg  <= i_mem_to_reg;
//        reg_write   <= i_reg_write;
//        pc_4        <= i_pc_4;
//        read_data_1 <= i_read_data_1;
//        read_data_2 <= i_read_data_2;
//        extended    <= i_extended;
//        rs          <= i_rs;
//        rd          <= i_rd;
//        rt          <= i_rt;
    end   
end


//always@(posedge i_clk)begin:escribir_salidas
//    if(i_valid)
//    begin
//        o_alu_op      <= alu_op;
//        o_alu_src     <= alu_src;
//        o_reg_dst     <= reg_dst;	
//        o_branch      <= branch;
//        o_jump        <= jump;
//        o_mem_read    <= mem_read;
//        o_mem_write   <= mem_write;
//        o_mem_to_reg  <= mem_to_reg;
//        o_reg_write   <= reg_write;
//        o_pc_4        <= pc_4;
//        o_read_data_1 <= read_data_1;
//        o_read_data_2 <= read_data_2;
//        o_extended    <= extended;
//        o_rs          <= rs;
//        o_rd          <= rd;
//        o_rt          <= rt;
//    end
//end

    registers u_register
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_read_reg_1(o_rs), .i_read_reg_2(o_rt), 
        .i_write_reg(write_reg), .i_write_data(i_write_data), .i_reg_write(reg_write),
        .o_read_data_1(read_data_1), .o_read_data_2(read_data_2)
    );

    
    control_unit u_ctrl
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_instruccion(i_instruccion),
        .o_alu_op(alu_op), .o_alu_src(alu_src), .o_reg_dst(reg_dst),
        .o_branch(branch), .o_mem_read(mem_read), .o_mem_write(mem_write),
        .o_mem_to_reg(mem_to_reg), .o_reg_write(reg_write),
        .o_jump(jump),
        .o_opcode(o_opcode)
    );

endmodule