`ifndef _HalfAdder_
`define _HalfAdder_

module HalfAdder (s,c,a,b);
  input a,b; 
  output s,c;

  //Descrição
  xor xor0(s, a, b);
  and and0(c, a, b);

endmodule
`endif
