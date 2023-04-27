module HalfAdder(A, B, S, C);
  input A, B;
  output S, C;
  //(Saída, Entrada1, Entrada2)
  xor(S,A,B);
  and(C,A,B);

endmodule