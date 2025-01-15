`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 16:55:07
// Design Name: 
// Module Name: tb_aluuu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_aluuu;
    reg [9:0] a, b;          // Inputs for ALU
    reg [2:0] sel;           // Selector input
    wire [19:0] y;           // Output of ALU

    // Instantiate the ALU module
    aluuu uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        $display("\n==== Comprehensive ALU Testing ====\n");

        // Monitor signals for debugging
        $monitor("Time: %0t | A: %d, B: %d, SEL: %b | Output (Y): %d", $time, a, b, sel, y);

        // Initialize inputs
        a = 10'b0;
        b = 10'b0;
        sel = 3'b000;

        // Test 1: Basic Addition
        a = 10'b0000011111; // 31
        b = 10'b0000000011; // 3
        sel = 3'b000;       // Addition
        #10;

        // Test 2: Basic Subtraction
        a = 10'b0000100000; // 32
        b = 10'b0000000100; // 4
        sel = 3'b001;       // Subtraction
        #10;

        // Test 3: Basic Multiplication
        a = 10'b0000010100; // 20
        b = 10'b0000000100; // 4
        sel = 3'b010;       // Multiplication
        #10;

        // Test 4: AND Operation
        a = 10'b1111000011; // 963
        b = 10'b1010101010; // 682
        sel = 3'b100;       // AND
        #10;

        // Test 5: OR Operation
        a = 10'b1001001100; // 588
        b = 10'b0110010011; // 403
        sel = 3'b101;       // OR
        #10;

        // Test 6: Left Shift
        a = 10'b0000111100; // 60
        sel = 3'b110;       // Left Shift
        #10;

        // Test 7: Right Shift
        a = 10'b1111000000; // 960
        sel = 3'b111;       // Right Shift
        #10;

        // Edge Cases
        $display("\n==== Edge Cases ====\n");

        // Test 8: Maximum Values
        a = 10'b1111111111; // Max value for 10-bit (1023)
        b = 10'b1111111111; // Max value for 10-bit (1023)
        sel = 3'b000;       // Addition
        #10;

        // Test 9: Minimum Values
        a = 10'b0000000000; // Min value for 10-bit (0)
        b = 10'b0000000000; // Min value for 10-bit (0)
        sel = 3'b001;       // Subtraction
        #10;

        // Test 10: Randomized Inputs for Multiplication
        $display("\n==== Randomized Testing ====\n");
        repeat (10) begin
            a = $random % 1024; // Random 10-bit value
            b = $random % 1024; // Random 10-bit value
            sel = 3'b010;       // Multiplication
            #10;
        end

        // Test 11: Stress Test for Shift Operations
        $display("\n==== Stress Testing for Shift Operations ====\n");
        a = 10'b1010101010; // Arbitrary pattern
        repeat (10) begin
            sel = $random % 2 ? 3'b110 : 3'b111; // Randomly choose left or right shift
            #10;
        end

        // Test 12: Negative Numbers (Signed Behavior)
        $display("\n==== Testing with Signed Numbers ====\n");
        a = -10; // -10 in signed 10-bit
        b = 5;   // 5 in signed 10-bit
        sel = 3'b001; // Subtraction
        #10;

        // Test 13: Signed Multiplication
        a = -6;  // -6 in signed 10-bit
        b = 3;   // 3 in signed 10-bit
        sel = 3'b010; // Multiplication
        #10;

        // Conclusion
        $display("\n==== End of ALU Testing ====\n");
        $finish;
    end
endmodule

