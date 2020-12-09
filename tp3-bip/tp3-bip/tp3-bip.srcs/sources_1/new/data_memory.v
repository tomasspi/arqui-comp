`timescale 1ns / 1ps

//  Xilinx Single Port No Change RAM
//  This code implements a parameterizable single-port no-change memory where when data is written
//  to the memory, the output remains unchanged.  This is the most power efficient write mode.
//  If a reset or enable is not necessary, it may be tied off or removed from the code.

module data_memory
#(
  parameter RAM_WIDTH = 16,                 // Specify RAM data width
  parameter RAM_DEPTH = 1024                // Specify RAM depth (number of entries)
 )
 (
  input  wire                           i_valid,
  input  wire [clogb2(RAM_DEPTH-1)-1:0] i_addr,         // Address bus, width determined from RAM_DEPTH
  input  wire [RAM_WIDTH-1:0]           i_data,         // RAM input data
  input  wire                           i_clk,          // Clock
  input  wire 							i_read_enable,  // Read enable
  input  wire                           i_write_enable, // Write enable
  output wire [RAM_WIDTH-1:0]           o_data          // RAM output data
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
          DRAM[ram_index] = {ram_index};
    end
 endgenerate

  always @(posedge i_clk)
    if (enable && i_valid)
      if (i_write_enable)
        DRAM[i_addr] <= i_data;
      else if(i_read_enable)
        ram_data <= DRAM[i_addr];

 assign o_data = ram_data;

  //  The following function calculates the address width based on specified RAM depth
  function integer clogb2;
    input integer depth;
      for (clogb2=0; depth>0; clogb2=clogb2+1)
        depth = depth >> 1;
  endfunction

endmodule