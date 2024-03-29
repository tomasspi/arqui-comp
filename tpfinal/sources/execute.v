module execute#
(
    parameter N_BITS = 32,
    parameter N_BITS_REG = 5
)
(
    input wire       i_clk, i_reset, i_valid,
    
    //EX  - se�ales de control para ejecucion
	input wire [2:0] i_alu_op,
	input wire 	     i_alu_src,
	input wire  	 i_reg_dst,	    
    
    //MEM - se�ales de control para acceso a memoria
	input wire 	 	 i_branch,
	input wire [1:0] i_jump,
	input wire 	 	 i_mem_read,
	input wire 	 	 i_mem_write,
	
	//WB  - se�ales de control para write-back
    input wire 	  	 i_mem_to_reg,
	input wire 		 i_reg_write,
	input wire       i_halt,
	
	input wire [N_BITS-1:0]     i_pc_4,
	input wire [N_BITS-1:0]     i_alu_result,
	input wire [N_BITS-1:0]     i_data_memory,
	input wire [N_BITS-1:0]     i_read_data_1,
	input wire [N_BITS-1:0]     i_read_data_2,
	input wire [N_BITS-1:0]     i_extended,
	input wire [N_BITS_REG:0]   i_opcode,
	input wire [N_BITS_REG-1:0] i_rd,
	input wire [N_BITS_REG-1:0] i_rt,
	input wire [N_BITS_REG-1:0] i_sa,
	
	input wire i_flush,
	input wire i_exec_mode,
    input wire i_step,
    
	//se�ales de control de entradas a la ALU (dato A o dato B)
	input wire [1:0] i_mux_A,
	input wire [1:0] i_mux_B,
	
	//MEM - se�ales de control para acceso a memoria
	output reg 	 	 o_branch,
	output reg [1:0] o_jump,
	output reg 	 	 o_mem_read,
	output reg 	 	 o_mem_write,
	
	//WB  - se�ales de control para write-back
    output reg 	  	 o_mem_to_reg,
	output reg 		 o_reg_write,
	output reg       o_halt,
	
	//otros
	output reg [N_BITS-1:0]     o_pc_4,
	output reg [N_BITS-1:0]     o_pc_branch,
	output reg [N_BITS-1:0]     o_alu_result,
	output reg [N_BITS-1:0]     o_read_data_2,
	output reg [N_BITS_REG:0]   o_opcode,
	output reg [N_BITS_REG-1:0] o_rt_rd,
	output reg                  o_zero
);

    reg [N_BITS-1:0]     dato_a;
	reg [N_BITS-1:0]     dato_b;
	reg [N_BITS-1:0]     dato_b_fowarding;
	reg [N_BITS-1:0]     pc_branch;
	reg [N_BITS-1:0]     pc_4;
	reg [N_BITS-1:0]     read_data_2;	
	reg [N_BITS_REG:0]   opcode;
	reg [N_BITS_REG-1:0] rt_rd;
	
	wire [4:0]        aluctrl;
	wire [N_BITS-1:0] alu_result;
	
	reg [1:0] jump;
	reg       branch;
	reg       mem_read;
	reg       mem_write;
	reg       mem_to_reg;
	reg       reg_write;
	reg       halt;
	
	wire zero;
		
		
	//MUX dato A forwarding
	always@(*) begin
	   if(i_valid && (i_exec_mode == 1'b0 || (i_exec_mode && i_step)))
	   begin
	       case(aluctrl)
	       4'b0110,4'b1011,4'b1010:
	           dato_a = i_read_data_2;
	       
	       default:
               case(i_mux_A)
               2'b00:
                   dato_a = i_read_data_1;
               2'b01:
                   dato_a = i_data_memory;
               2'b10:
                   dato_a = i_alu_result;
               endcase
           endcase
	   end
	end
	
	//MUX dato B forwarding
	always@(*) begin
	   if(i_valid && (i_exec_mode == 1'b0 || (i_exec_mode && i_step)))
	   begin
	       case(i_mux_B)
	       2'b00:
	           dato_b_fowarding = i_read_data_2;
	       2'b01:
	           dato_b_fowarding = i_data_memory;
	       2'b10:
	           dato_b_fowarding = i_alu_result;
	       endcase
	   end
	end
		
	//MUX 3 decide el valor de entrada del dato B a la ALU
    always@(*) begin
        if(i_valid && (i_exec_mode == 1'b0 || (i_exec_mode && i_step)))
        begin
            if(i_alu_src)
                dato_b = i_extended;
            else 
            begin
                case(aluctrl)
                4'b0110,4'b1011,4'b1010: //sll,sra,srl
                    dato_b = i_sa;
                default:
                    dato_b = dato_b_fowarding;
                endcase
            end 
        end
    end
	
	//MUX 2 decide el valor de i_write_reg (si es rt o rd)
    always@(*) begin
        if(i_reset)
            rt_rd = {N_BITS_REG{1'b0}};
        if(i_valid && (i_exec_mode == 1'b0 || (i_exec_mode && i_step)))
        begin
            if(i_reg_dst)
                rt_rd = i_rd;
            else
                rt_rd = i_rt;
        end
    end
	
	always@(posedge i_clk)begin:lectura
	   if(i_reset)
	   begin 
	       halt          <= 1'b0;
	       branch        <= 1'b0;
	       mem_read      <= 1'b0;
	       mem_write     <= 1'b0;
	       mem_to_reg    <= 1'b0;
	       reg_write     <= 1'b0;
	       jump          <= 2'b0;	       
	       pc_4          <= {N_BITS{1'b0}};
	       pc_branch     <= {N_BITS{1'b0}};
	       opcode        <= {N_BITS_REG+1{1'b0}};
	       read_data_2   <= {N_BITS{1'b0}};
	       
//	       dato_a        <= {N_BITS{1'b0}};
//	       dato_b        <= {N_BITS{1'b0}};
//           rt_rd         <= {N_BITS_REG{1'b0}};
//           dato_b_fowarding <= {N_BITS{1'b0}};
	   end
	   else if(i_valid && (i_exec_mode == 1'b0 || (i_exec_mode && i_step)))
	   begin
	       halt        <= i_halt;
	       branch      <= i_branch;
	       mem_read    <= i_mem_read;
	       mem_write   <= i_mem_write;
	       mem_to_reg  <= i_mem_to_reg;
	       reg_write   <= i_reg_write;
	       read_data_2 <= i_read_data_2;
	       jump        <= i_jump;
	       pc_4        <= i_pc_4;
	       pc_branch   <= i_pc_4 + i_extended; //-----�������PC BRANCH ACA!!!!!!!-------
	       opcode      <= i_opcode;
	   end
	end	
	
	always@(negedge i_clk)begin:esc
	   if(i_reset)
	   begin
	       o_branch      <= 1'b0;
	       o_mem_read    <= 1'b0;
	       o_mem_write   <= 1'b0;
	       o_mem_to_reg  <= 1'b0;
	       o_reg_write   <= 1'b0;
	       o_jump        <= 2'b0;
	       o_halt        <= 1'b0;
	       
	       o_opcode      <= {N_BITS_REG+1{1'b0}};
	       o_pc_4        <= {N_BITS{1'b0}};
	       o_pc_branch   <= {N_BITS{1'b0}};
	       o_alu_result  <= {N_BITS{1'b0}};
	       o_read_data_2 <= {N_BITS{1'b0}};
	       o_rt_rd       <= {N_BITS_REG{1'b0}};
	       o_zero        <= {N_BITS_REG{1'b0}};
	   end
	   else if(i_valid && ~i_flush)
	   begin
           if(i_exec_mode == 1'b0 || (i_exec_mode && i_step))
           begin
               o_pc_4        <= pc_4;
               o_halt        <= halt;
               o_branch      <= branch;
               o_jump        <= jump;
               o_mem_read    <= mem_read;
               o_mem_write   <= mem_write;
               o_mem_to_reg  <= mem_to_reg;
               o_reg_write   <= reg_write;
               o_pc_branch   <= pc_branch;
               o_alu_result  <= alu_result;
               o_read_data_2 <= read_data_2;
               o_opcode      <= opcode;
               o_rt_rd       <= rt_rd;
               o_zero        <= zero;
           end
	   end
	   else 
	   begin                      
           o_jump        <= 2'b0;          
           o_branch      <= 1'b0;
	       o_mem_read    <= 1'b0;
	       o_mem_write   <= 1'b0;
	       o_mem_to_reg  <= 1'b0;
	       o_reg_write   <= 1'b0;
	       o_halt        <= 1'b0;
	       
	       o_pc_4        <= {N_BITS{1'b0}};
	       o_alu_result  <= {N_BITS{1'b0}};
	       o_read_data_2 <= {N_BITS{1'b0}};
	       o_rt_rd       <= {N_BITS_REG{1'b0}};
	       o_zero        <= {N_BITS_REG{1'b0}};
	       o_opcode      <= {N_BITS_REG+1{1'b0}}; 
	   end
	end
		
	alu u_alu1
    (
        .i_dato_A(dato_a), .i_dato_B(dato_b), .i_alu_ctrl(aluctrl),
        .o_alu_result(alu_result), .o_alu_zero(zero)
    );
    
    alu_ctrl u_alu_ctrl1
    (
        .i_funcion(opcode), .i_alu_op(i_alu_op),
        .o_alu_ctrl(aluctrl)
    );
endmodule





