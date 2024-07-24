`timescale 1ns/1ns
module register8bit(input [7:0] ParIn, input clk , rst, load, output reg[7:0] ParOut);
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            ParOut <= 8'b00000000;
        end
        else
            ParOut <= (load) : ParIn : ParOut;
    end
endmodule