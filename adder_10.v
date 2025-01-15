`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2025 20:02:10
// Design Name: 
// Module Name: adder_10
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
module ha1 (a,b,sum,cout);
input a,b;
output sum,cout;
assign sum=a^b;
assign cout=a&b;
endmodule

module faa(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
ha1 h1(a,b,w1,w2);
ha1 h2(cin,w1,sum,w3);
assign cout=w3|w2;
endmodule
module adder_10(a,b,sum);
input [9:0] a,b;
output [10:0] sum;
wire [8:0] w;
faa f0(a[0],b[0],1'b0,sum[0],w[0]);
faa f1(a[1],b[1],w[0],sum[1],w[1]);
faa f2(a[2],b[2],w[1],sum[2],w[2]);
faa f3(a[3],b[3],w[2],sum[3],w[3]);
faa f4(a[4],b[4],w[3],sum[4],w[4]);
faa f5(a[5],b[5],w[4],sum[5],w[5]);
faa f6(a[6],b[6],w[5],sum[6],w[6]);
faa f7(a[7],b[7],w[6],sum[7],w[7]);
faa f8(a[8],b[8],w[7],sum[8],w[8]);
faa f9(a[9],b[9],w[8],sum[9],sum[10]);
endmodule
