`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2022 05:03:41 PM
// Design Name: 
// Module Name: fourbit_adder_subtractor
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

//Verilog 4-bit Adder-Subtractor
module fourbit_adder_subtractor(a_i, b_i, m_i, s_o, c_o, v_o);
    input [3:0] a_i, b_i;
    input m_i;
    output [3:0] s_o;
    output c_o, v_o;
    
    wire[3:0] b_in;
    wire cout0, cout1;

    assign b_in[0] = m_i ^ b_i[0];
    assign b_in[1] = m_i ^ b_i[1];
    assign b_in[2] = m_i ^ b_i[2];
    assign b_in[3] = m_i ^ b_i[3];

    fourbit_adder FBA(.a_i(a_i),
                      .b_i(b_in),
                      .cin_i(m_i),
                      .sum_o(s_o),
                      .carry_o(cout0),
                      .cout3_o(cout1));
                      
    assign c_o = cout0;
    assign v_o = cout0 ^ cout1;

endmodule
