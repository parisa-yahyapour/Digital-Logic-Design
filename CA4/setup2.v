`timescale 1ns/1ns
module test_setup2 ();
    reg clk = 0;
    reg d = 1;
    wire q ;
    wire qb;
    DFF cut(clk, d, q,qb);
    initial begin
        #200 d = 0;
        #12 clk = 1;
        #200;
    end
endmodule