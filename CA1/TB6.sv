`timescale 1ns/1ns
module OC_7input_TB();
    logic aa = 0,bb = 0,cc = 0,dd = 0,ee = 0,ff = 0,gg = 0;
    wire y0_1,y0_2,y1_1,y1_2,y2_1,y2_2;
    OC_7input CUT1 (.a(aa),.b(bb),.c(cc),.d(dd),.e(ee),.f(ff),.g(gg),.y0(y0_1),.y1(y1_1),.y2(y2_1));
    assign_7input_OC CUT2 (.a(aa),.b(bb),.c(cc),.d(dd),.e(ee),.f(ff),.g(gg),.y0(y0_2),.y1(y1_2),.y2(y2_2));
    initial begin
        #200 aa = 1;
        #200 cc = 1;
        #200 gg = 1;
        #200 dd = 1;
        #200;
    end
endmodule