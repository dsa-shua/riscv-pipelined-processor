`timescale 1ns / 1ps
module CONTROL(
    input [6:0] OPCODE,
    output  Branch,
    output  MemRead,
    output  MemToReg,
    output  [1:0] ALUOp,
    output  MemWrite,
    output  ALUSrc,
    output  RegWrite
    );
    
    reg[7:0] OUT_BUFF;
    /*
    OP CODE LIST
    R-type 
        add:    011_0011
        sub:    011_0011
        and:    011_0011
        or:     011_0011
    
    I-type
        ld:     000_0011
    
    S-type
        sd      010_0011
        
    SB-type
        beq     110_0011         
    
    */
    localparam[6:0] R   = 7'b011_0011; 
    localparam[6:0] I   = 7'b000_0011;
    localparam[6:0] S   = 7'b010_0011;
    localparam[6:0] SB  = 7'b110_0011;
   
    always case(OPCODE) 
        R : OUT_BUFF        <= 8'b0010_0010; 
        I : OUT_BUFF        <= 8'b1111_0000;
        S : OUT_BUFF        <= 8'b1X00_1000;
        SB: OUT_BUFF        <= 8'b0X00_0101;
        default : OUT_BUFF  <= 8'bXXXX_XXXX;
    endcase

   
        assign ALUOp       = OUT_BUFF[1:0];
        assign Branch      = OUT_BUFF[2];
        assign MemWrite    = OUT_BUFF[3];
        assign MemRead     = OUT_BUFF[4];
        assign RegWrite    = OUT_BUFF[5];
        assign MemToReg    = OUT_BUFF[6];
        assign ALUSrc      = OUT_BUFF[7];
    
endmodule
