`ifndef _DMux4Way16_
`define _DMux4Way16_

`include "DMux4Way.v"

module DMux4Way16 (a,b,c,d,in,sel);
  input [15:0]in;
  input [1:0] sel; 
  output [15:0] a,b,c,d;

  //Descrição
  DMux4Way m0(a[0],b[0],c[0],d[0],in[0],sel[1:0]);
  DMux4Way m1(a[1],b[1],c[1],d[1],in[1],sel[1:0]);
  DMux4Way m2(a[2],b[2],c[2],d[2],in[2],sel[1:0]);
  DMux4Way m3(a[3],b[3],c[3],d[3],in[3],sel[1:0]);
  DMux4Way m4(a[4],b[4],c[4],d[4],in[4],sel[1:0]);
  DMux4Way m5(a[5],b[5],c[5],d[5],in[5],sel[1:0]);
  DMux4Way m6(a[6],b[6],c[6],d[6],in[6],sel[1:0]);
  DMux4Way m7(a[7],b[7],c[7],d[7],in[7],sel[1:0]);
  DMux4Way m8(a[8],b[8],c[8],d[8],in[8],sel[1:0]);
  DMux4Way m9(a[9],b[9],c[9],d[9],in[9],sel[1:0]);
  DMux4Way m10(a[10],b[10],c[10],d[10],in[10],sel[1:0]);
  DMux4Way m11(a[11],b[11],c[11],d[11],in[11],sel[1:0]);
  DMux4Way m12(a[12],b[12],c[12],d[12],in[12],sel[1:0]);
  DMux4Way m13(a[13],b[13],c[13],d[13],in[13],sel[1:0]);
  DMux4Way m14(a[14],b[14],c[14],d[14],in[14],sel[1:0]);
  DMux4Way m15(a[15],b[15],c[15],d[15],in[15],sel[1:0]);
  
endmodule
`endif