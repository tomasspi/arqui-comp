module decode#
(
	//Parameters
	parameter N_BITS      = 32,
	parameter N_BITS_REG  = 5
)
(
	//inputs
	input wire       i_clk, i_reset, i_valid,

	input wire [N_BITS-1:0] i_pc_4,
	input wire [N_BITS-1:0] i_instruccion,
	
	//outputs	
	//------ señales de control ------
	//EX  - señales de control para ejecucion
	output wire [2:0] o_alu_op,
	output wire 	  o_alu_src,
	output wire  	  o_reg_dst,	
	
	//MEM - señales de control para acceso a memoria
	output wire 	  o_branch,
	output wire 	  o_jump,
	output wire 	  o_mem_read,
	output wire 	  o_mem_write,
	
	//WB  - señales de control para write-back
    output wire 	  o_mem_to_reg,
	output wire 	  o_reg_write,
	//--------------------------------
	
	output wire [N_BITS-1:0] o_pc_4,
	output wire [N_BITS-1:0] o_read_data_1,
	output wire [N_BITS-1:0] o_read_data_2,
	output wire [N_BITS-1:0] o_extended,
	output wire [N_BITS-7:0] o_instr_index,
	
	output wire [N_BITS_REG-1:0] o_write_reg,
	output wire [N_BITS_REG-1:0] o_rs,
	output wire [N_BITS_REG-1:0] o_rd,
	output wire [N_BITS_REG-1:0] o_rt
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
	reg [N_BITS-1:0]     write_data;
	reg [N_BITS_REG:0]   opcode;
	reg [N_BITS_REG-1:0] write_reg;
	reg [N_BITS-1:0]     extended;
	reg [N_BITS-7:0]     instr_index;
	reg [N_BITS-17:0]    offset;
	reg [N_BITS_REG-1:0] rs;
	reg [N_BITS_REG-1:0] rd;
	reg [N_BITS_REG-1:0] rt;
    
    assign o_alu_op = alu_op;
    assign o_alu_src = alu_src;
    assign o_reg_dst = reg_dst;
    assign o_branch = branch;
    assign o_jump = jump;
    assign o_mem_read = mem_read;
    assign o_mem_write = mem_write;
    assign o_mem_to_reg = mem_to_reg;
    assign o_reg_write = reg_write;
    assign o_pc_4 = pc_4;
    assign o_read_data_1 = read_data_1;
    assign o_read_data_2 = read_data_2;
//    assign o_extended = extended;
    assign o_instr_index = instr_index;
    assign o_rs = rs;
    assign o_rd = rd;
    assign o_rt = rt;
    assign o_write_reg = write_reg;
    
//leerentradas
always@(posedge i_clk)begin:leer_entradas
    if(i_reset)
    begin
        alu_op      <= 3'b0;
        alu_src     <= 1'b0;
        reg_dst     <= 1'b0;
        branch      <= 1'b0;
        jump        <= 1'b0;
        mem_read    <= 1'b0;
        mem_write   <= 1'b0;
        mem_to_reg  <= 1'b0;
        reg_write   <= 1'b0;
        write_reg   <= 1'b1;
        write_data  <= 32'b0;
        pc_4        <= 32'b0;
        read_data_1 <= 32'b0;
        read_data_2 <= 32'b0;
        offset      <= 16'b0;
        extended    <= 32'b0;
        instr_index <= 26'b0;
        opcode      <= 6'b0;
        rs          <= 6'b0;
        rd          <= 6'b0;
        rt          <= 6'b0;
    end
    else if(i_valid)
    begin
//    	alu_op      <= aluop;
//        alu_src     <= alu_src;
//        reg_dst     <= reg_dst;	
//        branch      <= branch;
//        jump        <= jump;
//        mem_read    <= mem_read;
//        mem_write   <= mem_write;
//        mem_to_reg  <= mem_to_reg;
//        reg_write   <= reg_write;
//        extended    <= extended;
        rs          <= i_instruccion[25:21];
        rd          <= i_instruccion[20:16];
        rt          <= i_instruccion[15:11];
        offset      <= i_instruccion[15:0];
        instr_index <= i_instruccion[25:0];
        opcode      <= i_instruccion[31:26];
        pc_4        <= i_pc_4;
        
        if(reg_dst)
            write_reg <= rd;
        else
            write_reg <= rt;
      
    end   
end


//always@(negedge i_clk)begin:escribir_salidas
//    if(i_valid)
//    begin
//        o_alu_op      <= aluop;
//        o_alu_src     <= alusrc;
//        o_reg_dst     <= regdst;	
//        o_branch      <= branch;
//        o_jump        <= jump;
//        o_mem_read    <= memrd;
//        o_mem_write   <= memwr;
//        o_mem_to_reg  <= memtoreg;
//        o_reg_write   <= regwrite;
//        o_pc_4        <= pc_4;
//        o_read_data_1 <= read_data_1;
//        o_read_data_2 <= read_data_2;
//        o_extended    <= extended;
//        o_instr_index <= instr_index;
//        o_rs          <= rs;
//        o_rd          <= rd;
//        o_rt          <= rt;
//    end
//end

    registers u_register1
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_read_reg_1(o_rs), .i_read_reg_2(o_rt), 
        .i_write_reg(write_reg), .i_write_data(write_data), .i_reg_write(reg_write),
        .o_read_data_1(o_read_data_1), .o_read_data_2(o_read_data_2)
    );
    
    sign_extend u_sign_ex1
    (
        .i_offset(offset),
        .o_extended(o_extended)
    );
    
    control_unit u_ctrl1
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_instruccion(i_instruccion),
        .o_alu_op(o_alu_op), .o_alu_src(o_alu_src), .o_reg_dst(o_reg_dst),
        .o_branch(o_branch), .o_mem_read(o_mem_read), .o_mem_write(o_mem_write),
        .o_mem_to_reg(o_mem_to_reg), .o_reg_write(o_reg_write),
        .o_jump(o_jump), .o_opcode(o_opcode)
    );
endmodule