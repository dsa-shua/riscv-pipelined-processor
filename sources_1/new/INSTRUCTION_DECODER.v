`timescale 1ns / 1ps
module INSTRUCTION_DECODER(
    input [31:0] INSTRUCTION,
    output  [6:0] OPCODE,
    output  [5:0] RD,
    output  [2:0] FUNC3,
    output  [4:0] RS1,
    output  [4:0] RS2,
    output  [6:0] FUNC7 
    );

    assign OPCODE  = INSTRUCTION[6:0];
    assign RD      = INSTRUCTION[11:7];
    assign FUNC3   = INSTRUCTION[14:12];
    assign RS1     = INSTRUCTION[19:15];
    assign RS2     = INSTRUCTION[24:20];
    assign FUNC7   = INSTRUCTION[31:25];
    
endmodule
