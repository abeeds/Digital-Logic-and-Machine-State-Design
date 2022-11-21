`timescale 1ns / 1ps
// Shahria Abeed

// Write the Verilog Module that describes the 1?4 Demultiplexer schematic using
// the always construct. Control bits sel[1:0] and the line f are inputs. a,b,c,d are the
// 4 outputs.


module demultiplexer(
    input f, 
    input [1:0] s,
    output reg a, b, c, d 
    ); 
    
    always @(f, s) begin
        case (s) 
            2'b00: begin
                a <= f;
                b <= 0;
                c <= 0;
                d <= 0;
            end
            
            2'b01:begin
                a <= 0;
                b <= f;
                c <= 0;
                d <= 0;
            end
            
            2'b10:begin
                a <= 0;
                b <= 0;
                c <= f;
                d <= 0;
            end
            
            2'b11:begin
                a <= 0;
                b <= 0;
                c <= 0;
                d <= f;
            end
        endcase  
    end
endmodule
