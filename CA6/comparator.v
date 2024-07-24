`timescale 1ns/1ns
module comparator(input [15:0]y, a,output result);
    assign result = (a < y) ? 1'b1 : 1'b0;
endmodule