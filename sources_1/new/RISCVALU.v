`timescale 1ns / 1ps
// RISCV Basic ALU
module RISCVALU(CLK, ALUctl, A, B, ALUOut, Zero);
    input CLK;
    input[3:0] ALUctl;  // received from ALUControl.v module
    input[31:0] A,B;
    output reg [31:0] ALUOut;
    output Zero;
    
    assign Zero = (ALUOut == 0);
    always@(posedge CLK) begin
        case (ALUctl) 
            0: ALUOut <= A & B;
            1: ALUOut <= A | B;
            2: ALUOut <= A + B;
            6: ALUOut <= A - B;
            7: ALUOut <=  A < B ? 1 :0;
            12: ALUOut <= ~(A | B);
            default: ALUOut <= 0;
        endcase
    end
endmodule
