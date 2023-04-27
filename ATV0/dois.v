`include "um.v"

module dois_tb;
  reg a,b;
  wire sum, carry;

  dois x(sum, carry, a, b);
  initial
  begin
    $dumpfile("dois_tb.vcd");
    $dumpvars(0, dois_tb);

    //representação em binário ou inteiro
    a = 1'b0; b = 0;
    #1;
    a = 0; b = 1;
    #1;
    a = 1; b = 0;
    #1;
    a = 1; b = 1;
    #1;
  end

endmodule