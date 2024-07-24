`timescale 1ns/1ns
module tff(input clk, iz, rst,en, output reg q);
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            q <= 1'b0;
        end
        else if (iz) begin
            q <= 1'b1;
        end
        else if (en) begin
            q <= ~q;
        end
            
    end
endmodule