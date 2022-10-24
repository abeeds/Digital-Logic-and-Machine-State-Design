`timescale 1ns / 1ps

// Register - what you save values in
// Wires - connects two components

// Primitive Implementation
module lab_4_structural(
    input a0, a1, a2,
    output z0, z1, z2, z3, z4, z5, z6, z7
    );
    
    wire a2_bar, a1_bar, a0_bar;
    
    not a2_not (a2_bar, a2);
    not a1_not (a1_bar, a1);
    not a0_not (a0_bar, a0);
    
    // Z0 = a2' + a1' + a0'
    and z0_and (z0, a0_bar, a1_bar, a2_bar);
    
    // Z1 = a2' + a1' + a0
    and z1_and (z1, a2_bar, a1_bar, a0);
    
    // Z2 = a2' + a1 + a0'
    and z2_and (z2, a2_bar, a1, a0_bar);
    
    // Z3 = a2' + a1 + a0
    and z3_and (z3, a2_bar, a1, a0);
    
    // Z4 = a2 + a1' + a0'
    and z4_and (z4, a2, a1_bar, a0_bar);
    
    // Z5 = a2 + a1' + a0
    and z5_and (z5, a2, a1_bar, a0);

    // Z6 = a2 + a1 + a0' 
    and z6_and (z6, a2, a1, a0_bar);
    
    // Z7 = a2 + a1 + a0
    and z7_and (z7, a2, a1, a0);
        
endmodule
