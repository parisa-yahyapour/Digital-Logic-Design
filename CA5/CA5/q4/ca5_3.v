`timescale 1ns/1ns
module ca5_3(input clk, en, serIn, input[7:0] nt, output serOut, output done);
    reg rst = 1, en_tr = 0;
    wire co, out;
    modulo_counter counter(.clk(clk), .nt(nt), .en(en), .rst(rst), .co(co));
    transfer tr(.clk(clk), .serIn(serIn), .serOut(out), .en(en_tr));
    always @(posedge clk) begin
        if (en) begin
            rst = 0;
        end
        else begin
            rst = 1;
        end
    end
    always @(posedge clk) begin
        if (en) begin
            en_tr = ~co;
        end
    end
    assign done = co;
    assign serOut = out;
endmodule