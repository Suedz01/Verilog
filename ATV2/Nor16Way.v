/* módulo Nor16Way */

`ifndef _Nor16Way_
`define _Nor16Way_


module Nor16Way(out, a, b);
    // Declarando as entradas/saidas
    input [15:0] a, b;
    output out;
    
    wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15; 
    wire w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31;

    // Conexoes internas do modulo
    or or0(w0, a[0], b[0]);
    or or1(w1, a[1], b[1]);
    or or2(w2, a[2], b[2]);
    or or3(w3, a[3], b[3]);
    or or4(w4, a[4], b[4]);
    or or5(w5, a[5], b[5]);
    or or6(w6, a[6], b[6]);
    or or7(w7, a[7], b[7]);
    or or8(w8, a[8], b[8]);
    or or9(w9, a[9], b[9]);
    or or10(w10, a[10], b[10]);
    or or11(w11, a[11], b[11]);
    or or12(w12, a[12], b[12]);
    or or13(w13, a[13], b[13]);
    or or14(w14, a[14], b[14]);
    or or15(w15, a[15], b[15]);

    or or16(w16, w0, w1); 
    or or17(w17, w2, w3); 
    or or18(w18, w4, w5); 
    or or19(w19, w6, w7); 
    or or20(w20, w8, w9); 
    or or21(w21, w10, w11); 
    or or22(w22, w12, w13); 
    or or23(w23, w14, w15); 

    or or24(w24, w16, w17); 
    or or25(w25, w18, w19); 
    or or26(w26, w20, w21); 
    or or27(w27, w22, w23); 

    or or28(w28, w24, w25); 
    or or29(w29, w26, w27); 
    
    or or30(w30, w28, w29);

    not(out, w30);


endmodule

`endif