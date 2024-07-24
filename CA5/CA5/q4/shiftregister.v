`timescale 1ns/1ns
module shiftregister(input serIn, clk, rst,en, output reg [7:0]PO);
    always @(posedge clk, posedge rst) begin
        if (rst)
            PO <= 8'b00000000;
        else
            PO <= en ? {PO[6:0], serIn} : PO;
    end
endmodule