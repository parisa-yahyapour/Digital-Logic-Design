`timescale 1ns/1ns
module finalTB();
    reg clk =0, serIn = 0;
    wire serout;
    serial_transmitter CUT1(.clk(clk), .serin(serIn), .serout(serout));
    always #500 clk = ~clk;
    initial begin
        #600 serIn = 1;
        #5200 serIn = 0;
        #5200 serIn = 1;
        #3100 serIn = 0;
        #800 serIn = 1;
        #90000;
        $stop;
    end
endmodule