`timescale 1ns/1ns
module test5 ();
    reg clk = 0;
    reg data = 0;
    reg preset = 1;
    reg clear = 0;
    wire q,qb;
    DFF2 cut(preset,clear,clk,data,q,qb);
    initial begin
        #200 clk = 1;
        #200 clk = 0;
        #200 data = 1;
        #200 preset = 0;
        #200 clear = 1;
        #200 clk = 1;
        #200;
    end
endmodule