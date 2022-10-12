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

//Verilog 1-bit Half Adder
module half_adder(
    input a_i,
    input b_i,
    output sum_o,
    output carry_o);
    
    xor g1(sum_o, a_i, b_i);
    and g2(carry_o, a_i, b_i);
    
endmodule
