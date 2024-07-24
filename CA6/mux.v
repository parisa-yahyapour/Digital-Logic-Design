`timescale 1ns/1ns
module mux2to1 (input [15:0] a, b, input select_1, select_2, output [15:0] data);
    assign data = select_1 ? a : 
                 select_2 ? b : 16'b0;
endmodule