`timescale 1ns/1ns
module counter_TB();
    reg clk = 0, rst = 1, en = 0;
    reg[7:0] iz = 8'b00000011;
    wire co;
    modulo_counter CUT(.clk(clk), .rst(rst), .en(en), .co(co), .nt(iz));
    always #100 clk = ~clk;
    initial begin
        #200 rst = 0;
        #200 en = 1;
        #10000;
        $stop;
    end
endmodule