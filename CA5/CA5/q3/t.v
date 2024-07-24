`timescale 1ns/1ns
module transfer(input clk, en, serIn, output reg serOut);
    always @(posedge clk) begin
        if (en) begin
            serOut = serIn;
        end
    end
endmodule