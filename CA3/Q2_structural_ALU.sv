`timescale 1ns/1ns
module structural_ALU_1(input signed [15:0]A, B, input c,input [2:0]opc ,output reg [15:0]W, output reg zer, neg);
    reg s1;
    wire [15:0] new_a;
    wire [15:0] n1, n2, s2;
    assign s1 = (opc == 3'b000) ? 1'b0 : 1'b1;
    assign new_a = ~({16{s1}} ^ A);
    assign n1 = new_a + 1;
    assign s2 = (opc == 3'b010) ? (B + c) : (B >> 1);
    assign n2 = A + s2; 
    always @(A,B,c,opc, n1, n2) begin
        W = 16'b0;
        zer = 1'b0;
        neg = 1'b0;
        case (opc)
            3'b000: W = n1;
            3'b001: W = n1;
            3'b010: W = n2;
            3'b011: W = n2;
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