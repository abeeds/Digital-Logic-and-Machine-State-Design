`timescale 1ns / 1ps

// Shahria Abeed
// Lab 4 Quesiton 4.2.A.1
// 4-Bit Counter
// Counts from 0 to 15 and then loops back to 0 - updating at each positive edge of the Clock signal 

module lab_4_counter(
    input clk, 
    output [3:0]out
    );
    
    reg [3:0]count = 1'b0;
    assign out = count;
    always@(posedge clk) begin
        if (count == 4'd15) 
            count <= 1'b0;
            
        else
            count <= count + 1'b1;
    end

endmodule
