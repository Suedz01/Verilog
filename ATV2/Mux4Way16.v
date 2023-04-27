`ifndef _Mux4Way16_
`define _Mux4Way16_

`include "Mux4Way.v"

module Mux4Way16 (out,a,b,c,d,sel);
  input [15:0] a,b,c,d;
  input [1:0] sel;
  output [15:0] out;

  //Descrição
  Mux4Way m0(out[0],a[0],b[0],c[0],d[0],sel[1:0]);
  Mux4Way m1(out[1],a[1],b[1],c[1],d[1],sel[1:0]);
  Mux4Way m2(out[2],a[2],b[2],c[2],d[2],sel[1:0]);
  Mux4Way m3(out[3],a[3],b[3],c[3],d[3],sel[1:0]);
  Mux4Way m4(out[4],a[4],b[4],c[4],d[4],sel[1:0]);
  Mux4Way m5(out[5],a[5],b[5],c[5],d[5],sel[1:0]);
  Mux4Way m6(out[6],a[6],b[6],c[6],d[6],sel[1:0]);
  Mux4Way m7(out[7],a[7],b[7],c[7],d[7],sel[1:0]);
  Mux4Way m8(out[8],a[8],b[8],c[8],d[8],sel[1:0]);
  Mux4Way m9(out[9],a[9],b[9],c[9],d[9],sel[1:0]);
  Mux4Way m10(out[10],a[10],b[10],c[10],d[10],sel[1:0]);
  Mux4Way m11(out[11],a[11],b[11],c[11],d[11],sel[1:0]);
  Mux4Way m12(out[12],a[12],b[12],c[12],d[12],sel[1:0]);
  Mux4Way m13(out[13],a[13],b[13],c[13],d[13],sel[1:0]);
  Mux4Way m14(out[14],a[14],b[14],c[14],d[14],sel[1:0]);
  Mux4Way m15(out[15],a[15],b[15],c[15],d[15],sel[1:0]);

endmodule
`endif
