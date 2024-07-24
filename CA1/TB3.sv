`timescale 1ns/1ns
module primitive_OC_TB ();
    logic aa = 0,bb = 0,cc = 0;
    wire y0_1, y1_1, y0_2, y1_2;
    OC_3input CUT1 (.a(aa),.b(bb),.c(cc),.y0(y0_1),.y1(y1_1));
    primitive_3input_OC CUT2 (.a(aa),.b(bb),.c(cc),.y1(y1_2), .y0(y0_2));
    initial begin
        #200 cc = 1;
        #200 bb = 1;
        #200 aa = 1;
        #200 cc = 0;
        #200;
    end

endmodule