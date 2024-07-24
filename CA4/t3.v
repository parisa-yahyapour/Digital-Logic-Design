`timescale 1ns/1ns
module test3 ();
    reg clk = 0;
    reg data = 1;
    wire q,qb;
    DFF cut(clk,data,q,qb);
    initial begin
        #200 data = 0;
        #13 clk = 1;
        #200;
    end
endmodule