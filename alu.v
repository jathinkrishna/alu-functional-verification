// alu.v : 4-bit ALU Design
module alu (
    input  [3:0] a, b,
    input  [2:0] op,
    output reg [3:0] result,
    output reg carry
);
    always @(*) begin
        case(op)
            3'b000: {carry, result} = a + b;   // ADD
            3'b001: {carry, result} = a - b;   // SUB
            3'b010: {carry, result} = a & b;   // AND
            3'b011: {carry, result} = a | b;   // OR
            3'b100: {carry, result} = a ^ b;   // XOR
            3'b101: {carry, result} = ~a;      // NOT (on A only)
            default: {carry, result} = 0;
        endcase
    end
endmodule
