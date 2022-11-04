`timescale 1ns / 1ps
// testing cases from lab 5


module tb5( );
    reg f;
    reg [1:0] s;
    wire a, b, c, d;
    
    dem_1 dut1 (.a(a), .b(b), .c(c), .d(d), .s(s), .f(f));

    initial begin
        f <= 0;
        s <= 2'b00;
        
        for ( s = 0; s <= 2'b11; s = s + 1) begin
            f = 0; 
            #10;
            f = 1; 
            #10;
        end
    end
    
endmodule
