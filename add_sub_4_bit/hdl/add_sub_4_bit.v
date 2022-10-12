`timescale 1ns / 1ps

// EC-311 Lab-1 Part-1
  // The names of the variables are as described in the lab handout

module add_sub_4_bit #
(
  parameter WIDTH = 4
)
(
  // The inputs 
  input wire [WIDTH-1:0]        A_i,
  input wire [WIDTH-1:0]        B_i,
  input wire                    M_i,

  // The outputs
  output wire                   V_o,
  output wire                   C_o,
  output wire [WIDTH-1:0]       S_o

);

  fourbit_adder_subtractor fourbitadder1(.a_i(A_i),
                                         .b_i(B_i),
                                         .m_i(M_i),
                                         .s_o(S_o),
                                         .c_o(C_o),
                                         .v_o(V_o));

endmodule
