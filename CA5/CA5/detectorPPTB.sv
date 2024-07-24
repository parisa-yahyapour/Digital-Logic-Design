`timescale 1ns/1ns
module detectorPPTB();
    wire w1,w2;
    reg serIn, clk = 0,rst = 0;
    CA1_1 CUT2(.serIn(serIn), .clk(clk), .rst(rst), .w(w2));
    detector0111110 CUT1(.serIn(serIn), .clk(clk), .rst(rst), .w(w1));
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