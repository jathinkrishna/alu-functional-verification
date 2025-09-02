// tb_alu.v : Testbench for ALU
`timescale 1ns/1ps
module tb_alu;

    reg  [3:0] a, b;
    reg  [2:0] op;
    wire [3:0] result;
    wire carry;

    // Instantiate DUT
    alu uut (.a(a), .b(b), .op(op), .result(result), .carry(carry));

    initial begin
        // Test 1: ADD
        a=4'b0101; b=4'b0011; op=3'b000; #10;
        if(result==8 && carry==0) $display("ADD : PASS ✅ (result=%b carry=%b)", result, carry);
        else $display("ADD : FAIL ❌");

        // Test 2: SUB
        a=4'b0110; b=4'b0010; op=3'b001; #10;
        if(result==4 && carry==0) $display("SUB : PASS ✅ (result=%b carry=%b)", result, carry);
        else $display("SUB : FAIL ❌");

        // Test 3: AND
        a=4'b1100; b=4'b1010; op=3'b010; #10;
        if(result==8) $display("AND : PASS ✅ (result=%b carry=%b)", result, carry);
        else $display("AND : FAIL ❌");

        // Test 4: OR
        a=4'b1100; b=4'b1010; op=3'b011; #10;
        if(result==14) $display("OR  : PASS ✅ (result=%b carry=%b)", result, carry);
        else $display("OR  : FAIL ❌");

        // Test 5: XOR
        a=4'b1100; b=4'b1010; op=3'b100; #10;
        if(result==6) $display("XOR : PASS ✅ (result=%b carry=%b)", result, carry);
        else $display("XOR : FAIL ❌");

        // Test 6: NOT
        a=4'b1111; b=4'b0000; op=3'b101; #10;
        if(result==0) $display("NOT : PASS ✅ (result=%b carry=%b)", result, carry);
        else $display("NOT : FAIL ❌");

        $display("Simulation complete ✅");
        $finish;
    end
endmodule
