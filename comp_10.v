`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 23.10.2024 09:49:44
// Design Name: 10 bit magnitude comparator
// Module Name: comp_10
// Project Name: 10 bit ALU
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


module comp_10(input [9:0] a, b,output [2:0] y);

    
    assign y[0] = (a[9] ~^ b[9]) & (a[8] ~^ b[8]) & (a[7] ~^ b[7]) &
                  (a[6] ~^ b[6]) & (a[5] ~^ b[5]) & (a[4] ~^ b[4]) &
                  (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] ~^ b[1]) & 
                  (a[0] ~^ b[0]);

    
    assign y[1] = (a[9] & ~b[9]) |
                  ((a[9] ~^ b[9]) & a[8] & ~b[8]) |
                  ((a[9] ~^ b[9]) & (a[8] ~^ b[8]) & a[7] & ~b[7]) |
                  ((a[9] ~^ b[9]) & (a[8] ~^ b[8]) & (a[7] ~^ b[7]) & a[6] & ~b[6]) |
                  ((a[9] ~^ b[9]) & (a[8] ~^ b[8]) & (a[7] ~^ b[7]) & (a[6] ~^ b[6]) & a[5] & ~b[5]) |
                  ((a[9] ~^ b[9]) & (a[8] ~^ b[8]) & (a[7] ~^ b[7]) & (a[6] ~^ b[6]) & (a[5] ~^ b[5]) & a[4] & ~b[4]) |
                  ((a[9] ~^ b[9]) & (a[8] ~^ b[8]) & (a[7] ~^ b[7]) & (a[6] ~^ b[6]) & (a[5] ~^ b[5]) & (a[4] ~^ b[4]) & a[3] & ~b[3]) |
                  ((a[9] ~^ b[9]) & (a[8] ~^ b[8]) & (a[7] ~^ b[7]) & (a[6] ~^ b[6]) & (a[5] ~^ b[5]) & (a[4] ~^ b[4]) & (a[3] ~^ b[3]) & a[2] & ~b[2]) |
                  ((a[9] ~^ b[9]) & (a[8] ~^ b[8]) & (a[7] ~^ b[7]) & (a[6] ~^ b[6]) & (a[5] ~^ b[5]) & (a[4] ~^ b[4]) & (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & a[1] & ~b[1]) |
                  ((a[9] ~^ b[9]) & (a[8] ~^ b[8]) & (a[7] ~^ b[7]) & (a[6] ~^ b[6]) & (a[5] ~^ b[5]) & (a[4] ~^ b[4]) & (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] ~^ b[1]) & a[0] & ~b[0]);

    
    assign y[2] = (b[9] & ~a[9]) |
                  ((b[9] ~^ a[9]) & b[8] & ~a[8]) |
                  ((b[9] ~^ a[9]) & (b[8] ~^ a[8]) & b[7] & ~a[7]) |
                  ((b[9] ~^ a[9]) & (b[8] ~^ a[8]) & (b[7] ~^ a[7]) & b[6] & ~a[6]) |
                  ((b[9] ~^ a[9]) & (b[8] ~^ a[8]) & (b[7] ~^ a[7]) & (b[6] ~^ a[6]) & b[5] & ~a[5]) |
                  ((b[9] ~^ a[9]) & (b[8] ~^ a[8]) & (b[7] ~^ a[7]) & (b[6] ~^ a[6]) & (b[5] ~^ a[5]) & b[4] & ~a[4]) |
                  ((b[9] ~^ a[9]) & (b[8] ~^ a[8]) & (b[7] ~^ a[7]) & (b[6] ~^ a[6]) & (b[5] ~^ a[5]) & (b[4] ~^ a[4]) & b[3] & ~a[3]) |
                  ((b[9] ~^ a[9]) & (b[8] ~^ a[8]) & (b[7] ~^ a[7]) & (b[6] ~^ a[6]) & (b[5] ~^ a[5]) & (b[4] ~^ a[4]) & (b[3] ~^ a[3]) & b[2] & ~a[2]) |
                  ((b[9] ~^ a[9]) & (b[8] ~^ a[8]) & (b[7] ~^ a[7]) & (b[6] ~^ a[6]) & (b[5] ~^ a[5]) & (b[4] ~^ a[4]) & (b[3] ~^ a[3]) & (b[2] ~^ a[2]) & b[1] & ~a[1]) |
                  ((b[9] ~^ a[9]) & (b[8] ~^ a[8]) & (b[7] ~^ a[7]) & (b[6] ~^ a[6]) & (b[5] ~^ a[5]) & (b[4] ~^ a[4]) & (b[3] ~^ a[3]) & (b[2] ~^ a[2]) & (b[1] ~^ a[1]) & b[0] & ~a[0]);

endmodule