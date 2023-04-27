module um(A, B, S, C);
  input A, B;
  output S, C;
  //Saídas Intermediárias
  wire w1, w2;
  //(Saída, Entrada1, Entrada2)
  or o0(w1, A, B);
  nand na0(w2, A, B);
  and a0(S, w1, w2);
  and a1(C, A, B);
  // and a1();

endmodule
  //[Mais significativo: Menos significativo]
  // input [5:0] AA;
  // input [0:5] AA;