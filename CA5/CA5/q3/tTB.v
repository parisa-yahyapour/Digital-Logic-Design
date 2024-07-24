`timescale 1ns/1ns
module tTB();
    reg clk = 0, en = 0 , serIn = 1;
    wire serout;
    transfer CUT(.clk(clk), .en(en), .serIn(serIn), .serOut(serout));
    always #200 clk = ~clk;
    initial begin
        #300 en = 1;
        #500 serIn = 0;
        #210 en = 0;
        #210 en = 1;
        #300 serIn = 1;
        #400;
        $stop;
    end
endmodule