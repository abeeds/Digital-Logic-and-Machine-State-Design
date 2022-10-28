`timescale 1ns / 1ps



module CounterC_tb( );
    reg clk, F, P;
    wire [3:0] out_count;
    
    // uncomment corresponding dut when simulating it
    
    CounterC ABC (.clk(clk), .F(F), .P(P), .out_count(out_count));
    //lab_4_counter dut (.clk(clk), .out(out_count));
    //lab_4_controlF dut (.clk(clk), .F(F), .out(out_count));
    
    always #10 clk = ~clk;
    
    initial begin
        F <= 0; P <= 0; clk <= 0;
        #50 F <= 1;
        #50 F <= 0; P <= 1;
        #50 P <= 1;
       
    end

endmodule
