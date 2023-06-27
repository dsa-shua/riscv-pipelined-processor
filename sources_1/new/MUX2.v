`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/26 11:49:54
// Design Name: 
// Module Name: 2_MUX
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX2(
    input CTL,
    input [31:0] A,B,
    output  [31:0] C
    );
    
    assign C = CTL ? B : A;
    
endmodule
