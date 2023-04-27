`ifndef _DMux8Way16_
`define _DMux8Way16_

`include "DMux16.v"
`include "DMux4Way16.v"

module DMux8Way16 (a,b,c,d,e,f,g,h,in,sel);
  input [15:0] in;
  input[2:0] sel;
  output [15:0] a,b,c,d,e,f,g,h;
  wire [15:0] w1,w2;

  //Descrição
  DMux16 dmux0(w1,w2,in[15:0],sel[2]);
  DMux4Way16 dmuxfour0(a,b,c,d,w1,sel[1:0]);
  DMux4Way16 dmuxfour1(e,f,g,h,w2,sel[1:0]);

endmodule
`endif