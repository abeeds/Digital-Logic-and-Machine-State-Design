`timescale 1ns / 1ps

// Shahria Abeed
// Lab 4 Quesiton 4.2.A.2
// 4-Bit Counter
// Increments forward or backward with each positive edge of the Clock given a control signal ‘F’  
// Counts up at F = 1, and down at F = 0



module lab_4_controlF(
    input clk, F,
    output [3:0]out
    );
    
    reg [3:0]count = 1'b0;
    assign out = count;
    
    always@(posedge clk) begin
        // counting up    
        if (F) begin
            if (count == 15)
                count <= 0;
            else 
                count <= count + 1;
        end
        
        // counting down
        else begin
            if (count == 0)
                count <= 15;
            else
                count <= count - 1;
        end
        
    end
endmodule
