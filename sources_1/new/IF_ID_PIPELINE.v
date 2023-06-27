`timescale 1ns / 1ps
module IF_ID_PIPELINE(
    input CLK,
    input [31:0] IN_PC,
    input [31:0] IN_INSTRUCTION,
    output reg [31:0] OUT_PC,
    output reg [31:0] OUT_INSTRUCTION
    );
    
    reg [31:0] PC_BUFF;
    always@(negedge CLK) begin
        PC_BUFF             <= IN_PC;
        OUT_PC              <= PC_BUFF;
        OUT_INSTRUCTION     <= IN_INSTRUCTION;
    end
    
endmodule
