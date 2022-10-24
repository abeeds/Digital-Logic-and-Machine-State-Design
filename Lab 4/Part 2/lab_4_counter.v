`timescale 1ns / 1ps

// Shahria Abeed
// Lab 4 Quesiton 4.2.A.1
// 4-Bit Counter
// Counts from 0 to 15 and then loops back to 0 - updating at each positive edge of the Clock signal 

module lab_4_counter(
    input clk,
    output reg [3:0]out
    );
     
    always@(posedge clk) begin
        if (out == 15) 
            out <= 0;
            
        else
            out <= out + 1;
    end
 
endmodule
