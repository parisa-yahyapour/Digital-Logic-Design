`timescale 1ns/1ns
module OC_15input_TB();
    logic aa = 0,bb = 0,cc = 0,dd = 0,ee = 0,ff = 0,gg = 0,hh = 0,ii = 0,jj = 0,kk = 0,ll = 0,mm = 0,nn = 0,oo = 0;
    wire y00,y11,y22,y33;
    OC_15input CUT1 (.a(aa),.b(bb),.c(cc),.d(dd),.e(ee),.f(ff),.g(gg),.h(hh),.i(ii),.j(jj),.k(kk),.l(ll),.m(mm),.n(nn),.o(oo),
                    .y0(y00),.y1(y11),.y2(y22),.y3(y33));
    initial begin
        #200 aa = 1;
        #200 oo = 1;
        #200 mm = 1;
        #200;
    end
endmodule