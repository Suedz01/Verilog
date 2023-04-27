/* Módulo Template */
`ifndef _DLatch_
`define _DLatch_

module DLatch (q, d, clk);
  input d,clk;
  output q;
  wire w1;

  nand nand_1(w2,d,clk);
  not not_0(w1,d);
  nand nand_3(w4,w1,clk);

  nand nand_2(w5,w2,w3);
  nand nand_4(w3,w4,w5);
  not not_1(w7,clk);

  nand nand_5(w8,w5,w7);
  not not_2(w6,w5);
  nand nand_7(w9,w6,w7);

  nand nand_6(q,w8,w10);
  nand nand_8(w10,w9,q);

endmodule
`endif
