//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Jun 27 22:00:18 2023
//Host        : DESKTOP-H4K1N5 running 64-bit major release  (build 9200)
//Command     : generate_target ID_STAGE_wrapper.bd
//Design      : ID_STAGE_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ID_STAGE_BLK
   (CLK,
    ID_OUT_ALUOp,
    ID_OUT_ALUSrc,
    ID_OUT_Branch,
    ID_OUT_FUNC3,
    ID_OUT_FUNC7,
    ID_OUT_MemRead,
    ID_OUT_MemToReg,
    ID_OUT_MemWrite,
    ID_OUT_PC,
    ID_OUT_RD,
    ID_OUT_READ_DATA_1,
    ID_OUT_READ_DATA_2,
    ID_OUT_RegWrite,
    INSTRUCTION,
    PC,
    WRITE,
    WRITE_DATA,
    WRITE_REG);
  input CLK;
  output [1:0]ID_OUT_ALUOp;
  output ID_OUT_ALUSrc;
  output ID_OUT_Branch;
  output [2:0]ID_OUT_FUNC3;
  output [6:0]ID_OUT_FUNC7;
  output ID_OUT_MemRead;
  output ID_OUT_MemToReg;
  output ID_OUT_MemWrite;
  output [31:0]ID_OUT_PC;
  output [5:0]ID_OUT_RD;
  output [31:0]ID_OUT_READ_DATA_1;
  output [31:0]ID_OUT_READ_DATA_2;
  output ID_OUT_RegWrite;
  input [31:0]INSTRUCTION;
  input [31:0]PC;
  input WRITE;
  input [31:0]WRITE_DATA;
  input [4:0]WRITE_REG;

  wire CLK;
  wire [1:0]ID_OUT_ALUOp;
  wire ID_OUT_ALUSrc;
  wire ID_OUT_Branch;
  wire [2:0]ID_OUT_FUNC3;
  wire [6:0]ID_OUT_FUNC7;
  wire ID_OUT_MemRead;
  wire ID_OUT_MemToReg;
  wire ID_OUT_MemWrite;
  wire [31:0]ID_OUT_PC;
  wire [5:0]ID_OUT_RD;
  wire [31:0]ID_OUT_READ_DATA_1;
  wire [31:0]ID_OUT_READ_DATA_2;
  wire ID_OUT_RegWrite;
  wire [31:0]INSTRUCTION;
  wire [31:0]PC;
  wire WRITE;
  wire [31:0]WRITE_DATA;
  wire [4:0]WRITE_REG;

  ID_STAGE ID_STAGE_i
       (.CLK(CLK),
        .ID_OUT_ALUOp(ID_OUT_ALUOp),
        .ID_OUT_ALUSrc(ID_OUT_ALUSrc),
        .ID_OUT_Branch(ID_OUT_Branch),
        .ID_OUT_FUNC3(ID_OUT_FUNC3),
        .ID_OUT_FUNC7(ID_OUT_FUNC7),
        .ID_OUT_MemRead(ID_OUT_MemRead),
        .ID_OUT_MemToReg(ID_OUT_MemToReg),
        .ID_OUT_MemWrite(ID_OUT_MemWrite),
        .ID_OUT_PC(ID_OUT_PC),
        .ID_OUT_RD(ID_OUT_RD),
        .ID_OUT_READ_DATA_1(ID_OUT_READ_DATA_1),
        .ID_OUT_READ_DATA_2(ID_OUT_READ_DATA_2),
        .ID_OUT_RegWrite(ID_OUT_RegWrite),
        .INSTRUCTION(INSTRUCTION),
        .PC(PC),
        .WRITE(WRITE),
        .WRITE_DATA(WRITE_DATA),
        .WRITE_REG(WRITE_REG));
endmodule
