`timescale 1ns/1ns
`include "mux_fd.v"

module mux_fd_tb;
	reg [3:0] in;
	reg [1:0] sel;
	wire out;

	mux_fd uut(in, sel, out);

	initial begin
        $dumpfile("mux_fd_tb.vcd");
        $dumpvars(0, mux_fd_tb);

		in = 4'b0101;
		sel = 2'b00; #10 
		sel = 2'b01; #10 ;
		sel = 2'b10; #10 ;
		sel = 2'b11; #10 ;
 	end

endmodule