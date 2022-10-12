`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Suhani Mitra
// 
// Create Date: 10/06/2022 05:32:02 PM
// Design Name: 
// Module Name: alu
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

//Verilog ALU Module
module alu(a_i, b_i, s_i, y_o);
    input [3:0] a_i, b_i;
    input [1:0] s_i;
    output [7:0] y_o;
    
    wire [7:0] you0, yout1, yout2, yout3;
      
    adder_4bit add(.a_i(a_i),
                   .b_i(b_i),
                   .y_o(yout0));

    multiplier mult(.a_i(a_i),
                    .b_i(b_i),
                    .y_o(yout1));
    
    shifter shift(.a_i(a_i),
                  .b_i(b_i),
                  .y_o(yout2));           
               
    concatenator concat(.a_i(a_i),
                        .b_i(b_i),
                        .y_o(yout3));                      
                     
    mux_4to1 mux(.j_i(yout0),
                 .k_i(yout1),
                 .l_i(yout2),
                 .m_i(yout3),
                 .s_i(s_i),
                 .y_o(y_o));  
                 
                 
endmodule
