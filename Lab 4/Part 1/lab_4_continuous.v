`timescale 1ns / 1ps

module lab_4_continuous(
    input a0, a1, a2,
    output z0, z1, z2, z3, z4, z5, z6, z7
    );
    
    
    assign z0 = ~a0 & ~a1 & ~a2;
    assign z1 = ~a2 & ~a1 & a0;
    assign z2 = ~a2 & a1 & ~a0;
    assign z3 = ~a2 & a1 & a0;
    assign z4 = a2 & ~a1 & ~a0;    
    assign z5 = a2 & ~a1 & a0;
    assign z6 = a2 & a1 & ~a0;
    assign z7 = a2 & a1 & a0;
    
    

endmodule
