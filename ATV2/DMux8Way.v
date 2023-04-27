/* módulo DMux8Way */

`ifndef _DMux8Way_
`define _DMux8Way_

`include "DMux.v"
`include "DMux4Way.v"


module DMux8Way(a, b, c, d, e, f, g, h, in, sel);
    input in;
    input [2:0] sel;
    output a,b,c,d,e,f,g,h;
    wire w0,w1;

    DMux mux0(w0,w1,in,sel[2]);
    DMux4Way mux1(a,b,c,d,w0,sel[1:0]);
    DMux4Way mux2(e,f,g,h,w1,sel[1:0]);

endmodule

`endif