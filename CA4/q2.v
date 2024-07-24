`timescale 1ns/1ns
module DFF(input clk, d, output q, qb);
    wire n,nb,m,mb;
    SRlatch sr1(mb,clk,1'b1,1'b1,n,nb);
    SRlatch sr2(nb,d,clk,1'b1,m,mb);
    SRlatch sr3(nb,m,1'b1,1'b1,q,qb);
endmodule

