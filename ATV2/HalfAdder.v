/* módulo HalfAdder */

`ifndef _HalfAdder_
`define _HalfAdder_


module HalfAdder(sum, carry, a, b);
    // Declarando as entradas/saidas
    input a, b;
    output sum, carry;

    // Conexoes internas do modulo
    xor xor0(sum, a, b);
    and and0(carry, a, b);

endmodule

`endif