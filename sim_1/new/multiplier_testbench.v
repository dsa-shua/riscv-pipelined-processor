`timescale 1ns / 1ps
module multiplier_testbench(

    );
    
//    reg done_reg;
    reg clk;
    wire [31:0] result;
    reg [31:0] num1, num2;
    initial begin
        clk = 0;
//        result = 0;
        forever begin
            #5;
            clk = ~clk;
        end
    end
    
    initial begin
        num1 = 26;
        num2 = 49;
    end
    
    multiply_logic multiplier_block(
        .CLK                    (clk),
        .in_a                (num1),
        .in_b                (num2),
        .res                 (result)
//        .DONE                   (done_reg)
    );
    
endmodule
