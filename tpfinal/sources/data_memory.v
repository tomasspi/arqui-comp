//  Xilinx Single Port No Change RAM
//  This code implements a parameterizable single-port no-change memory where when data is written
//  to the memory, the output remains unchanged.  This is the most power efficient write mode.
//  If a reset or enable is not necessary, it may be tied off or removed from the code.

module data_memory
#(
  parameter RAM_WIDTH = 32,                 // Specify RAM data width
  parameter RAM_DEPTH = 1024                // Specify RAM depth (number of entries)
 )
 (
  input  wire                   i_valid,
  input  wire [RAM_WIDTH-1:0]   i_address,      // Address bus, width determined from RAM_DEPTH
  input  wire [RAM_WIDTH-1:0]   i_write_data,   // RAM input data
  input  wire                   i_clk,          // Clock
  input  wire 					i_read_enable,  // Read enable
  input  wire                   i_write_enable, // Write enable
  output wire [RAM_WIDTH-1:0]   o_read_data     // RAM output data
 );

  wire enable     = 1'b1; // RAM Enable, for additional power savings, disable port when not in use
  wire reset      = 1'b0; // Output reset (does not affect memory contents)
  wire reg_enable = 1'b0; // Output register enable

  reg [RAM_WIDTH-1:0] DRAM [RAM_DEPTH-1:0];
  reg [RAM_WIDTH-1:0] ram_data = {RAM_WIDTH{1'b0}};

 //carga datos en la memoria de 0 a 1023
 generate
    reg [RAM_WIDTH-1:0] ram_index;
    initial begin
        for (ram_index = 0; ram_index < RAM_DEPTH; ram_index = ram_index + 1)
          DRAM[ram_index] = 3;//32'b0;//{ram_index};
    end
 endgenerate
	
 always @(*)begin:lectura
    if (i_valid && i_read_enable)
    ram_data <= DRAM[i_address];
 end  
 
 always@(negedge i_clk)begin:escrtura
    if (i_valid && i_write_enable)
       DRAM[i_address] <= i_write_data;
 end

 assign o_read_data = ram_data;

endmodule