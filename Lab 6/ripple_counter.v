`timescale 1ns / 1ps

// Shahria Abeed
// Lab 6
// 3 bit ripple counter
// loops back to 0 after counting to 7 (111)

module dff (
   input d, clk, rstn,
   output reg q,
   output qn);
               
   always @ (posedge clk or negedge rstn)
      if (!rstn)
         q <= 0;
      else
         q <= d;
   
   // part 1
   assign qn = ~q;
endmodule

module ripple_counter (
   input clk, rstn,
   output [2:0] out);

   wire q0, qn0;
   wire q1, qn1;
   wire q2, qn2;

   dff u0 ( .d (qn0),
      .clk (clk),
      .rstn (rstn),
      .q (q0),
      .qn (qn0));
  
   dff u1 ( .d (qn1),
      .clk (qn0),
      .rstn (rstn),
      .q (q1),
      .qn (qn1));

   dff u2 ( .d (qn2),
      .clk (qn1),
      .rstn (rstn),
      .q (q2),
      .qn (qn2));

   assign out = {q2, q1, q0};
endmodule