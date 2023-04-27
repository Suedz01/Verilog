`ifndef _DMux_
`define _DMux_

module DMux (a, b, in, sel);
  input in,sel;
  output a,b;
  wire w1;

  //Descrição
  and and0(b,in,sel);
  and and1(a,in,w1);
  not not0(w1,sel);

endmodule
`endif
