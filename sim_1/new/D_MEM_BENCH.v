`timescale 1ns / 1ps
module D_MEM_BENCH(

    );
    
    reg clk;
    reg[31:0]   IN_ADDRESS;
    reg[31:0]   IN_WRITE_DATA;
    reg         IN_MemRead;
    reg         IN_MemWrite;
    wire[31:0]  OUT_READ_DATA;
    wire        OUT_SEGMENTATION_FAULT;
    
    reg[31:0]   BENCH_VALUE;
    initial begin
        clk = 0;
        forever begin
            #1;
            clk = ~clk;
        end
    end
    
    initial begin
        for(BENCH_VALUE = 0; BENCH_VALUE < 128; BENCH_VALUE = BENCH_VALUE + 1) begin
            IN_ADDRESS <= BENCH_VALUE;
            IN_WRITE_DATA <= BENCH_VALUE;
            IN_MemWrite <= 1;
            IN_MemRead <= 0;
            #2;
        end
        
        for(BENCH_VALUE = 0; BENCH_VALUE < 128; BENCH_VALUE = BENCH_VALUE + 1) begin
            IN_ADDRESS <= BENCH_VALUE;
            IN_MemWrite <= 0;
            IN_MemRead <= 1;
            #2;
        end
    end
    
    DATA_MEMORY DMEM(
        .CLK (clk),
        .ADDRESS (IN_ADDRESS),
        .WRITE_DATA (IN_WRITE_DATA),
        .MemRead (IN_MemRead),
        .MemWrite (IN_MemWrite),
        .READ_DATA (OUT_READ_DATA),
        .SEGMENTATION_FAULT_DMEM (OUT_SEGMENTATION_FAULT)
    );
    
endmodule
