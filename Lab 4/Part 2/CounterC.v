`timescale 1ns / 1ps


module CounterC(
    input clk, F, P, 
    output [3:0] out_count
    );
    
    reg [3:0]count = 1'b0;
    assign out = count;
    
    
    always@(posedge clk) begin
    if (F == 0)
        if (P == 0) begin
            if (count % 2 == 0)
                count = count - 1;
            else 
                count = count - 2;
        end
        
        else
            if (count % 2 == 0)
                count = count - 2;
            else
                count = count - 1;
            
   else
        if (P == 0) begin
            if (count % 2 == 0)
                count = count + 1;
            else 
                count = count + 2;
        end
        
        else
            if (count % 2 == 0)
                count = count + 2;
            else
                count = count + 1;
    end
    assign out_count = count;
    
endmodule
