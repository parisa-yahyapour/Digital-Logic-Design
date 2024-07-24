`timescale 1ns/1ns
module counter_3bit(input count_en, clk ,rst, output co, output reg[2:0] po);
    always @(posedge clk, posedge rst) begin
        if (rst)
            po <= 3'b000;
        else begin
            if (count_en) begin
                po <= po + 1;
            end
        end
    end
    assign co = (count_en == 1) ? &{po} : 1'b0;
endmodule