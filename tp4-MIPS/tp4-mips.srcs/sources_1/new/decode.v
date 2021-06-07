module decode#
(
	//Parameters
	parameter N_BITS      = 32,
	parameter N_BITS_REG  = 5
)
(
	//INPUTS
	input wire                  i_clk, i_reset, i_valid,
	
    input wire [N_BITS-1:0]     i_instruccion,  	
	input wire [N_BITS-1:0]     i_pc_4,
	input wire [N_BITS-1:0]     i_write_data,
	input wire [N_BITS_REG-1:0] i_write_reg,
	input wire                  i_reg_write,
    
    input wire i_halt,
    input wire i_flush,
    
    input wire [N_BITS_REG-1:0] i_rt_idex,
    input wire                  i_mem_read_idex,
	    
    //OUTPUTS
	//EX  - señales de control para ejecucion
	output reg [2:0] o_alu_op,
	output reg 	     o_alu_src,
	output reg  	 o_reg_dst,	
	
	//MEM - señales de control para acceso a memoria
	output reg 	     o_branch,
	output reg [1:0] o_jump,
	output reg       o_flush,
	output reg 	     o_mem_read,
	output reg 	     o_mem_write,
	
	//WB  - señales de control para write-back
    output reg 	  o_mem_to_reg,
	output reg 	  o_reg_write,
	
	output reg  o_halt,
    output wire o_stall,
    
	output wire [N_BITS-1:0] o_pc_4,
	output wire [N_BITS-1:0] o_read_data_1,
	output wire [N_BITS-1:0] o_read_data_2,
	output wire [N_BITS-1:0] o_extended,
	output wire [N_BITS-7:0] o_instr_index,
	
	output wire [N_BITS_REG-1:0] o_rs,
	output wire [N_BITS_REG-1:0] o_rd,
	output wire [N_BITS_REG-1:0] o_rt,
	output wire [N_BITS_REG-1:0] o_sa,
	output wire [N_BITS_REG:0]   o_opcode,
	output wire [N_BITS-1:0]     o_pc_jump,
	
	//para la unidad de debugging
	output wire  [N_BITS*N_BITS-1:0] o_registros
);
     
    wire [2:0]        alu_op;
	wire              alu_src;
	wire              reg_dst;	
	wire	          branch;
	wire [1:0]        jump;
	wire              flush;
	wire	          mem_read;
	wire	          mem_write;
    wire              mem_to_reg;
	wire	          reg_write;	
	wire [N_BITS-1:0] read_data_1;
	wire [N_BITS-1:0] read_data_2;
	wire [N_BITS-1:0] pc_jump;
	wire [N_BITS_REG-1:0] write_reg;
	wire              regwr;
	//latch reg
	reg [N_BITS-1:0]      instruccion;
	reg [N_BITS-1:0]      pc_4;
	reg [N_BITS-1:0]      write_data;
    reg [N_BITS_REG-1:0]  rs;
    reg [N_BITS_REG-1:0]  rt;
    reg [N_BITS_REG-1:0]  rd;
    reg [N_BITS_REG-1:0]  sa;
    reg [N_BITS-17:0]     offset;
    reg [N_BITS-13:0]     instr_index;
    reg halt;
      
    always@(posedge i_clk)begin:leer_entradas
        if(i_reset)
        begin
            o_alu_op      <= 3'b0;
            o_alu_src     <= 1'b0;
            o_reg_dst     <= 1'b0;
            o_branch      <= 1'b0;
            o_jump        <= 2'b0;
            o_mem_read    <= 1'b0;
            o_mem_write   <= 1'b0;
            o_mem_to_reg  <= 1'b0;
            o_reg_write   <= 1'b0;
            o_halt        <= 1'b0;
            o_flush       <= 1'b0;
            
            halt          <= 1'b0;
            write_data    <= 32'b0;
            instruccion   <= 32'b0;
            pc_4          <= 32'b0;
            rs            <= 5'b0;
            rt            <= 5'b0;
            rd            <= 5'b0;
            sa            <= 5'b0;
            offset        <= 16'b0;
            instr_index   <= 20'b0;
        end
        else if(i_valid)
        begin
            instruccion <= i_instruccion;
            pc_4        <= i_pc_4;
            halt        <= i_halt;
        end
    end
    
    always@(negedge i_clk)begin:escribir_salidas
        if(i_valid)
        begin
            rs          <= instruccion[25:21];
            rt          <= instruccion[20:16];
            rd          <= instruccion[15:11];
            sa          <= instruccion[10:6];
            offset      <= instruccion[15:0];
            instr_index <= instruccion[25:0];
            write_data  <= i_write_data;  
            
            if(o_stall || i_flush)
            begin
                o_alu_op      <= 3'b0;
                o_alu_src     <= 1'b0;
                o_reg_dst     <= 1'b0;
                o_branch      <= 1'b0;
                o_jump        <= 2'b0;
                o_flush       <= 1'b0;
                o_mem_read    <= 1'b0;
                o_mem_write   <= 1'b0;
                o_mem_to_reg  <= 1'b0;
                o_reg_write   <= 1'b0;
                o_halt        <= 1'b0;
            end
            else
            begin
                o_alu_op     <= alu_op;
                o_alu_src    <= alu_src;
                o_reg_dst    <= reg_dst;
                o_branch     <= branch;
                o_jump       <= jump;
                o_flush      <= flush;
                o_mem_read   <= mem_read;
                o_mem_write  <= mem_write;
                o_mem_to_reg <= mem_to_reg;
                o_reg_write  <= reg_write;
                o_halt       <= halt;
//                o_rt_stall   <= rt;
             end
        end
    end  
    
    assign o_pc_4 = pc_4;
        
    assign o_rs          = rs;
    assign o_rt          = rt;
    assign o_rd          = rd;
    assign o_sa          = sa;
    assign o_instr_index = instr_index;
    
    assign o_extended = {{(N_BITS-16){offset[15]}},offset};
    
    assign o_read_data_1 = read_data_1;
    assign o_read_data_2 = read_data_2;
    assign o_pc_jump     = pc_jump;
    
    registers u_register
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_read_reg_1(rs), .i_read_reg_2(rt), 
        .i_write_reg(i_write_reg), .i_write_data(write_data), .i_reg_write(i_reg_write),
        .o_read_data_1(read_data_1), .o_read_data_2(read_data_2),
        .o_registros(o_registros)
    );
    
    control_unit u_ctrl
    (
        .i_clk(i_clk), .i_reset(i_reset), .i_valid(i_valid),
        .i_instruccion(instruccion),
        .o_alu_op(alu_op), .o_alu_src(alu_src), .o_reg_dst(reg_dst),
        .o_branch(branch), .o_mem_read(mem_read), .o_mem_write(mem_write),
        .o_mem_to_reg(mem_to_reg), .o_reg_write(reg_write),
        .o_jump(jump), .o_flush(flush),
        .o_opcode(o_opcode)
    );
    
    hazard_detection_unit u_hdu
    (
        .i_mem_read_idex(i_mem_read_idex), .i_rt_idex(i_rt_idex), .i_rt_ifid(rt), 
        .i_rs_ifid(rs), 
        .o_stall(o_stall)
    );
    
    //Jump logic
    jump_logic u_jump_logic
    (
        .i_jump(jump), .i_pc_4(i_pc_4), 
        .i_instr_index(instr_index), .i_read_data(read_data_1),         
        .o_pc_jump(pc_jump) 
    );
endmodule
