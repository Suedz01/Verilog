`ifndef _FullAdder_
`define _FullAdder_

`include "HalfAdder.v"

module FullAdder (cout, s, a, b, cin);
  input a,b,cin; 
  output cout,s;
  wire w1,w2,w3;

  //Descrição
  or or0(cout,w1,w2);
  HalfAdder half0(w1,w3,b,a);
  HalfAdder half1(w2,s,w3,cin);

endmodule
`endif