`timescale 1ns/1ns
module assign_3input_OC (input a,b,c, output y0, y1);
    assign #(8,15) y0 = (~a&((~b&c)|(b&~c))) | (a&((~b&~c)|(b&c)));
    assign #(12,14) y1 = (a&(b|c)) | (b&c);
endmodule