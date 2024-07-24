`timescale 1ns/1ns
module DFF2(input pre,clr,clk,d, output q ,qb);
    SRlatch sr1(~pre,~clr,mb,clk,n,nb);
    SRlatch sr2(clk,d,mb,~clr,m,mb);
    SRlatch sr3(nb,m,~pre,~clr,q,qb);
endmodule