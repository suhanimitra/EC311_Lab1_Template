`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Suhani Mitra
// 
// Create Date: 09/29/2022 04:42:41 PM
// Design Name: 
// Module Name: fourbit_adder
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

//Verilog 4-bit Adder
module fourbit_adder(a_i, b_i, cin_i, sum_o, carry_o, cout3_o);
    input [3:0] a_i, b_i;
    input cin_i;
    output [3:0] sum_o;
    output carry_o, cout3_o;

    wire cout0, cout1, cout2;
    
    full_adder FA0(.a_i(a_i[0]),
                   .b_i(b_i[0]),
                   .cin_i(cin_i),
                   .sum_o(sum_o[0]),
                   .cout_o(cout0));
                   
    full_adder FA1(.a_i(a_i[1]),
                   .b_i(b_i[1]),
                   .cin_i(cout0),
                   .sum_o(sum_o[1]),
                   .cout_o(cout1));
                   
    full_adder FA2(.a_i(a_i[2]),
                   .b_i(b_i[2]),
                   .cin_i(cout1),
                   .sum_o(sum_o[2]),
                   .cout_o(cout2));
                   
    full_adder FA3(.a_i(a_i[3]),
                   .b_i(b_i[3]),
                   .cin_i(cout2),
                   .sum_o(sum_o[3]),
                   .cout_o(carry_o));
            
    assign cout3_o = cout2;
    
endmodule
