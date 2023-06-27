`timescale 1ns / 1ps
module PIPELINE(
    input[1:0] IN_ALUOp,
    input IN_ALUSrc,
    input IN_Branch,
    input IN_MemRead,
    input IN_MemWrite,
    input IN_RegWrite,
    input IN_MemToReg,
    
    output[1:0] OUT_ALUOp,
    output OUT_ALUSrc,
    output OUT_Branch,
    output OUT_MemRead,
    output OUT_MemWrite,
    output OUT_RegWrite,
    output OUT_MemToReg
    );
    
    assign OUT_ALUOp    = IN_ALUOp;
    assign OUT_ALUSrc   = IN_ALUSrc;
    assign OUT_Branch   = IN_Branch;
    assign OUT_MemRead  = IN_MemRead;
    assign OUT_MemWrite = IN_MemWrite;
    assign OUT_RegWrite = IN_RegWrite;
    assign OUT_MemToReg = IN_MemToReg;
endmodule
