`timescale 1ns/1ns
module serial_transmitter(input clk, serin, output serout);
    wire detected, serOutValid, done;
    reg enable_collector = 0, enable_transmitter = 0, rst = 0;
    wire[7:0] nt;
    CA1_1 sequence(serin, clk, rst, detected);
    ca5_2 nt_collector(clk, enable_collector,serin,serOutValid,nt);
    ca5_3 transmitter(clk, enable_transmitter, serin,nt,serout, done);
    always @(posedge clk) begin
        rst = 0;
        if (detected) begin
            enable_collector = 1;
            rst = 1;
        end
    end
    always @(posedge clk) begin
        if (serOutValid) begin
            enable_transmitter = 1;
            enable_collector = 0;
            rst = 1;
        end
    end
    always @(posedge clk) begin
        if (done) begin
            enable_collector = 1;
            enable_transmitter = 0;
            rst = 1;
        end
    end
endmodule
