`timescale 1ns/1ns
module transmitterTB();
    reg clk = 0, en = 0, serIn = 1;
    reg [7:0] nt = 8'b00000111;
    wire serout, done;
    transmitter CUT(.clk(clk), .en(en), .nt(nt),.serIn(serIn), .serOut(serout), .done(done));
    always #300 clk = ~clk;
    always #500 serIn = ~serIn;
    initial begin
        #200 en = 1;
        #9000;
        $stop;
    end
endmodule