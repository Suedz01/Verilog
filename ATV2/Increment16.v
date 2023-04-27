`ifndef _Increment16_
`define _Increment16_

`include "Adder16.v"

module Increment16 (out,in);
  input [15:0] in; 
  output [15:0] out;

  //Descrição
  Increment16 in0(out[0],in[0]);
endmodule
`endif