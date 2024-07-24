`timescale 1ns/1ns
module CA1_1(input serIn, clk, rst, output w);
    parameter [2:0] A = 3'b000,B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100, F = 3'b101, G = 3'b110;
    reg [3:0] ns ,ps =  A;
    always @(ps, serIn) begin
        ns = A;
        case (ps)
            A: ns = (serIn == 0) ? B : A ;
            B: ns = (serIn == 1) ? C : B ;
            C: ns = (serIn == 1) ? D : B ;
            D: ns = (serIn == 1) ? E : B ;
            E: ns = (serIn == 1) ? F : B ;
            F: ns = (serIn == 1) ? G : B ;
            G: ns = (serIn == 0) ? B : A ;
            default: ns = A;
        endcase
    end  

    assign w = (ps == G) ? ~serIn : 1'b0;

    always @(posedge clk, posedge rst) begin
        if(rst)
            ps <= A;
        else
            ps <= ns;
    end
endmodule