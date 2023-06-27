//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Jun 27 19:32:01 2023
//Host        : DESKTOP-H4K1N5 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RISCV_PIPELINED
   (CLK,
    OUT_PC_0);
  input CLK;
  output [31:0]OUT_PC_0;

  wire CLK;
  wire [31:0]OUT_PC_0;

  design_1 design_1_i
       (.CLK(CLK),
        .OUT_PC_0(OUT_PC_0));
endmodule
