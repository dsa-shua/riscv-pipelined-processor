module adder(
    input wire [31:0] in_a,
    input wire [31:0] in_b,
    output wire [31:0] res
);
    assign res = in_a + in_b;
endmodule