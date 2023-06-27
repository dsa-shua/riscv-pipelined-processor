`timescale 1ns / 1ps
module ALUControl(ALUOp, FUNC3, FUNC7, ALUCtl);
    input [1:0] ALUOp;
    output reg [3:0] ALUCtl;
    input [2:0] FUNC3;
    input [6:0] FUNC7;
    /*
    000_0000 , 000 -> R-type add
    010_0000 , 000 -> R-type sub
    000_0000 , 111 -> R-type AND
    000_0000 , 110 -> R-type OR
    
    XXX_XXXX , XXX -> lw add
    XXX_XXXX , XXX -> sw add
    XXX_XXXX , XXX -> beq sub
    */
    
       always case(ALUOp)
        2'b00: begin
                case(FUNC3) 
                    3'b000 : begin 
                            case(FUNC7)
                                7'b000_0000 : ALUCtl <= 2;  // add
                                7'b010_0000 : ALUCtl <= 6;  // sub
                                default : ALUCtl <= 15;
                            endcase
                        end
                    3'b111 : ALUCtl <= 0;   // AND
                    3'b110 : ALUCtl <= 1;   // OR
                    default: ALUCtl <= 15;
                endcase
            end
        2'b01 : ALUCtl <= 6;    // SUB
        2'b00 : ALUCtl <= 2;    // ADD
        default : ALUCtl <= 15; // Should not happen
    endcase
endmodule
