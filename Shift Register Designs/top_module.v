/*

Module: top_module (MUX for Shift Register Outputs)

Author: Yigit Can Akturk

Date: 2026-05-01

Description: MUX for selecting output from shift register stages.
*/

`default_nettype 

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output reg [7:0] q 
);
    wire [7:0] q1,q2, q3;
    my_dff8 dff1 (.clk(clk), .d(d), .q(q1));
    my_dff8 dff2 (.clk(clk), .d(q1), .q(q2));
    my_dff8 dff3 (.clk(clk), .d(q2), .q(q3));
    
    // 4 to 1 MUX
    always @(*) begin
        case(sel)
            2'h0: q = d; // State 0 - No Input Lag (Alternative 2'b00)
            2'h1: q = q1; // State 1 (Alternative 2'b01)
            2'h2: q = q2; // State 2 (Alternative 2'b10)
            2'h3: q = q3; // State 3 (Alternative 2'b11)
        endcase
    end

endmodule