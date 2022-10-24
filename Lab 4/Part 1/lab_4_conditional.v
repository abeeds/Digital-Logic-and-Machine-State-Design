`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 12:27:25 PM
// Design Name: 
// Module Name: lab4_conditional
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


module lab_4_conditional(
    input a0, a1, a2,
    output z0, z1, z2, z3, z4, z5, z6, z7
    );
    
    assign z0 = (~a0 & ~a1 & ~a2) ? 1'b1: 1'b0;
    assign z1 = (~a2 & ~a1 & a0) ? 1'b1: 1'b0;
    assign z2 = (~a2 & a1 & ~a0) ? 1'b1: 1'b0;
    assign z3 = (~a2 & a1 & a0) ? 1'b1: 1'b0;
    assign z4 = (a2 & ~a1 & ~a0) ? 1'b1: 1'b0;    
    assign z5 = (a2 & ~a1 & a0) ? 1'b1: 1'b0;
    assign z6 = (a2 & a1 & ~a0) ? 1'b1: 1'b0;
    assign z7 = (a2 & a1 & a0) ? 1'b1: 1'b0;
    
    
endmodule
