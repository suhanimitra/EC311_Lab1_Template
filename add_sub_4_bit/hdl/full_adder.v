`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Suhani Mitra
// 
// Create Date: 09/29/2022 03:32:39 PM
// Design Name: 
// Module Name: half_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//Verilog 1-bit Full Adder
module full_adder(
    input a_i,
    input b_i,
    input cin_i,
    output sum_o,
    output cout_o);
    
    wire w1, w2, w3;
    
    half_adder HA0(.a_i(a_i),
                   .b_i(b_i),
                   .sum_o(w1),
                   .carry_o(w2));
                   
    half_adder HA1(.a_i(w1),
                   .b_i(cin_i), 
                   .sum_o(sum_o),
                   .carry_o(w3));
                    
    or g1(cout_o, w2, w3);
    
endmodule