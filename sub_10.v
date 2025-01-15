`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2025 20:20:59
// Design Name: 
// Module Name: sub_10
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
module haa1 (a,b,sum,cout);
input a,b;
output sum,cout;
assign sum=a^b;
assign cout=a&b;
endmodule

module faaa(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
haa1 h1(a,b,w1,w2);
haa1 h2(cin,w1,sum,w3);
assign cout=w3|w2;
endmodule

module sub_10(a,b,diff);
input [9:0] a,b;
output [10:0] diff;
wire [9:0] bb;
assign bb = b ^ 10'b1111111111;
wire [9:0] w;
faaa f0(a[0],bb[0],1'b1,diff[0],w[0]);
faaa f1(a[1],bb[1],w[0],diff[1],w[1]);
faaa f2(a[2],bb[2],w[1],diff[2],w[2]);
faaa f3(a[3],bb[3],w[2],diff[3],w[3]);
faaa f4(a[4],bb[4],w[3],diff[4],w[4]);
faaa f5(a[5],bb[5],w[4],diff[5],w[5]);
faaa f6(a[6],bb[6],w[5],diff[6],w[6]);
faaa f7(a[7],bb[7],w[6],diff[7],w[7]);
faaa f8(a[8],bb[8],w[7],diff[8],w[8]);
faaa f9(a[9],bb[9],w[8],diff[9],w[9]);
assign diff[10]=1'b0;
endmodule
