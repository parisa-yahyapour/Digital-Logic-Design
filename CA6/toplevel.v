`timescale 1ns/1ns
module cosx(input clk ,rst, start, ready, input[15:0] x, input[7:0]y,
            output [15:0]total);
        wire co ,stop, counter_enable , iz_count, select_lut , select_x2 , LdX,
                LdA , iz_A , LdR , iz_R , LdY , enable_TFF , iz_TFF;
        controller controllerCos(start, co ,stop, clk, rst, counter_enable , iz_count, select_lut , select_x2 , LdX ,
	    LdA , iz_A , LdR , iz_R , LdY , enable_TFF , iz_TFF , ready);

        datapath datapathCos(clk, rst, counter_enable, iz_count, LdX, select_lut, select_x2,
                LdA , iz_A, enable_TFF, iz_TFF, LdR , iz_R , LdY,
                x, y,
                stop, co, total);

endmodule