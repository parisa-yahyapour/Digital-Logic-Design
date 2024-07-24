`timescale 1ns/1ns
module OC_15input (input a,b,c,d,e,f,g,h,i,j,k,l,m,n,o, output y0,y1,y2,y3);
    wire n0,n1,n2,x0,x1,x2,carry1,carry2;
    OC_7input first_7bits (.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.y0(n0),.y1(n1),.y2(n2));
    OC_7input second_7bits (.a(h),.b(i),.c(j),.d(k),.e(l),.f(m),.g(n),.y0(x0),.y1(x1),.y2(x2));
    OC_3input adder_bit_0 (.a(n0),.b(x0),.c(o),.y0(y0),.y1(carry1));
    OC_3input adder_bit_1 (.a(n1),.b(x1),.c(carry1),.y0(y1),.y1(carry2));
    OC_3input adder_bit_3 (.a(n2),.b(x2),.c(carry2),.y0(y2),.y1(y3));
endmodule