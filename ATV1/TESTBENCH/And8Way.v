`ifndef _And8Way_
`define _And8Way_

module And8Way (out, a, b, c, d, e, f, g, h);
  input a,b,c,d,e,f,g,h; 
  output out;
  wire w1,w2,w3,w4,w5,w6;

  //Descrição
  and and0(out,w1,w2);
  and and1(w1,w3,w4);
  and and2(w3,a,b);
  and and3(w4,c,d);
  and and4(w2,w5,w6);
  and and5(w5,e,f);
  and and6(w6,g,h);

endmodule
`endif