//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Jun 27 21:14:03 2023
//Host        : DESKTOP-H4K1N5 running 64-bit major release  (build 9200)
//Command     : generate_target IF_STAGE_wrapper.bd
//Design      : IF_STAGE_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module IF_STAGE_BLK
   (CLK,
    IF_ID_INST_OUT,
    IF_ID_PC_OUT,
    INPUT_ADDRESS,
    INPUT_INSTRUCTION,
    PC_ALU_RES_ZERO,
    PC_BRANCH_IN,
    PC_CTRL,
    PC_DISABLE,
    PROGB);
  input CLK;
  output [31:0]IF_ID_INST_OUT;
  output [31:0]IF_ID_PC_OUT;
  input [31:0]INPUT_ADDRESS;
  input [31:0]INPUT_INSTRUCTION;
  output PC_ALU_RES_ZERO;
  input [31:0]PC_BRANCH_IN;
  input PC_CTRL;
  input PC_DISABLE;
  input PROGB;

  wire CLK;
  wire [31:0]IF_ID_INST_OUT;
  wire [31:0]IF_ID_PC_OUT;
  wire [31:0]INPUT_ADDRESS;
  wire [31:0]INPUT_INSTRUCTION;
  wire PC_ALU_RES_ZERO;
  wire [31:0]PC_BRANCH_IN;
  wire PC_CTRL;
  wire PC_DISABLE;
  wire PROGB;

  IF_STAGE IF_STAGE_i
       (.CLK(CLK),
        .IF_ID_INST_OUT(IF_ID_INST_OUT),
        .IF_ID_PC_OUT(IF_ID_PC_OUT),
        .INPUT_ADDRESS(INPUT_ADDRESS),
        .INPUT_INSTRUCTION(INPUT_INSTRUCTION),
        .PC_ALU_RES_ZERO(PC_ALU_RES_ZERO),
        .PC_BRANCH_IN(PC_BRANCH_IN),
        .PC_CTRL(PC_CTRL),
        .PC_DISABLE(PC_DISABLE),
        .PROGB(PROGB));
endmodule
