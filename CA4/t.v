`timescale 1ns/1ns
module test ();
    reg r = 1;
    reg s = 0;
    reg n = 1;
    reg m = 1;
    wire q ;
    wire qb;
    SRlatch cut(s,r,n,m,q,qb);
    initial begin
        #200;
        #200 s = 1;
        #200 r = 0;
        #200 s = 0;
        #200;
    end
    
endmodule