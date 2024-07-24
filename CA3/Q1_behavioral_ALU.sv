`timescale 1ns/1ns
module behavioral_ALU (input signed [15:0]A, B, input c,input [2:0]opc ,output reg [15:0]W, output reg zer, neg);
    always @(A,B,c,opc) begin
        W = 16'b0;
        zer = 1'b0;
        neg = 1'b0;
        case (opc)
            3'b000: W = ~A + 1;
            3'b001: W = A + 1;
            3'b010: W = A + B + c;
            3'b011: W = A + (B >> 1);
            3'b100: W = A&B;
            3'b101: W = A|B;
            3'b110: W = {A[7:0],B[7:0]};
            3'b111: ;
            default: W = 16'b0; 
        endcase
        zer = (W == 16'b0) ? 1 : 0;
        neg = (W[15] == 1) ? 1 : 0;
    end
endmodule