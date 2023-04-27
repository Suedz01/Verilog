`ifndef _Or8Way_
`define _Or8Way_

module Or8Way (out,a,b,c,d,e,f,g,h);
  input a,b,c,d,e,f,g,h; 
  output out;
  wire w1,w2,w3,w4,w5,w6;

  //Descrição
  or or0(out,w1,w2);
  or or1(w1,w3,w4);
  or or2(w3,a,b);
  or or3(w4,c,d);
  or or4(w2,w5,w6);
  or or5(w5,e,f);
  or or6(w6,g,h);

endmodule
`endif