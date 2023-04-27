/* módulo RAM8 */
`ifndef _RAM8_
`define _RAM8_

`include "DMux8Way.v"
`include "Mux8Way16.v"
`include "Register16.v"

module RAM8(out, in, address, write, clk);
  input [15:0] in;
  input write, clk;
  input [2:0] address;
  output [15:0] out;
  wire w0, w1, w2, w3, w4, w5, w6 ,w7;
  wire [15:0] w8, w9, w10, w11, w12, w13, w14 ,w15;

  DMux8Way dmux0(w0,w1,w2,w3,w4,w5,w6,w7,write,address);

  Register16 register_0(w8,in,w0,clk);
  Register16 register_1(w9,in,w1,clk);
  Register16 register_2(w10,in,w2,clk);
  Register16 register_3(w11,in,w3,clk);
  Register16 register_4(w12,in,w4,clk);
  Register16 register_5(w13,in,w5,clk);
  Register16 register_6(w14,in,w6,clk);
  Register16 register_7(w15,in,w7,clk);

  Mux8Way16 mux_0(out,w8,w9,w10,w11,w12,w13,w14,w15,address);

endmodule

`endif