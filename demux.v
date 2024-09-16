module demux(in, sel, out);
    input in;
    input [1:0] sel;
    output [3:0] out;
    
    assign out[0] = in & ~(sel[0]) & ~(sel[1]);
    assign out[1] = in & (sel[0]) & ~(sel[1]);
    assign out[2] = in & ~(sel[0]) & (sel[1]);
    assign out[3] = in & (sel[0]) & (sel[1]);

endmodule