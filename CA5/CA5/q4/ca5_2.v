`timescale 1ns/1ns
module ca5_2(input clk, en,serIn, output serOutValid, output [7:0] nt);
    reg rst_count = 0, rst_register = 0, en_reg = 0;
    wire [2:0]po_counter;
    wire [7:0]po_register;
    wire co;
    counter_3bit counter(.clk(clk), .rst(rst_count), .count_en(en), .co(co), .po(po_counter));
    shiftregister register(.clk(clk),.rst(rst_register), .serIn(serIn), .en(en_reg), .PO(po_register));
    always @(posedge clk) begin
        if (~en) begin
            rst_count = 1;
            rst_register = 1;
        end
        else begin
            rst_count = 0;
            rst_register = 0;
        end
    end
    always @(posedge clk) begin
        if(en)
            en_reg = ~co;
    end
    assign serOutValid = en ? co : 1'b0;
    assign nt = po_register;

endmodule