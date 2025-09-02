`timescale 1ns/1ps

module tb_alu;

    logic [3:0] a, b;
    logic [2:0] sel;
    logic [3:0] y;
    logic carry;

    // Instantiate DUT
    alu dut (.a(a), .b(b), .sel(sel), .y(y), .carry(carry));

    // Task for checking results
    task check(input [3:0] exp_y, input exp_carry);
        if (y === exp_y && carry === exp_carry)
            $display("PASS: sel=%b a=%0d b=%0d y=%0d carry=%b",
                      sel, a, b, y, carry);
        else
            $display("FAIL: sel=%b a=%0d b=%0d Expected y=%0d carry=%b, Got y=%0d carry=%b",
                      sel, a, b, exp_y, exp_carry, y, carry);
    endtask

    initial begin
        // VCD dump for waveform
        $dumpfile("alu.vcd");
        $dumpvars(0, tb_alu);

        // Test ADD
        a=4'd3; b=4'd2; sel=3'b000; #10; check(4'd5,0);
        // Test SUB
        a=4'd5; b=4'd2; sel=3'b001; #10; check(4'd3,0);
        // Test AND
        a=4'b1100; b=4'b1010; sel=3'b010; #10; check(4'b1000,0);
        // Test OR
        a=4'b1100; b=4'b1010; sel=3'b011; #10; check(4'b1110,0);
        // Test XOR
        a=4'b1100; b=4'b1010; sel=3'b100; #10; check(4'b0110,0);
        // Test XNOR
        a=4'b1100; b=4'b1010; sel=3'b101; #10; check(~(4'b1100^4'b1010),0);
        // Test Shift Left
        a=4'b0011; b=0; sel=3'b110; #10; check(4'b0110,0);
        // Test Shift Right
        a=4'b1000; b=0; sel=3'b111; #10; check(4'b0100,0);

        $finish;
    end
endmodule
