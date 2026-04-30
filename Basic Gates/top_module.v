/*

Module: top_module (7458 Gate Logic)

Author: Yigit Can Akturk

Date: 2026-04-30

Description: Implementation of 7458 Dual AND-OR Gate logic.
*/

`default_nettype 

module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire p2a_and_p2b;
    wire p2c_and_p2d;
    wire p1_abc_and;
    wire p1_def_and;
    
    assign p2a_and_p2b = p2a & p2b;
    assign p2c_and_p2d = p2c & p2d;
    assign p1_abc_and = p1a & p1b & p1c;
    assign p1_def_and = p1d & p1e & p1f;
    assign p2y = p2a_and_p2b | p2c_and_p2d;
    assign p1y = p1_abc_and | p1_def_and;


endmodule