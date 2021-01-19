`timescale 1ns / 1ps

//  Xilinx Single Port No Change RAM
//  This code implements a parameterizable single-port no-change memory where when data is written
//  to the memory, the output remains unchanged.  This is the most power efficient write mode.
//  If a reset or enable is not necessary, it may be tied off or removed from the code.

module program_memory
#(
  parameter RAM_WIDTH = 32,                  // Specify RAM data width
  parameter RAM_DEPTH = 2048,                // Specify RAM depth (number of entries)
  parameter INIT_FILE = "programa.txt"       // Specify name/location of RAM initialization file if using one (leave blank if not)
 )
(
  input  wire                           i_valid,
  input  wire [clogb2(RAM_DEPTH-1)-1:0] i_addr, // Address bus, width determined from RAM_DEPTH
  input                                 i_clk,  // Clock
  output wire [RAM_WIDTH-1:0]           o_instruccion  // RAM output data
);

  wire [RAM_WIDTH-1:0] input_data   = 0; // RAM input data
  wire                 write_enable = 0; // Write enable
  wire                 enable       = 1; // RAM Enable, for additional power savings, disable port when not in use
  wire                 reset        = 0; // Output reset (does not affect memory contents)
  wire                 reg_enable   = 1; // Output register enable

  reg [RAM_WIDTH-1:0] PRAM [RAM_DEPTH-1:0];
  reg [RAM_WIDTH-1:0] ram_data = {RAM_WIDTH{1'b0}};

  // The following code either initializes the memory values to a specified file or to all zeros to match hardware
  generate
    if (INIT_FILE != "") begin: use_init_file
      initial
        $readmemh(INIT_FILE, PRAM, 0, RAM_DEPTH-1);
    end else begin: init_bram_to_zero
      integer ram_index;
      initial
        for (ram_index = 0; ram_index < RAM_DEPTH; ram_index = ram_index + 1)
          PRAM[ram_index] = {RAM_WIDTH{1'b0}}; 
    end
  endgenerate

  always @(posedge i_clk)
    if (enable)
      if (write_enable)
        PRAM[i_addr] <= input_data;
      else
        ram_data <= PRAM[i_addr];

  // The following is a 1 clock cycle read latency at the cost of a longer clock-to-out timing
  assign o_instruccion = ram_data;


  //  The following function calculates the address width based on specified RAM depth
  function integer clogb2;
    input integer depth;
      for (clogb2=0; depth>0; clogb2=clogb2+1)
        depth = depth >> 1;
  endfunction

endmodule