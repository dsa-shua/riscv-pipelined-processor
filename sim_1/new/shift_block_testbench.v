`timescale 1ns / 1ps
module shift_block_testbench();

    reg clk;
    reg [31:0] result;
    initial begin
        clk = 0;
        result = 0;
        forever begin
            #5;
            clk = ~clk;
        end
    end
    
    reg[3:0] num1, num2;
//    reg[7:0] result;
    wire[31:0] res0,res1,res2,res3;
    initial begin
        num1 = 4'd8;
        num2 = 4'd9;
        #10;
        
        result = result + res0; #10;
        result = result + (res1 << 0); #10;
        result = result + (res2 << 0); #10;
        result = result + (res3 << 0);
    end
    
    shift_block bit0(
        .CLK        (clk),
        .index      (4'b0),
        .in_a       (num1),
        .in_b       (num2),
        .res        (res0)
    );
    
    shift_block bit1(
         .CLK        (clk),
        .index      (4'b1),
        .in_a       (num1),
        .in_b       (num2),
        .res        (res1)
    );
    
    shift_block bit2(
        .CLK        (clk),
        .index      (4'b10),
        .in_a       (num1),
        .in_b       (num2),
        .res        (res2)
    );
   
    shift_block bit3(
        .CLK        (clk),
        .index      (4'b11),
        .in_a       (num1),
        .in_b       (num2),
        .res        (res3)
    );
    
    
endmodule
