`timescale 1ns/1ns
module nt_TB();
    reg clk =0, serIn = 1, en = 0;
    wire outvalid;
    wire [7:0]nt;
    nt_counter CUT(.clk(clk), .en(en), .serIn(serIn), .serOutValid(outvalid), .nt(nt));
    always #100 clk = ~clk;
    initial begin
        #500 en = 1;
        #500 serIn = 0;
        #150 serIn = 1;
        #300 serIn = 0;
        #300 serIn = 1;
        #400 en = 0;
        #650;
	#400 en = 1;
	#700;
        $stop;
    end
endmodule