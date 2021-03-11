module fowarding_unit#
(
    N_BITS_REG = 5
)
(
    input  wire [N_BITS_REG-1:0] i_rs_idex,
    input  wire [N_BITS_REG-1:0] i_rt_idex,
    input  wire [N_BITS_REG-1:0] i_rd_exmem,
    input  wire [N_BITS_REG-1:0] i_rd_memwb,
    input  wire                  i_reg_write_exmem,
    input  wire                  i_reg_write_memwb,
    output reg  [1:0]            o_mux_A,
    output reg  [1:0]            o_mux_B
);

    reg [2:0] ex_hazard_A;
    reg [2:0] ex_hazard_B;
    
    reg [3:0] mem_hazard_A;
    reg [3:0] mem_hazard_B;
    
    always@(*)begin:fowarding
        ex_hazard_A = {i_reg_write_exmem,(i_rd_exmem !=  0),(i_rd_exmem == i_rs_idex)};
        ex_hazard_B = {i_reg_write_exmem,(i_rd_exmem !=  0),(i_rd_exmem == i_rt_idex)};
        
        mem_hazard_A = {i_reg_write_memwb,(i_rd_memwb !=  0),
                        ~(i_reg_write_exmem && (i_rd_exmem !=  0) && (i_rd_exmem !=  i_rs_idex)),
                        (i_rd_memwb == i_rs_idex)};
                        
        mem_hazard_B = {i_reg_write_memwb,(i_rd_memwb !=  0),
                        ~(i_reg_write_exmem && (i_rd_exmem !=  0) && (i_rd_exmem !=  i_rt_idex)),
                        (i_rd_memwb == i_rt_idex)};
                     
        if(ex_hazard_A == 3'b111)
            o_mux_A = 2'b10; //ALU
        else if(mem_hazard_A == 4'b1111)
            o_mux_A = 2'b01; //MEM
        else                 
            o_mux_A = 2'b0; //REG
            
            
        if(ex_hazard_B == 3'b111)
            o_mux_B = 2'b10; //ALU
        else if(mem_hazard_B == 4'b1111)
            o_mux_B = 2'b01; //MEM
        else                 
            o_mux_B = 2'b0; //REG
    end

endmodule
