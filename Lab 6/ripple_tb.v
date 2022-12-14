`timescale 1ns / 1ps

// Shahria Abeed
// Lab 6 test bench

module tb_ripple;  
   reg clk;  
   reg rstn;  
   wire [2:0] out;  
  
   ripple_counter r0   (  
      .clk (clk),  
      .rstn (rstn),  
      .out (out));  
  
   always #5 clk = ~clk;  
  
   initial begin  
      rstn <= 0;  
      clk <= 0;  
  
      #20 rstn <= 1;  
      #45 rstn <= 0;
      #40 rstn <= 1;
      
      
   end  
endmodule  