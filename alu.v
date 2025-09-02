module alu (
    input  [3:0] a, b,
    input  [2:0] sel,
    output reg [3:0] y,
    output reg carry
);

always @(*) begin
    carry = 0;
    case (sel)
        3'b000: {carry, y} = a + b;      // ADD
        3'b001: {carry, y} = a - b;      // SUB
        3'b010: y = a & b;               // AND
        3'b011: y = a | b;               // OR
        3'b100: y = a ^ b;               // XOR
        3'b101: y = ~(a ^ b);            // XNOR (new)
        3'b110: y = a << 1;              // Shift Left (new)
        3'b111: y = a >> 1;              // Shift Right (new)
        default: y = 4'b0000;
    endcase
end

endmodule
