module mux_st(in, sel, out);
    input [3:0] in;
    input [1:0] sel;
    output out;
    wire [1:0] seln;
    wire [3:0] and_out;

    not i0 (seln[0], sel[0]);
    not i1 (seln[1], sel[1]);
    and i2 (and_out[0], seln[1], seln[0], in[0]);
    and i3 (and_out[1], seln[1], sel[0], in[1]);
    and i4 (and_out[2], sel[1], seln[0], in[2]);
    and i5 (and_out[3], sel[1], sel[0], in[3]);
    or i6 (out, and_out[0],and_out[1],and_out[2],and_out[3]);

endmodule