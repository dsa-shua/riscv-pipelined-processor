`timescale 1ns / 1ps
module INST_MEM_TESTBENCH(

    );
    
    reg clk;
    reg[31:0] IN_INST_ADDR;
    wire[31:0] OUT_INSTRUCTION;
    reg PROGRAM_STAT;
    reg[31:0] PROG_IN_INST_ADDR;
    reg[31:0] PROG_IN_INST_DATA;
    wire OUT_SEGMENTATION_FAULT;
    reg [31:0] addr; // use in for loop
    reg[31:0] read_addr;
    initial begin
//        REG_OUT_1 = 0;
//        REG_OUT_2 = 0;
        clk = 0;
        forever begin
            #1;
            clk = ~clk;
        end
    end
    
    initial begin
        // Program Phase
        for(addr = 0; addr < 64; addr = addr + 1) begin
            PROG_IN_INST_ADDR<= addr;
            PROGRAM_STAT <= 0;
            PROG_IN_INST_DATA <= addr;
            #2;
        end
        
        // Read Phase
        for(read_addr = 0; read_addr < 64; read_addr = read_addr + 1) begin
            IN_INST_ADDR <= read_addr;
            PROGRAM_STAT <= 1;
            #2;
        end
    end
    
//    INSTRUCTION_MEMORY INSTMEM(
//        .CLK (clk),
//        .INSTRUCTION_ADDRESS (IN_INST_ADDR),
//        .INSTRUCTION (OUT_INSTRUCTION),
//        .SEGMENTATION_FAULT (OUT_SEGMENTATION_FAULT),
//        .PROGRAM (PROGRAM_STAT),
//        .INPUT_INSTRUCTION (PROG_IN_INST_DATA),
//        .INPUT_ADDRESS (PROG_IN_INST_ADDR)
//    );
endmodule
