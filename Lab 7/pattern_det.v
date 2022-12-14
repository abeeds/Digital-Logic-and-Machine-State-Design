`timescale 1ns / 1ps

// Shahria Abeed
// Lab 7: FSM 4b pattern detector
// Pattern 1: 1011
// Pattern 2: 0110
// Pattern 3: 0100

module pattern_det(
    input clk, x,
    output reg z
    );
    
    parameter 
    sEmpty = 4'b1111, // will be the starting state when 0 inputs have been entered
    s0 = 4'b0000,  // one or more 0's
    s1 = 4'b0001,  // 1
    s2 = 4'b0010,  // 01
    s3 = 4'b0011,  // 10
    s4 = 4'b0100,  // 010
    s5 = 4'b0101,  // 011
    s6 = 4'b0110,    
    END= 4'b0111;  // Pattern has been reached
    
    reg [3:0] state= sEmpty;
    
    always @(posedge clk) begin
        case (state)
            ////////////////////////
            sEmpty: begin   // no inputs
                if (x == 0) state <= s0;
                else state <= s1;
            end
            ////////////////////////
            s0: begin   // 000
                // state remains the same with more 0's
                if (x == 1) state <= s2;
            end
            ////////////////////////
            s1: begin // 1 or 11 or 111
                if (x == 0) state <= s3;
                // inputs 11 or 111 are functionally the same as this state
            end
            ////////////////////////
            s2: begin  // 01 or 001
                if (x == 0) state <= s4;
                else  state <= s5;
            end
            ////////////////////////
            s3: begin   // 10
                if ( x == 0) state <= s0; // no significance in 100
                else state <= s6;
            end
            ////////////////////////
            s4: begin // 010
                if( x == 0) state <= END;
                else state <= s6;   // 0101 is not a pattern but 101 can lead to one
            end
            ////////////////////////
            s5: begin   // 011
                if (x == 0) state <= END; 
                else state <= s1; // 0111 is not a pattern but the ending 1 can lead to another pattern
            end
            ////////////////////////
            s6: begin   // 101
                if (x == 0) state <= s4; // 1010 is not a pattern but 010 can lead to one
                else state <= END;  // achieved 1011
            end
            ////////////////////////
            END: begin
                #5 state <= sEmpty;    // after short delay inputs are "cleared"
            end
        endcase
    end

    always @(state) begin
        case (state)
            sEmpty: z<= 0;
            s1: z<=0;
            s2: z<=0;
            s3: z<=0;
            s4: z<=0;
            s5: z<=0;
            s6:  z<=0;
            END: z<=1;
        endcase
    end


endmodule
