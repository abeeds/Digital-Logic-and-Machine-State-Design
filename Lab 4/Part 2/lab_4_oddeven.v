`timescale 1ns / 1ps
// Shahria Abeed
// Lab 4 Quesiton 4.2.A.3
// 4-Bit Counter
// Increments forward or backward with each positive edge of the Clock given a control signal 'F'  
// Increment forward or backward with only odd or even numbers using the control bit 'P'
// Counts up at F = 1, and down at F = 0
// Odd numbers at P = 1, Even at P = 0


module lab_4_oddeven(
    input clk, F, P,
    output reg [3:0]out
    );
 
    always@(posedge clk) begin
        // increments the numbers up by one if P's value is changed
        if (P) begin
            if (out % 2 == 0) 
                out <= out + 1;
        end
            
        else begin
            if (out % 2 == 1) begin
                if (out == 15)
                    out <= 0;
                else
                    out <= out + 1;
            end
        end    
    
        // counting up    
        if (F) begin
            if (out == 15)
                out <= 1;
            else if (out == 14)
                out <= 0;
            else 
                out <= out + 2;
        end
        
        // counting down
        else begin
            if (out == 0)
                out <= 14;
            else if (out == 1)
                out <= 15;
            else
                out <= out - 2;
        end
    end
endmodule
