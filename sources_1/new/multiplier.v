`timescale 1ns / 1ps

module multiplier(
    input wire CLK,
    input wire [31:0] in_a,
    input wire [31:0] in_b,
    output wire [31:0] res,
    output wire [31:0] r0,
    output wire [31:0] r1,
    output wire [31:0] r2,
    output wire [31:0] r3,
    output wire [31:0] r4,
    output wire [31:0] r5,
    output wire [31:0] r6,
    output wire [31:0] r7,
    output wire [31:0] r8,
    output wire [31:0] r9,
    output wire [31:0] r10,
    output wire [31:0] r11,
    output wire [31:0] r12,
    output wire [31:0] r13,
    output wire [31:0] r14,
    output wire [31:0] r15,
    output wire [31:0] r16,
    output wire [31:0] r17,
    output wire [31:0] r18,
    output wire [31:0] r19,
    output wire [31:0] r20,
    output wire [31:0] r21,
    output wire [31:0] r22,
    output wire [31:0] r23,
    output wire [31:0] r24,
    output wire [31:0] r25,
    output wire [31:0] r26,
    output wire [31:0] r27,
    output wire [31:0] r28,
    output wire [31:0] r29,
    output wire [31:0] r30,
    output wire [31:0] r31
//    output wire DONE                        // let master know operation is done
    );
   
    reg done_reg = 0;
    reg [2:0] PHASE = 3'b000;
    reg[31:0] in_a, in_b;
    reg[31:0] res0, res1,res2,res3,res4,res5,res6,res7,res8,res9;
    reg[31:0] res10,res11,res12,res13,res14,res15,res16,res17,res18,res19;
    reg[31:0] res20,res21,res22,res23,res24,res25,res26,res27,res28,res29;
    reg[31:0] res30,res31;
   
    
//    assign DONE = done_reg;
    shift_block bit0(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res0),
        .index      (8'd0)
    );
    
        shift_block bit1(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res1),
        .index      (8'd1)
    );
    
        shift_block bit2(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res2),
        .index      (8'd2)
    );
    
        shift_block bit3(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res3),
        .index      (8'd3)
    );
    
        shift_block bit4(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res4),
        .index      (8'd4)
    );
    
        shift_block bit5(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res5),
        .index      (8'd5)
    );
    
        shift_block bit6(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res6),
        .index      (8'd6)
    );
    
        shift_block bit7(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res7),
        .index      (8'd7)
    );
        shift_block bit8(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res8),
        .index      (8'd8)
    );
    
        shift_block bit9(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res9),
        .index      (8'd9)
    );
    
        shift_block bit10(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res10),
        .index      (8'd10)
    );
    
        shift_block bit11(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res11),
        .index      (8'd11)
    );
    
        shift_block bit12(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res12),
        .index      (8'd12)
    );
    
        shift_block bit13(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res13),
        .index      (8'd13)
    );
    
        shift_block bit14(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res14),
        .index      (8'd14)
    );
    
        shift_block bit15(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res15),
        .index      (8'd15)
    );
        shift_block bit16(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res16),
        .index      (8'd16)
    );
    
        shift_block bit17(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res17),
        .index      (8'd17)
    );
    
        shift_block bit18(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res18),
        .index      (8'd18)
    );
    
        shift_block bit19(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res19),
        .index      (8'd19)
    );
    
        shift_block bit20(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res20),
        .index      (8'd20)
    );
    
        shift_block bit21(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res21),
        .index      (8'd21)
    );
    
        shift_block bit22(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res22),
        .index      (8'd22)
    );
    
        shift_block bit23(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res23),
        .index      (8'd23)
    );
        shift_block bit24(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res24),
        .index      (8'd24)
    );
    
        shift_block bit25(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res25),
        .index      (8'd25)
    );
    
        shift_block bit26(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res26),
        .index      (8'd26)
    );
    
        shift_block bit27(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res27),
        .index      (8'd27)
    );
    
        shift_block bit28(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res28),
        .index      (8'd28)
    );
    
        shift_block bit29(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res29),
        .index      (8'd29)
    );
    
        shift_block bit30(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res30),
        .index      (8'd30)
    );
    
        shift_block bit31(
        .CLK        (CLK),
        .in_a       (in_a),
        .in_b       (in_b),
        .res        (res31),
        .index      (8'd31)
    );
    
    assign r0 = res0;
    assign r1 = res1;
    assign r2 = res2;
    assign r3 = res3;
    assign r4 = res4;
    assign r5 = res5;
    assign r6 = res6;
    assign r7 = res7;
    assign r8 = res8;
    assign r9 = res9;
    assign r10 = res10;
    assign r11 = res11;
    assign r12 = res12;
    assign r13 = res13;
    assign r14 = res14;
    assign r15 = res15;
    assign r16 = res16;
    assign r17 = res17;
    assign r18 = res18;
    assign r19 = res19;
    assign r20 = res20;
    assign r21 = res21;
    assign r22 = res22;
    assign r23 = res23;
    assign r24 = res24;
    assign r25 = res25;
    assign r26 = res26;
    assign r27 = res27;
    assign r28 = res28;
    assign r29 = res29;
    assign r30 = res30;
    assign r31 = res31;
    
    
endmodule
