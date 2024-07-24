`timescale 1ns/1ns
module modulo_counter(input [7:0] nt, input clk ,rst,en, output co);
    wire[7:0] iz;
    assign  iz = 8'b11111111 - nt;
    reg [7:0]po;
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            po <= iz;
        end
        else if (en) begin
            po <= po + 1;
        end
    end
    assign co = (en == 1) ? &{po} : 1'b0;
endmodule