`timescale 1ns / 1ps
module ALUBENCH(

    );
    
    reg clk;
    reg [31:0] A,B;
    wire [31:0] C;
    reg[1:0] ALUOp;
    reg[5:0] FuncCode;
    reg[3:0] ALUCtl;
    initial begin
        clk = 0;
        forever begin
            #10;
            clk = ~clk;
        end
    end
    
    initial begin
        A <= 5;
        B <= 5;
        ALUCtl <= 0;
        #20;
        
        A <= 5;
        B <= 5;
        ALUCtl <= 1;
        #20;
        
        A <= 5;
        B <= 5;
        ALUCtl <= 2;
        #20;
        
        A <= 5;
        B <= 5;
        ALUCtl <= 6;
        #20;
        
        A <= 5;
        B <= 5;
        ALUCtl <= 7;
        #20;
        
        A <= 5;
        B <= 5;
        ALUCtl <= 12;
        #20;
    end
    
    RISCVALU alu(
        .ALUctl(ALUCtl),
        .A(A),
        .B(B),
        .ALUOut(C)
    );
    
endmodule
