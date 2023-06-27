`timescale 1ns / 1ps
module IF_STAGE_BENCH(
        
    );
//  input CLK;
//  output [31:0]IF_ID_INST_OUT;
//  output [31:0]IF_ID_PC_OUT;
//  input [31:0]INPUT_ADDRESS;
//  input [31:0]INPUT_INSTRUCTION;
//  output PC_ALU_RES_ZERO;
//  input [31:0]PC_BRANCH_IN;
//  input PC_CTRL;
//  input PC_DISABLE;
//  input PROGB;

    reg CLK;
    wire [31:0] IF_ID_INST_OUT;     // output
    wire [31:0] IF_ID_PC_OUT;       // output
    reg [31:0] INPUT_ADDRESS;       // input, [DEV] PC# of custom inst
    reg [31:0] INPUT_INSTRUCTION;   // in, [DEV] custom inst at PC 
    wire PC_ALU_RES_ZERO;           // [DEV] IGNORE
    reg [31:0] PC_BRANCH_IN = 0;    // in, resulting branch value from EX STAGE, set to 0
    reg PC_CTRL = 0;                // in, 1 if taking branch, 0 if using natural PC
    reg PC_DISABLE;                 // in, 1 to reset PC to 0?
    reg PROGB;                      // in, 1 to start programming INST MEM
    
    initial begin
        CLK = 0;
        forever begin
            #1; // 2 units : 1 CLK PERIOD
            CLK <= ~CLK;
        end
    end
    
    reg [31:0] i;
    initial begin
        // INSTRUCTION PROGRAM PHASE
        PROGB = 0;  // active low for program
        PC_DISABLE = 1;
        
        // Program first page with weird instructions?
        for (i = 0; i < (64 << 2); i = i + 4) begin
            INPUT_ADDRESS = i;
            INPUT_INSTRUCTION = i;
            #2; // wait for next clock edge for next program
        end
        
        // PC BASED INSTRUCTION FETCH PHASE
        PROGB = 1;
        PC_DISABLE = 0;
        PC_CTRL = 0;    // 0 for natural PC, 1 for branch taken
        for(i = 0; i < 64; i = i + 1) begin
            #2;
        end
        
    end
    
    
    IF_STAGE_BLK IFSTBLK(
        .CLK                (CLK),                      
        .IF_ID_INST_OUT     (IF_ID_INST_OUT),           
        .IF_ID_PC_OUT       (IF_ID_PC_OUT),
        .INPUT_ADDRESS      (INPUT_ADDRESS),
        .INPUT_INSTRUCTION  (INPUT_INSTRUCTION),
        .PC_ALU_RES_ZERO    (PC_ALU_RES_ZERO),
        .PC_BRANCH_IN       (PC_BRANCH_IN),
        .PC_CTRL            (PC_CTRL),
        .PC_DISABLE         (PC_DISABLE),
        .PROGB              (PROGB)
    );
endmodule
