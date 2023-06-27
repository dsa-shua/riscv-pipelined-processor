`timescale 1ns / 1ps
module testbench(
);
    reg clk;
    initial begin
        clk = 0;
        forever begin
            #10;
            clk = ~clk;
        end
    end
    
    wire[31:0] read_data;
    design_1_wrapper top(
        .CLK(clk),
        .result_data(read_data)
    );
   
    
endmodule