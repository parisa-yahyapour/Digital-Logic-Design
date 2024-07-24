`timescale 1ns/1ns
module registerTB();
    wire [7:0]po;
    reg clk = 0, rst = 0, serIn = 0, en = 1;
    shiftregister CUT(.clk(clk), .rst(rst),.serIn(serIn), .PO(po), .en(en));
    always #200 clk = ~clk;
    initial begin
        #500 rst = 1;
        #500 rst = 0;
        #500 serIn = 1;
        #1000 serIn = 0;
        #100 en = 0;
        #1000 serIn = 1;
        #5000;
        $stop;
    end
endmodule