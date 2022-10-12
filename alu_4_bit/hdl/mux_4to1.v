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

//Verilog 4:1 Multiplexer
module mux_4to1(j_i, k_i, l_i, m_i, s_i, y_o);
    input [7:0] j_i, k_i, l_i, m_i;
    input [1:0] s_i;
    output [7:0] y_o;
    
    /*reg [7:0] y_o;
    
    always @(*)
        begin
            case (s_i)
                2'b00: y_o = k_i;
                2'b01: y_o = j_i;
                2'b10: y_o = l_i;
                2'b11: y_o = m_i;
            endcase
        end */
    assign y_o = (s_i == 2'b00)? k_i:
                 (s_i == 2'b01)? j_i:
                 (s_i == 2'b10)? l_i:
                 m_i;
    
endmodule
