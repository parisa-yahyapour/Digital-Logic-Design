`timescale 1ns/1ns
module structural_TB();
    logic [15:0]aa = 16'b0;
    logic [15:0]bb = 16'b0;
    logic cc = 0;
    logic [2:0]pp = 3'b0;
    wire [15:0]ww;
    wire n,z;
    structural_ALU_1 CUT (.A(aa),.B(bb),.c(cc),.opc(pp),.W(ww),.neg(n),.zer(z));
    initial begin
        #200;
        aa = $random;
        bb = $random;
        repeat(7) #200 pp = pp + 1;
        #200;
    end
endmodule