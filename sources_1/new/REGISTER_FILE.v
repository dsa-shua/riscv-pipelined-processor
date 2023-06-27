`timescale 1ns / 1ps

module REGISTER_FILE(
        input CLK,
        input [4:0] REG1,
        input [4:0] REG2,
        input [4:0] WRITE_REG,
        input [31:0] WRITE_DATA,
        input WRITE,                    // LOW FOR READ, HIGH FOR WRITE
        output reg [31:0] READ_DATA_1,
        output reg [31:0] READ_DATA_2        
    );
    
    reg[31:0] r0 = 0; // hardwire to 0
    reg[31:0] r1;   
    reg[31:0] r2;
    reg[31:0] r3;
    reg[31:0] r4;
    reg[31:0] r5;
    reg[31:0] r6;
    reg[31:0] r7;
    reg[31:0] r8;
    reg[31:0] r9;
    reg[31:0] r10;
    reg[31:0] r11;
    reg[31:0] r12;
    reg[31:0] r13;
    reg[31:0] r14;
    reg[31:0] r15;
    reg[31:0] r16;
    reg[31:0] r17;
    reg[31:0] r18;
    reg[31:0] r19;
    reg[31:0] r20;
    reg[31:0] r21;
    reg[31:0] r22;
    reg[31:0] r23;
    reg[31:0] r24;
    reg[31:0] r25;
    reg[31:0] r26;
    reg[31:0] r27;
    reg[31:0] r28;
    reg[31:0] r29;
    reg[31:0] r30;
    reg[31:0] r31;
    
    reg WRITE_REQ;
    reg[31:0] WRITE_BUFF;
    reg[31:0] W_REG_BUFF;
    always@(posedge CLK) begin
        if(WRITE) begin
            WRITE_REQ <= 1;
            WRITE_BUFF <= WRITE_DATA;
            W_REG_BUFF <= WRITE_REG;
        end
        else begin
            WRITE_REQ <= 0;
        end
        case(REG1)
            0: READ_DATA_1 <= r0;
            0: READ_DATA_1 <= r0;
            1: READ_DATA_1 <= r1;
            2: READ_DATA_1 <=r2; 
            3: READ_DATA_1 <=r3;
            4: READ_DATA_1 <=r4; 
            5: READ_DATA_1 <=r5; 
            6: READ_DATA_1 <=r6; 
            7: READ_DATA_1 <=r7; 
            8: READ_DATA_1 <=r8; 
            9: READ_DATA_1 <=r9; 
            10: READ_DATA_1 <=r10; 
            11: READ_DATA_1 <=r11;
            12: READ_DATA_1 <=r12; 
            13: READ_DATA_1 <=r13; 
            14: READ_DATA_1 <=r14; 
            15: READ_DATA_1 <=r15; 
            16: READ_DATA_1 <=r16; 
            17: READ_DATA_1 <=r17;
            18: READ_DATA_1 <=r18; 
            19: READ_DATA_1 <=r19; 
            20: READ_DATA_1 <=r20;
            21: READ_DATA_1 <=r21; 
            22: READ_DATA_1 <=r22; 
            23: READ_DATA_1 <=r23; 
            24: READ_DATA_1 <=r24; 
            25: READ_DATA_1 <=r25; 
            26: READ_DATA_1 <=r26; 
            27: READ_DATA_1 <=r27; 
            28: READ_DATA_1 <=r28; 
            29: READ_DATA_1 <=r29; 
            30: READ_DATA_1 <=r30; 
            31: READ_DATA_1 <=r31; 
        endcase
        case(REG2)
            0: READ_DATA_2 <= r0;
            1: READ_DATA_2 <= r1;
            2: READ_DATA_2 <=r2; 
            3: READ_DATA_2 <=r3;
            4: READ_DATA_2 <=r4; 
            5: READ_DATA_2 <=r5; 
            6: READ_DATA_2 <=r6; 
            7: READ_DATA_2 <=r7; 
            8: READ_DATA_2 <=r8; 
            9: READ_DATA_2 <=r9; 
            10: READ_DATA_2 <=r10; 
            11: READ_DATA_2 <=r11;
            12: READ_DATA_2 <=r12; 
            13: READ_DATA_2 <=r13; 
            14: READ_DATA_2 <=r14; 
            15: READ_DATA_2 <=r15; 
            16: READ_DATA_2 <=r16; 
            17: READ_DATA_2 <=r17;
            18: READ_DATA_2 <=r18; 
            19: READ_DATA_2 <=r19; 
            20: READ_DATA_2 <=r20;
            21: READ_DATA_2 <=r21; 
            22: READ_DATA_2 <=r22; 
            23: READ_DATA_2 <=r23; 
            24: READ_DATA_2 <=r24; 
            25: READ_DATA_2 <=r25; 
            26: READ_DATA_2 <=r26; 
            27: READ_DATA_2 <=r27; 
            28: READ_DATA_2 <=r28; 
            29: READ_DATA_2 <=r29; 
            30: READ_DATA_2 <=r30; 
            31: READ_DATA_2 <=r31; 
        endcase
    end
    
    always@(negedge CLK) begin
        if(WRITE_REQ) begin
            case(W_REG_BUFF)
                0: r1 <= 0; // hardwire
                1: r1 <= WRITE_BUFF;
                2: r2 <= WRITE_BUFF;
                3: r3 <= WRITE_BUFF;
                4: r4 <= WRITE_BUFF;
                5: r5 <= WRITE_BUFF;
                6: r6 <= WRITE_BUFF;
                7: r7 <= WRITE_BUFF;
                8: r8 <= WRITE_BUFF;
                9: r9 <= WRITE_BUFF;
                10: r10 <= WRITE_BUFF;
                11: r11 <= WRITE_BUFF;
                12: r12 <= WRITE_BUFF;
                13: r13 <= WRITE_BUFF;
                14: r14 <= WRITE_BUFF;
                15: r15 <= WRITE_BUFF;
                16: r16 <= WRITE_BUFF;
                17: r17 <= WRITE_BUFF;
                18: r18 <= WRITE_BUFF;
                19: r19 <= WRITE_BUFF;
                20: r20 <= WRITE_BUFF;
                21: r21 <= WRITE_BUFF;
                22: r22 <= WRITE_BUFF;
                23: r23 <= WRITE_BUFF;
                24: r24 <= WRITE_BUFF;
                25: r25 <= WRITE_BUFF;
                26: r26 <= WRITE_BUFF;
                27: r27 <= WRITE_BUFF;
                28: r28 <= WRITE_BUFF;
                29: r29 <= WRITE_BUFF;
                30: r30 <= WRITE_BUFF;
                31: r31 <= WRITE_BUFF;
            endcase
        end
    end
    
endmodule
