`timescale 1ns/1ns
module transfer(input clk, en, serIn, output serOut);
	 reg out;
    always @(posedge clk) begin
        if (en) begin
            out = serIn;
        end
    end
	 assign serOut = out;
endmodule