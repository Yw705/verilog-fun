module adder (
    input wire A;
    input wire B;
    input wire C;
    output wire [2:0] X,
);
    wire xor = A ^ B ^ C;
    wire and = (A & B) | (A & C) | (B & C);
assign X = {and, xor}
endmodule