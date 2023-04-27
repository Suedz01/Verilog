/* módulo Bit */

`ifndef _Bit_
`define _Bit_

`include "Mux.v"
`include "DLatch.v"


module Bit(out, in, load, clk);
    // Declarando as entradas/saidas
    input in, load, clk;
    output out;
    wire w0;

    // Conexoes internas do modulo
    Mux mux_0(w0, out, in, load);
    DLatch dlatch_0(out, w0, clk);

endmodule

`endif