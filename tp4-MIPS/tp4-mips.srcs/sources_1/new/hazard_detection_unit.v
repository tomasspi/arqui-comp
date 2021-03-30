module hazard_detection_unit#
(
    N_BITS_REG = 5
)
(
    input  wire                  i_mem_read_idex,
    input  wire [N_BITS_REG-1:0] i_rt_idex,
    input  wire [N_BITS_REG-1:0] i_rt_ifid,
    input  wire [N_BITS_REG-1:0] i_rs_ifid,
    output reg                   o_stall
 );
 
    always@(*)begin:detect_hazard
        if(i_mem_read_idex && ((i_rt_idex == i_rs_ifid) || (i_rt_idex == i_rt_ifid)))
            o_stall = 1'b1;
        else
            o_stall = 1'b0;
    end
 
endmodule