`timescale 1ns / 1ps


module sample_memory(
    input wire [31:0] result,
    input CLK
    );
    
    reg [31:0] memory_location;
    always@(posedge CLK) begin
        memory_location <= result;
    end    
endmodule
