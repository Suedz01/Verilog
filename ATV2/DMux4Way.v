`ifndef _DMux4Way_
`define _DMux4Way_

`include "DMux.v"

module DMux4Way (a,b,c,d,in,sel);
  input in;
  input [1:0] sel;
  output a,b,c,d;
  wire w1,w2;

  //Descrição
  DMux dmux0(a,b,w1,sel[0]);
  DMux dmux1(c,d,w2,sel[0]);
  DMux dmux2(w1,w2,in,sel[1]);


endmodule
`endif