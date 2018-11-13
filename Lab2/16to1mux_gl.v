module mux16to1(out,in,sel);
    input [0:15] in;
    input [0:3] sel;

    output out;

    wire [0:3] intermediate;

    mux4to1_gate m0(intermediate[0], in[0:3], sel[2:3]);
    mux4to1_gate m1(intermediate[1], in[4:7], sel[2:3]);
    mux4to1_gate m2(intermediate[2], in[8:11], sel[2:3]);
    mux4to1_gate m3(intermediate[3], in[12:15], sel[2:3]);

    mux4to1_gate m4(out, intermediate, sel[0:1]);
endmodule