`timescale 1ns / 1ps
module IMM_GEN(
    input CLK,
    input [31:0] INSTRUCTION,
    output reg [31:0] IMM_VALUE
    );
    
    localparam[6:0] R   = 7'b011_0011; 
    localparam[6:0] I   = 7'b000_0011;
    localparam[6:0] S   = 7'b010_0011;
    localparam[6:0] SB  = 7'b110_0011;
    
    reg [6:0] opcode;
    always@(posedge CLK) begin
            opcode <= INSTRUCTION[6:0];
            case(opcode) 
                R   : IMM_VALUE <= 0;
                I   : IMM_VALUE <= INSTRUCTION[31:20];
                S   : IMM_VALUE <= {INSTRUCTION[31:25],INSTRUCTION[11:7]};
                SB  : IMM_VALUE <= {INSTRUCTION[31],INSTRUCTION[7],INSTRUCTION[30:25],INSTRUCTION[11:8]};
            endcase
    end
    
endmodule
