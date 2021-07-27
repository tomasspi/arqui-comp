`timescale 1ns / 1ps

//  Xilinx Single Port No Change RAM
//  This code implements a parameterizable single-port no-change memory where when data is written
//  to the memory, the output remains unchanged.  This is the most power efficient write mode.
//  If a reset or enable is not necessary, it may be tied off or removed from the code.

module instruction_memory
#(
  parameter RAM_WIDTH = 32,                  // Specify RAM data width
  parameter RAM_DEPTH = 2048,                // Specify RAM depth (number of entries)
  parameter INIT_FILE = "C:/users/user/desktop/programa.mem"       // Specify name/location of RAM initialization file if using one (leave blank if not)
 )
(
  input  wire                 i_valid,
  input  wire [RAM_WIDTH-1:0] i_addr, // Address bus
  input                       i_clk,  // Clock
  output wire [RAM_WIDTH-1:0] o_instruccion  // RAM output data
);

  wire [RAM_WIDTH-1:0] input_data   = 0; // RAM input data
  wire                 enable       = 1; // RAM Enable, for additional power savings, disable port when not in use
  wire                 reset        = 0; // Output reset (does not affect memory contents)
  wire                 reg_enable   = 1; // Output register enable

  reg [RAM_WIDTH-1:0] PRAM [RAM_DEPTH-1:0];
  reg [RAM_WIDTH-1:0] ram_data = {RAM_WIDTH{1'b0}};
  reg load_done = 1'b0;
  
  // The following code either initializes the memory values to a specified file or to all zeros to match hardware
  always@(*)begin:load_file
    if(i_valid)
    begin
        if (~load_done && INIT_FILE != "")
        begin
            $readmemb(INIT_FILE, PRAM, 0, RAM_DEPTH-1);
            load_done = 1'b1;
        end
    end
  end
  
  always @(*)
  begin
    if (enable && i_valid)
        ram_data <= PRAM[i_addr];
  end
  
  // The following is a 1 clock cycle read latency at the cost of a longer clock-to-out timing
  assign o_instruccion = ram_data;


  //  The following function calculates the address width based on specified RAM depth
  function integer clogb2;
    input integer depth;
      for (clogb2=0; depth>0; clogb2=clogb2+1)
        depth = depth >> 1;
  endfunction

endmodule