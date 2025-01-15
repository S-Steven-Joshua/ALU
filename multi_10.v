module ha(a,b,sum,cout);
input a,b;
output sum,cout;
assign sum=a^b;
assign cout=a&b;
endmodule

module fa1(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
ha h1(a,b,w1,w2);
ha h2(cin,w1,sum,w3);
assign cout=w3|w2;
endmodule


module multi_10(a,b,pro);
input [9:0]a,b;
output [19:0] pro;
assign p=0;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;
    wire w11, w12, w13, w14, w15, w16, w17, w18, w19, w20;
    wire w21, w22, w23, w24, w25, w26, w27, w28, w29, w30;
    wire w31, w32, w33, w34, w35, w36, w37, w38, w39, w40;
    wire w41, w42, w43, w44, w45, w46, w47, w48, w49, w50;
    wire w51, w52, w53, w54, w55, w56, w57, w58, w59, w60;
    wire w61, w62, w63, w64, w65, w66, w67, w68, w69, w70;
    wire w71, w72, w73, w74, w75, w76, w77, w78, w79, w80;
    wire w81, w82, w83, w84, w85, w86, w87, w88, w89;
    wire s1, s2, s3, s4, s5, s6, s7, s8, s9;
    wire s11, s12, s13, s14, s15, s16, s17, s18, s19;
    wire s20, s21, s22, s23, s24, s26, s27, s28, s29;
    wire s30, s31, s32, s33, s34, s35, s36, s37, s38;
    wire s39, s40, s41, s42, s43, s44, s45, s46, s47;
    wire s48, s49, s50, s51, s52, s53, s54, s55, s56;
    wire s57, s58, s59, s60, s61, s63, s64, s65, s66;
    wire s67, s68, s69, s70, s71, s72, s73, s74, s75;



assign pro[0]=a[0]&b[0];
ha h1((a[1]&b[0]),(a[0]&b[1]),pro[1],w1);
fa1 f1((a[2]&b[0]),(a[1]&b[1]),w1,s1,w2);
fa1 f2((a[3]&b[0]),(a[2]&b[1]),w2,s2,w3);
fa1 f3(a[4]&b[0],a[3]&b[1],w3,s3,w4);
fa1 f4(a[5]&b[0],a[4]&b[1],w4,s4,w5);
fa1 f5(a[6]&b[0],a[5]&b[1],w5,s5,w6);
fa1 f6(a[7]&b[0],a[6]&b[1],w6,s6,w7);
fa1 f7(a[8]&b[0],a[7]&b[1],w7,s7,w8);
fa1 f8(a[9]&b[0],a[8]&b[1],w8,s8,w9);
ha h2(a[9]&b[1],w9,s9,w10);
//s10;
ha h3(a[0]&b[2],s1,pro[2],w11);
fa1 f9(a[1]&b[2],s2,w11,s11,w12);
fa1 f10(a[2]&b[2],s3,w12,s12,w13);
fa1 f11(a[3]&b[2],s4,w13,s13,w14);
fa1 f12(a[4]&b[2],s5,w14,s14,w15);
fa1 f13(a[5]&b[2],s6,w15,s15,w16);
fa1 f14(a[6]&b[2],s7,w16,s16,w17);
fa1 f15(a[7]&b[2],s8,w17,s17,w18);
fa1 f16(a[8]&b[2],s9,w18,s18,w19);
fa1 h4(a[9]&b[2],w19,w10,s19,w20);

ha h5(a[0]&b[3],s11,pro[3],w21);
fa1 f17(a[1]&b[3],s12,w21,s20,w22);
fa1 f18(a[2]&b[3],s13,w22,s21,w23);
fa1 f19(a[3]&b[3],s14,w23,s22,w24);
fa1 f20(a[4]&b[3],s15,w24,s23,w25);
fa1 f21(a[5]&b[3],s16,w25,s24,w26);
fa1 f22(a[6]&b[3],s17,w26,s26,w27);
fa1 f23(a[7]&b[3],s18,w27,s27,w28);
fa1 f24(a[8]&b[3],s19,w28,s28,w29);
fa1 h6(a[9]&b[3],w29,w20,s29,w30);
//s25
ha h7(a[0]&b[4],s20,pro[4],w31);
fa1 f25(a[1]&b[4],s21,w31,s30,w32);
fa1 f26(a[2]&b[4],s22,w32,s31,w33);
fa1 f27(a[3]&b[4],s23,w33,s32,w34);
fa1 f28(a[4]&b[4],s24,w34,s33,w35);
fa1 f29(a[5]&b[4],s26,w35,s34,w36);
fa1 f30(a[6]&b[4],s27,w36,s35,w37);
fa1 f31(a[7]&b[4],s28,w37,s36,w38);
fa1 f32(a[8]&b[4],s29,w38,s37,w39);
fa1 h8(a[9]&b[4],w39,w30,s38,w40);

ha h9(a[0]&b[5],s30,pro[5],w41);
fa1 f33(a[1]&b[5],s31,w41,s39,w42);
fa1 f34(a[2]&b[5],s32,w42,s40,w43);
fa1 f35(a[3]&b[5],s33,w43,s41,w44);
fa1 f36(a[4]&b[5],s34,w44,s42,w45);
fa1 f37(a[5]&b[5],s35,w45,s43,w46);
fa1 f38(a[6]&b[5],s36,w46,s44,w47);
fa1 f39(a[7]&b[5],s37,w47,s45,w48);
fa1 f40(a[8]&b[5],s38,w48,s46,w49);
fa1 h10(a[9]&b[5],w49,w40,s47,w50);

ha h11(a[0]&b[6],s39,pro[6],w51);
fa1 f41(a[1]&b[6],s40,w51,s48,w52);
fa1 f42(a[2]&b[6],s41,w52,s49,w53);
fa1 f43(a[3]&b[6],s42,w53,s50,w54);
fa1 f44(a[4]&b[6],s43,w54,s51,w55);
fa1 f45(a[5]&b[6],s44,w55,s52,w56);
fa1 f46(a[6]&b[6],s45,w56,s53,w57);
fa1 f47(a[7]&b[6],s46,w57,s54,w58);
fa1 f48(a[8]&b[6],s47,w58,s55,w59);
fa1 h12(a[9]&b[6],w59,w50,s56,w60);

ha h13(a[0]&b[7],s48,pro[7],w61);
fa1 f49(a[1]&b[7],s49,w61,s57,w62);
fa1 f50(a[2]&b[7],s50,w62,s58,w63);
fa1 f51(a[3]&b[7],s51,w63,s59,w64);
fa1 f52(a[4]&b[7],s52,w64,s60,w65);
fa1 f53(a[5]&b[7],s53,w65,s61,w66);
fa1 f56(a[6]&b[7],s54,w66,s63,w67);
fa1 f57(a[7]&b[7],s55,w67,s64,w68);
fa1 f58(a[8]&b[7],s56,w68,s65,w69);
fa1 h14(a[9]&b[7],w60,w69,s66,w70);
//s62

ha h15(a[0]&b[8],s57,pro[8],w71);
fa1 f59(a[1]&b[8],s58,w71,s67,w72);
fa1 f60(a[2]&b[8],s59,w72,s68,w73);
fa1 f61(a[3]&b[8],s60,w73,s69,w74);
fa1 f62(a[4]&b[8],s61,w74,s70,w75);
fa1 f63(a[5]&b[8],s63,w75,s71,w76);
fa1 f64(a[6]&b[8],s64,w76,s72,w77);
fa1 f65(a[7]&b[8],s65,w77,s73,w78);
fa1 f66(a[8]&b[8],s66,w78,s74,w79);
fa1 h16(a[9]&b[8],w70,w79,s75,w80);

ha h17(a[0]&b[9],s67,pro[9],w81);
fa1 f67(a[1]&b[9],s68,w81,pro[10],w82);
fa1 f68(a[2]&b[9],s69,w82,pro[11],w83);
fa1 f69(a[3]&b[9],s70,w83,pro[12],w84);
fa1 f70(a[4]&b[9],s71,w84,pro[13],w85);
fa1 f71(a[5]&b[9],s72,w85,pro[14],w86);
fa1 f72(a[6]&b[9],s73,w86,pro[15],w87);
fa1 f73(a[7]&b[9],s74,w87,pro[16],w88);
fa1 f74(a[8]&b[9],s75,w88,pro[17],w89);
fa1 h18(a[9]&b[9],w80,w89,pro[18],pro[19]);


endmodule