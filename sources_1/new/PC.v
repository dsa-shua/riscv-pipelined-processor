`timescale 1ns / 1ps
module PC(
    input PC_DISABLE,
    input [31:0] NEXT_PC,
    output [31:0] PC
    );
    
    assign PC = PC_DISABLE ? 0 : NEXT_PC;
    
endmodule
