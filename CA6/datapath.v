`timescale 1ns/1ns
module datapath(input clk, rst, count_en, iz_count, LdX, select_lut, select_x2,
                LdA , iz_A, enable_TFF, iz_TFF, LdR , iz_R , LdY,
                input [15:0] x, input [7:0] y,
                output stop, co, output[15:0] total);
    reg [2:0] address;
    wire [7:0] lut_data;
    wire [15:0] x_2, input1_multi, output_multiplier, adder_output;
    reg [15:0] xreg, areg, Rreg, yreg;
    reg sign;
    wire [15:0] in_multi, y_comp;
    wire [7:0]zero = 8'b00000000; 
    assign in_multi = {zero,lut_data};
    assign y_comp = {zero, yreg};
    counter_3bit counter_address_lut(.count_en(count_en), .clk(clk), .rst(rst), .co(co), .po(address));
    lut lut_ROM(.address(address), .data(lut_data));
    multiplier16 multix2(.x1(x), .x2(x), .result(x_2));
    register16bit xregister(.ParIn(x_2), .clk(clk), .rst(rst), .load(LdX), .ParOut(xreg));
    mux2to1 multiplexer(.a(in_multi), .b(xreg), .select_1(select_lut), .select_2(select_x2),.data(input1_multi));
    multiplier16 multiplier(.x1(input1_multi), .x2(areg), .result(output_multiplier));
    register16bit aregister(.ParIn(output_multiplier), .clk(clk), .rst(rst), .load(LdA), .ParOut(areg));
    tff sign_chooser(.clk(clk), .iz(iz_TFF), .rst(rst), .en(enable_TFF), .q(sign));
    register16bit Rregister(.ParIn(adder_output), .clk(clk), .rst(rst), .load(LdR), .ParOut(Rreg));
    adder16 adder(.x1(Rreg), .x2(areg), .data(adder_output));
    register8bit yregister(.ParIn(y), .clk(clk), .rst(rst), .load(LdY), .ParOut(yreg));
    comparator comparator_y_a(.y(y_comp), .a(areg), .result(stop));
    assign total = {zero,Rreg[7:0]};




endmodule