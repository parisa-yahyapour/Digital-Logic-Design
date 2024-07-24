`timescale 1ns/1ns
module test2 ();
    reg clk = 0;
    reg d = 1;
    wire q ;
    wire qb;
    DFF cut(clk, d, q,qb);
    initial begin
        #200;
        #200 clk = 1;
        #200 d = 0;
        #200 clk = 0;
        #200 d = 1;
        #200 d = 0;
        #200 clk = 1;
        #200;
    end
endmodule