`timescale 1ns/1ns
module OC_3input(input a,b,c, output y0,y1);
    supply1 vdd;
    supply0 gnd;
    wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13;
    pmos #(5,6,7) p1 (w1,vdd,~a),
                  p2 (y1,w1,~b),
                  p3 (y1,w1,~c),
                  p4 (w2,vdd,~b),
                  p5 (y1,w2,~c);
    nmos #(3,4,5) n1 (y1,w3,~a),
                  n2 (y1,w4,~c),
                  n3 (w4,w3,~b),
                  n4 (w3,gnd,~b),
                  n5 (w3,gnd,~c);
    pmos #(5,6,7) p6 (w5,vdd,a),
                  p7 (w6,w5,b),
                  p8 (y0,w6,~c),
                  p9 (w7,w5,~b),
                  p10 (y0,w7,c),
                  p11 (w8,vdd,~a),
                  p12 (w10,w8,~b),
                  p13 (y0,w10,~c),
                  p14 (w9,w8,b),
                  p15 (y0,w9,c);
    nmos #(3,4,5) n6 (y0,w12,a),
                  n7 (w12,w11,c),
                  n8 (w12,w11,b),
                  n9 (w11,gnd,~c),
                  n10 (w11,gnd,~b),
                  n11 (y0,w13,~c),
                  n12 (y0,w13,b),
                  n13 (w13,w12,~b),
                  n14 (w13,w12,c),
                  n15 (w12,gnd,~a);

endmodule