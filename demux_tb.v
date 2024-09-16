`timescale 1ns/1ns
`include "demux.v"

module demux_tb;
	reg in;
	reg [1:0] sel;
	wire [3:0]  out;

	demux uut(in, sel, out);

	initial begin
        $dumpfile("demux_tb.vcd");
        $dumpvars(0, demux_tb);

		in = 1;
		sel = 2'b00; #10 ;
		sel = 2'b01; #10 ;
		sel = 2'b10; #10 ;
		sel = 2'b11; #10 ;
 	end

endmodule