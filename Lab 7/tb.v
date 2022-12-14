`timescale 1ns / 1ps


module tb;
    reg clk;
    reg x;
    wire z;
    
    
    always #5 clk = ~clk;
    // always @(posedge clk) assign x = {$random} %2;
    
    
    
    //  
    pattern_det dut (
        .clk(clk),
        .x(x),
        .z(z));
    
    initial begin
        clk <= 0;
        x <= 0;
        
        #10 x <= 0; 
        #10 x <= 1; 
        #10 x <= 1; 
        #10 x <= 0; // 0110 z = 1
        
        #10; // delay
        
        #10 x <= 1;
        #10 x <= 0;
        #10 x <= 0;
        #10 x <= 1; // 1001 z = 0
        #10 x <= 0;
        #10 x <= 1;
        #10 x <= 1; // 1011 z = 1
        
        #10; // delay
        
        #10 x <= 0;
        #10 x <= 1;
        #10 x <= 0;
        #10 x <= 0; // 0100 z = 1
        
        #15; // delay
        
        
        
    end

endmodule
