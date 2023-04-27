`ifndef _ProgramCounter_
`define _ProgramCounter_

`include "Increment16.v"
`include "Mux16.v"
`include "Register16.v"


module ProgramCounter(out, in, load, inc, reset, clk);
    input [15:0] in;
    input inc, load, reset, clk;
    output [15:0] out;
    wire [15:0] aux, w0, w1, w2, w3;
    assign aux = 16'b0000000000000000;

    Increment16 increment16_0(w0 ,out);
    Mux16 mux0(w1, out, w0, inc);
    Mux16 mux1(w2, w1, in, load);
    Mux16 mux2(w3, w2, aux, reset);
    Register16 register16_0(out, w3, 1'b1, clk);

endmodule

`endif