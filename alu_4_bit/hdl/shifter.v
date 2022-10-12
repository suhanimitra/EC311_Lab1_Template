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

//Verilog ALU Shifter
module shifter(a_i, b_i, y_o);
    input [3:0] a_i, b_i;
    output [7:0] y_o;
    
    assign y_o = a_i << b_i;
    
endmodule