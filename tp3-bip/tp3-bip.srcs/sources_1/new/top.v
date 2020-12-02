`timescale 1ns / 1ps


module top
(
    input i_clk,
    input i_reset,
    output o_locked
);

wire clk_out;

clock u_clock
(
    .clk_in1(i_clk),
    .reset(i_reset),
    .clk_out1(clk_out),
    .locked(o_locked)
);

endmodule
