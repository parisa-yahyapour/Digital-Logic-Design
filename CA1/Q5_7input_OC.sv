`timescale 1ns/1ns
module OC_7input (input a,b,c,d,e,f,g, output y0,y1,y2);
    wire w0,w1,m0,m1,carry;
    OC_3input first_3bits (.a(a),.b(b),.c(c),.y0(w0),.y1(w1));
    OC_3input second_3bits (.a(d),.b(e),.c(f),.y0(m0),.y1(m1));
    OC_3input adder_2bits_1 (.a(w0),.b(m0),.c(g),.y0(y0),.y1(carry));
    OC_3input first_3bits_2 (.a(w1),.b(m1),.c(carry),.y0(y1),.y1(y2));
endmodule