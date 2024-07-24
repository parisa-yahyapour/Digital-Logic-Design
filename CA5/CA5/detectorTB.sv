`timescale 1ns/1ns
module detectorTB();
    wire w;
    logic serIn, clk = 0,rst = 0;
    detector0111110 CUT(.serIn(serIn), .clk(clk), .rst(rst), .w(w));
    initial begin
        #500 serIn = 0;
        #500 clk = 1;
        #500 clk = 0;
        #500 serIn = 1;
        #500 clk = 1;
        #500 clk = 0;
        #500 clk = 1;
        #500 clk = 0;
        #500 clk = 1;
        #500 clk = 0;
        #500 clk = 1;
        #500 clk = 0;
        #500 clk = 1;
        #500 clk = 0;
        #500 serIn = 0;
        #500 clk = 1;
        #500 clk = 0;
        #500 serIn = 1;
        #500 clk = 1;
        #500 clk = 0;
        #500 clk = 2;
        #500 clk = 0;
        #500 serIn = 0;
        #500 clk = 1;
        #500 clk = 0;
        #500 serIn = 1;
        #500 clk = 1;
        #500 clk = 0;
        #500 clk = 1;
        #500 clk = 0;
        #500 serIn = 0;
        #500 clk = 1;
        #500 clk = 0;
        #500;
    end
endmodule