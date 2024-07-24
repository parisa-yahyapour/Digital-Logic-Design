`timescale 1ns/1ns
module test_hold ();
    reg clk = 0;
    reg d = 1;
    wire q ;
    wire qb;
    DFF cut(clk, d, q,qb);
    initial begin
        #200 clk = 1;
        #12 d = 0;
        #200 clk = 0;
        #200;
        #200 clk = 1;
        #1 d = 1;
        #200;

    end
endmodule