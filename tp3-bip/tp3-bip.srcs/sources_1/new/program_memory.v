`timescale 1ns / 1ps

//  Xilinx Single Port No Change RAM
//  This code implements a parameterizable single-port no-change memory where when data is written
//  to the memory, the output remains unchanged.  This is the most power efficient write mode.
//  If a reset or enable is not necessary, it may be tied off or removed from the code.

module program_memory
#(
  parameter RAM_WIDTH = 16,                  // Specify RAM data width
  parameter RAM_DEPTH = 2048                // Specify RAM depth (number of entries)
 )
 (
  input  wire                           i_valid,
  input  wire [clogb2(RAM_DEPTH-1)-1:0] i_addr, // Address bus, width determined from RAM_DEPTH
  input                                 i_clk,  // Clock
  output wire [RAM_WIDTH-1:0]           o_instruction  // RAM output data
 );

  wire [RAM_WIDTH-1:0] input_data   = 0; // RAM input data
  wire                 write_enable = 0; // Write enable
  wire                 enable       = 1; // RAM Enable, for additional power savings, disable port when not in use
  wire                 reset        = 0; // Output reset (does not affect memory contents)
  wire                 reg_enable   = 1; // Output register enable

  reg [RAM_WIDTH-1:0] PRAM [RAM_DEPTH-1:0];
  reg [RAM_WIDTH-1:0] ram_data = {RAM_WIDTH{1'b0}};

  // Inicializa los primeros 8 bancos de memoria (uno por cada instruccion)
  initial begin
  PRAM[0] = 16'b00010_000_0000_0001; // Load variable 0x01 => ACC=DRAM[0x01]
  PRAM[1] = 16'b00101_000_0000_0010; // Add immediate +0x2 => ACC=DRAM[0x01]+0x02
  PRAM[2] = 16'b00001_000_0000_1001; // Store in 0x9 =>DRAM[0x09]=ACC
  PRAM[3] = 16'b00011_000_0000_1000; // Load immediate 0x08 => ACC=0x08
  PRAM[4] = 16'b00110_000_0000_0010; // Substract variable in 0x02 => ACC=0x08-DRAM[0x02]
  PRAM[5] = 16'b00100_000_0000_0010; // Add variable in 0x02 => ACC=0x08
  PRAM[6] = 16'b00111_000_0000_0100; // Substract immediate 0x04 => ACC = 0x04
  PRAM[7] = 16'b00000_000_0000_0000; // Halt
  PRAM[7] = 16'b00010_000_0000_0001; // Load variable 0x01 => ACC=DRAM[0x01]
  end

  always @(negedge i_clk)begin:read_pc
    if (enable && i_valid)
        ram_data <= PRAM[i_addr];
  end
  
  assign o_instruction = ram_data;

  //  The following function calculates the address width based on specified RAM depth
  function integer clogb2;
    input integer depth;
      for (clogb2=0; depth>0; clogb2=clogb2+1)
        depth = depth >> 1;
  endfunction
endmodule
