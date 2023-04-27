/* módulo FullAdder */

`ifndef _FullAdder_
`define _FullAdder_

`include "HalfAdder.v"


module FullAdder(sum, cout, a, b, cin);
    // Declarando as entradas/saidas
    input a, b, cin;
    output cout, sum;
    wire w0, w1, w2;

    // Conexoes internas do modulo
    HalfAdder halfadder0(w1, w0, a, b);
    HalfAdder halfadder1(sum, w2, w1, cin);
    or or0(cout, w0, w2);

endmodule

`endif