`timescale 1ns/1ns
module primitive_3input_OC (input a,b,c, output y0, y1);
    xor #(7,8) g1 (w1,a,b),
                g2 (y0,w1,c);
    and #(2,3)  g3 (w2,a,b),
                g4(w3,w1,c);
    or  #(3,4)  g5(y1,w2,w3);
endmodule