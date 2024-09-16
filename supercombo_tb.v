`timescale 1ns/1ns
`include "mux_fd.v"
`include "demux.v"

module supercombo_tb;
    reg [3:0] in;
    wire [3:0] out;
    reg [1:0] sel;
    wire a;

    mux_fd uut(in,sel,a);
    demux utv(a,sel,out);

	initial begin
        $dumpfile("supercombo_tb.vcd");
        $dumpvars(0, supercombo_tb);

		in = 4'b0101;
		sel = 2'b00; #10 ;
		sel = 2'b01; #10 ;
		sel = 2'b10; #10 ;
		sel = 2'b11; #10 ;
 	end

endmodule

    