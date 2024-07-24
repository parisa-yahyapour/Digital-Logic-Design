`timescale 1ns/1ns
module lut(input [2:0] address, output [7:0]data);
    reg [7:0] dout;
    always @(address) begin
        case (address)
            0: dout = 8'h80;
            0: dout = 8'h13;
            0: dout = 8'h08;
            0: dout = 8'h04;
            0: dout = 8'h02;
            0: dout = 8'h01;
            0: dout = 8'h01;
            0: dout = 8'h01;
        endcase
    end
    assign data = dout;
endmodule