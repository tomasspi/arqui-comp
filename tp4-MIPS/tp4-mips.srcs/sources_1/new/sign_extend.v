module sign_extend#
(
	parameter N_BITS_IN  = 16,
	parameter N_BITS_OUT = 32
)
(
	input  wire [N_BITS_IN-1:0] i_offset,
	output reg [N_BITS_OUT-1:0] o_extended
);
	
	always@(*)begin:extend
		o_extended = {{(N_BITS_OUT-N_BITS_IN){i_offset[N_BITS_IN-1]}},i_offset};
	end
	
endmodule
