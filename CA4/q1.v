`timescale 1ns/1ns
module SRlatch (input s, r ,n,m, output q, qb);
    nand #12 g1(q,s,qb,n);
    nand #12 g2(qb,r,q,m);
endmodule



