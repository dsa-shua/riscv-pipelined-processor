`timescale 1ns / 1ps
module ID_EX_PIPELINE(
    input CLK,
    input[31:0] IN_PC,
//    input [31:0] IN_INSTRUCTION,
//    output reg [31:0] OUT_INSTRUCTION,
//    input  [6:0] IN_OPCODE,
    input  [5:0] IN_RD,
    input  [2:0] IN_FUNC3,
//    input  [4:0] IN_RS1,
//    input  [4:0] IN_RS2,
    input  [6:0] IN_FUNC7,   
    
    output reg  [31:0] OUT_PC, 
//    output reg  [6:0] OUT_OPCODE,
    output reg  [5:0] OUT_RD,
    output reg  [2:0] OUT_FUNC3,
//    output reg  [4:0] OUT_RS1,
//    output reg  [4:0] OUT_RS2,
    output reg  [6:0] OUT_FUNC7,
    
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
    
    input [31:0] IN_READ_DATA_1,
    input [31:0] IN_READ_DATA2,
    
    output reg [31:0] OUT_READ_DATA_1,
    output reg [31:0] OUT_READ_DATA_2
    );
    
    reg [31:0] PC_BUFF;
    
    always@(negedge CLK) begin
//        PC_BUFF      <= IN_PC;
        OUT_PC          <= IN_PC;
//        OUT_OPCODE   <= IN_OPCODE;
//        OUT_RD       <= IN_RD;    
        OUT_FUNC3       <= IN_FUNC3; 
//        OUT_RS1      <= IN_RS1;
//        OUT_RS2      <= IN_RS2;
        OUT_FUNC7       <= IN_FUNC7;
        OUT_ALUOp       <= IN_ALUOp;
        OUT_ALUSrc      <= IN_ALUSrc;
        OUT_Branch      <= IN_Branch;
        OUT_MemRead     <= IN_MemRead;
        OUT_MemWrite    <= IN_MemWrite;
        OUT_RegWrite    <= IN_RegWrite;
        OUT_MemToReg    <= IN_MemToReg;
//        OUT_INSTRUCTION <= IN_INSTRUCTION;
    end
endmodule
