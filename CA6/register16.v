`timescale 1ns/1ns
module register16bit(input [16:0] ParIn, input clk , rst, load, output reg[15:0] ParOut);
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            ParOut <= 16'b0000000000000000;
        end
        else
            ParOut <= (load) ? ParIn : ParOut;
    end
endmodule