`timescale 1ns / 1ps

// Shahria Abeed
// Lab 4 Quesiton 4.2.A.2
// 4-Bit Counter
// Increments forward or backward with each positive edge of the Clock given a control signal ‘F’  
// Counts up at F = 1, and down at F = 0

module lab_4_controlF(
    input clk, F,
    output reg [3:0]out
    );
 
    always@(posedge clk) begin
        // counting up    
        if (F) begin
            if (out == 15)
                out <= 0;
            else 
                out <= out + 1;
        end
        
        // counting down
        else begin
            if (out == 0)
                out <= 15;
            else
                out <= out - 1;
        end
        
    end
endmodule
