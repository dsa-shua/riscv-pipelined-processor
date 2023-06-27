`timescale 1ns / 1ps

module INSTRUCTION_MEMORY(
    input CLK,
    input[31:0] INSTRUCTION_ADDRESS,
    output reg [31:0] INSTRUCTION,
    // output reg SEGMENTATION_FAULT,  // raise if address is bigger than 1024 - 1
    input PROGB,                  // LOW if programming
    input [31:0] INPUT_INSTRUCTION, // if PROGRAM HIGH, accept instruction
    input [31:0] INPUT_ADDRESS      // program instruction address 
    );
    
    reg[31:0] INST_MEM [1023:0]; // 1024 memory instructions, 32 bits wide
    
    always@(posedge CLK) begin
        if(PROGB) begin
            INSTRUCTION <= INST_MEM[(INSTRUCTION_ADDRESS >> 2)];
        end
        else if (PROGB == 0) begin
            INST_MEM[(INPUT_ADDRESS >> 2)] <= INPUT_INSTRUCTION;
        end
    end
    
    
endmodule
