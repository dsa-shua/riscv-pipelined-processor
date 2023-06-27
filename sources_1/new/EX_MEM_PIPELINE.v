`timescale 1ns / 1ps
module EX_MEM_PIPELINE(
    input CLK,
    input[31:0] IN_PC,
    input  [5:0] IN_RD,
    output reg  [31:0] OUT_PC, 
    output reg  [5:0] OUT_RD,
    input   [1:0] IN_ALUOp,
    input   IN_ALUSrc,
    input   IN_Branch,
    input   IN_MemRead,
    input   IN_MemWrite,
    input   IN_RegWrite,
    input   IN_MemToReg,
    output reg [1:0] OUT_ALUOp,
    output reg OUT_ALUSrc,
    output reg OUT_Branch,
    output reg OUT_MemRead,
    output reg OUT_MemWrite,
    output reg OUT_RegWrite,
    output reg OUT_MemToReg,
    input [31:0] IN_EXE_RESULT,
    output reg [31:0] OUT_EXE_RESULT,
    input IN_ZERO,
    output reg OUT_ZERO,
    input [31:0] IN_READ_DATA_1,
    input [31:0] IN_READ_DATA_2,
    
    output reg [31:0] OUT_READ_DATA_1,
    output reg [31:0] OUT_READ_DATA_2
    );
    
    always@(negedge CLK) begin
        OUT_READ_DATA_1 <= IN_READ_DATA_1;
        OUT_READ_DATA_2 <= IN_READ_DATA_2;
        OUT_PC          <= IN_PC;
        OUT_ALUOp       <= IN_ALUOp;
        OUT_ALUSrc      <= IN_ALUSrc;
        OUT_Branch      <= IN_Branch;
        OUT_MemRead     <= IN_MemRead;
        OUT_MemWrite    <= IN_MemWrite;
        OUT_RegWrite    <= IN_RegWrite;
        OUT_MemToReg    <= IN_MemToReg;
        OUT_EXE_RESULT  <= IN_EXE_RESULT;
        OUT_ZERO        <= IN_ZERO;
    end
    
    
endmodule
