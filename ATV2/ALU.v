/* Módulo Template */
`ifndef _ALU_
`define _ALU_

`include "Mux16.v"
`include "Not16.v"
`include "And16.v"
`include "Adder16.v"
`include "Nor16Way.v"

module ALU (out, zr, ng, x, y, zx, nx, zy, ny, f, no);
  input [15:0] x,y;
  input zx,nx,zy,ny,f,no;
  output [15:0] out;
  output zr,ng;
  wire [15:0] aux,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
  assign aux = 16'b0000000000000000;

  Mux16 mux16_0(w1, x, aux, zx);
  Mux16 mux16_1(w2, y, aux, zy);

  Not16 not16_0(w3,w1);
  Not16 not16_1(w4,w2);

  Mux16 mux16_2(w5,w1,w3,nx);
  Mux16 mux16_3(w6,w2,w4,ny);

  And16 and16_0(w7,w5,w6);
  Adder16 adder16_1(w8,ovfl,w5,w6);

  Mux16 mux16_4(w9,w7,w8,f);

  Not16 not16_2(w10,w9);

  Mux16 mux16_5(out,w9,w10,no);

  Nor16Way nor16way_0(zr,out,out);

  assign ng = out[15];

endmodule
`endif
