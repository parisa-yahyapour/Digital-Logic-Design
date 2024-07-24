`timescale 1ns/1ns
module controller(input start, co ,stop, clk, rst, 
        output reg counter_enable , iz_count, select_lut , select_x2 , LdX ,
	    LdA , iz_A , LdR , iz_R , LdY , enable_TFF , iz_TFF , ready);
	
	parameter Idle = 3'b000, init = 3'b001, prepare_data = 3'b010, multi1 = 3'b011,
		    multi2 = 3'b100, adding = 3'b101, checking = 3'b110;

	reg [2:0] ps, ns;

	always @(ps, start, co, stop)begin
		ns = Idle;
		{counter_enable , iz_count , select_lut , select_x2 , 
        LdX , LdA , iz_A , LdR , iz_R , LdY , enable_TFF , iz_TFF} = 12'b0;
		case(ps)
			Idle: begin
                 ns = start ? init: Idle; 
                 ready = 1; 
                 end
			init: begin
                 ns = start ? init: prepare_data;
				{iz_count , iz_A , iz_R , iz_TFF} = 4'b1111; 
                end
			prepare_data: begin 
                ns = multi1; 
                {LdY, LdX} = 2'b11;
                end
			multi1: begin
                ns = multi2; 
                {select_x2 , LdA} = 2'b11; 
                end
			multi2: begin 
                ns = adding; 
                {counter_enable , select_lut , LdA} = 3'b111; 
                end
			adding: begin 
                ns = checking;
                {enable_TFF , LdR}= 2'b11; 
             end
			checking: begin
                ns = co ? Idle:(stop) ? Idle : multi1;
            end 
			default: ns = Idle;
		endcase
	end
	always @(posedge clk, posedge rst) begin
		if (rst)
            ps <= 3'b000;
		else 
            ps <= ns;
	end
endmodule
