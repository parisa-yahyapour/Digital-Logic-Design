`timescale 1ns/1ns
module counterTB();
    reg clk = 0, rst = 0, en = 0;
    wire co;
    wire [2:0]po;
    counter_3bit CUT(.clk(clk), .rst(rst), .count_en(en), .co(co), .po(po));
    always #200 clk = ~clk;
    initial begin
        #500 rst = 1;
        #500 rst = 0;
        #500 en = 1;
        #8000;
        $stop;
    end
endmodule