`timescale 1ns / 1ps

module lab_4_structural_tb;
    // variable declaration
    reg a0, a1, a2;
    wire z0, z1, z2, z3, z4, z5, z6, z7;

   
    // module instantiation
    lab_4_structural DUT(.a0(a0), .a1(a1), .a2(a2), .z0(z0), .z1(z1), .z2(z2), .z3(z3), .z4(z4), .z5(z5), .z6(z6), .z7(z7))

    initial begin
        .a0 <= 0;    .a1 <= 0;    .a2 <= 0;   // 000
        #5 a2 <= 1;    // 001
        #5 a1 <= 1;    a2 <= 0;    // 010
        #5 a2 <= 1;    // 011
        #5 a0 <= 1;    a1 <= 0;    a2 <= 0;    //100
        #5 a2 <= 1;    // 101
        #5 a1 <= 1;    a2 <= 0;    // 110
        #5 a2 <= 1;    // 111
    end



endmodule