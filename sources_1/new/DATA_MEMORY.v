`timescale 1ns / 1ps
module DATA_MEMORY(
    input CLK,
    input [31:0] ADDRESS,
    input [31:0] WRITE_DATA,
    input MemRead,
    input MemWrite,
    output reg [31:0] READ_DATA  // brings 4-byte data.. if you need 1 byte, use offset (spatial locality)
//    output reg SEGMENTATION_FAULT_DMEM
    );
    
    reg[31:0] MEMORY_ARRAY [1023:0]; // 4 bytes of 1024 memory cells (word-granularity)

    always@(posedge CLK) begin
        if(MemRead && MemWrite == 0) begin
            READ_DATA <= MEMORY_ARRAY[ADDRESS];
        end
        if(MemWrite && MemRead == 0) begin
            MEMORY_ARRAY[ADDRESS] <= WRITE_DATA;
        end
    end
    
endmodule
