`timescale 1ns/1ns
module OC_3input_TB();
    logic aa = 0, bb = 0, cc =0;
    wire y00, y11;
    OC_3input CUT (.a(aa),.b(bb),.c(cc),.y0(y00), .y1(y11));
    initial begin
        #100 cc = 1;
        #100 bb = 1;
        #100 aa = 1;
        #100 cc = 0;
        #200;
    end
endmodule