/* Módulo MUX */
`ifndef _Adder16_
`define _Adder16_

`include "FullAdder.v"
`include "HalfAdder.v"


module Adder16 (s, ovfl, a, b);
  input [15:0] a;
  input [15:0] b;
  output [15:0] s;
  output ovfl;
  wire [15:0] c;

  //Descrição
  HalfAdder half0(s[0],c[0],a[0],b[0]);
  FullAdder full0(s[1],c[1],a[1],b[1],c[0]);
  FullAdder full1(s[2],c[2],a[2],b[2],c[1]);
  FullAdder full2(s[3],c[3],a[3],b[3],c[2]);
  FullAdder full3(s[4],c[4],a[4],b[4],c[3]);
  FullAdder full4(s[5],c[5],a[5],b[5],c[4]);
  FullAdder full5(s[6],c[6],a[6],b[6],c[5]);
  FullAdder full6(s[7],c[7],a[7],b[7],c[6]);
  FullAdder full7(s[8],c[8],a[8],b[8],c[7]);
  FullAdder full8(s[9],c[9],a[9],b[9],c[8]);
  FullAdder full9(s[10],c[10],a[10],b[10],c[9]);
  FullAdder full10(s[11],c[11],a[11],b[11],c[10]);
  FullAdder full11(s[12],c[12],a[12],b[12],c[11]);
  FullAdder full12(s[13],c[13],a[13],b[13],c[12]);
  FullAdder full13(s[14],c[14],a[14],b[14],c[13]);
  FullAdder full14(s[15],c[15],a[15],b[15],c[14]);

endmodule
`endif