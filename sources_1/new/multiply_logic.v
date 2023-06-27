`timescale 1ns / 1ps
module multiply_logic(
    input wire [31:0] in_a,
    input wire [31:0] in_b,
    output wire[31:0] res,
    input wire CLK
    );
    
    wire [31:0] r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31;
    wire [31:0] r0_1, r2_3, r4_5, r6_7, r8_9, r10_11, r12_13, r14_15, r16_17, r18_19, r20_21, r22_23, r24_25, r26_27, r28_29, r30_31;
    wire [31:0] r0_2, r4_6, r8_10, r12_14, r16_18, r20_22, r24_26, r28_30;
    wire [31:0] r0_4, r8_12, r16_20, r24_28;
    wire [31:0] r0_8, r16_24, r0_16;
    
    multiplier multiplier_block(
        .in_a   (in_a),
        .in_b   (in_b),
        .CLK    (CLK),
        .r0     (r0),
        .r1     (r1),
        .r2     (r2),
        .r3     (r3),
        .r4     (r4),
        .r5     (r5),
        .r6     (r6),
        .r7     (r7),
        .r8     (r8),
        .r9     (r9),
        .r10     (r10),
        .r11     (r11),
        .r12     (r12),
        .r13     (r13),
        .r14     (r14),
        .r15     (r15),
        .r16     (r16),
        .r17     (r17),
        .r18     (r18),
        .r19     (r19),
        .r20     (r20),
        .r21     (r21),
        .r22     (r22),
        .r23     (r23),
        .r24     (r24),
        .r25     (r25),
        .r26     (r26),
        .r27     (r27),
        .r28     (r28),
        .r29     (r29),
        .r30     (r30),
        .r31     (r31)
    );
    
    adder add0_1 (
        .in_a   (r0),
        .in_b   (r1),
        .res    (r0_1)
    );
        adder add2_3 (
        .in_a   (r2),
        .in_b   (r3),
        .res    (r2_3)
    );
        adder add4_5 (
        .in_a   (r4),
        .in_b   (r5),
        .res    (r4_5)
    );
        adder add6_7 (
        .in_a   (r6),
        .in_b   (r7),
        .res    (r6_7)
    );
        adder add8_9 (
        .in_a   (r8),
        .in_b   (r9),
        .res    (r10_11)
    );
    adder add10_11(
        .in_a   (r10),
        .in_b   (r11),
        .res    (r10_11)
    );
        adder add12_13 (
        .in_a   (r12),
        .in_b   (r13),
        .res    (r12_13)
    );
        adder add14_15 (
        .in_a   (r14),
        .in_b   (r15),
        .res    (r14_15)
    );
        adder add16_17 (
        .in_a   (r16),
        .in_b   (r17),
        .res    (r16_17)
    );
        adder add18_19 (
        .in_a   (r18),
        .in_b   (r19),
        .res    (r18_19)
    );
        adder add20_21 (
        .in_a   (r20),
        .in_b   (r21),
        .res    (r20_21)
    );
        adder add22_23 (
        .in_a   (r22),
        .in_b   (r23),
        .res    (r22_23)
    );
        adder add24_25 (
        .in_a   (r24),
        .in_b   (r25),
        .res    (r24_25)
    );
        adder add26_27 (
        .in_a   (r26),
        .in_b   (r27),
        .res    (r26_27)
    );
        adder add28_29 (
        .in_a   (r28),
        .in_b   (r29),
        .res    (r28_29)
    );
        adder add30_31 (
        .in_a   (r30),
        .in_b   (r31),
        .res    (r30_31)
    );
    
    
    adder add0_2 (
        .in_a   (r0_1),
        .in_b   (r2_3),
        .res    (r0_2)
    );
    
        adder add4_6 (
        .in_a   (r4_5),
        .in_b   (r6_7),
        .res    (r4_6)
    );
        adder add8_10 (
        .in_a   (r8_9),
        .in_b   (r10_11),
        .res    (r8_10)
    );
        adder add12_14 (
        .in_a   (r12_13),
        .in_b   (r14_15),
        .res    (r12_14)
    );
        adder add16_18 (
        .in_a   (r16_17),
        .in_b   (r18_19),
        .res    (r16_18)
    );
        adder add20_22 (
        .in_a   (r20_21),
        .in_b   (r22_23),
        .res    (r20_22)
    );
    adder add24_26 (
        .in_a   (r24_25),
        .in_b   (r26_27),
        .res    (r24_26)
    );
    adder add28_30 (
        .in_a   (r28_29),
        .in_b   (r30_31),
        .res    (r28_30)
    );
    
    
        adder add0_4 (
        .in_a   (r0_2),
        .in_b   (r4_6),
        .res    (r0_4)
    );
        adder add8_12 (
        .in_a   (r8_10),
        .in_b   (r12_14),
        .res    (r8_12)
    );
        adder add16_20 (
        .in_a   (r16_18),
        .in_b   (r20_22),
        .res    (r16_20)
    );
        adder add24_28 (
        .in_a   (r24_26),
        .in_b   (r28_30),
        .res    (r24_28)
    );
    
    
    adder add0_8 (
        .in_a   (r0_4),
        .in_b   (r8_12),
        .res    (r0_8)
    );
    
        adder add16_24 (
        .in_a   (r16_20),
        .in_b   (r24_28),
        .res    (r16_24)
    );
    
        adder add0_16 (
        .in_a   (r0_8),
        .in_b   (r16_24),
        .res    (res)
    );

    
endmodule
