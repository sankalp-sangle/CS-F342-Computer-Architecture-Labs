module mux4to1_gate(out,in,sel);
    input [0:3] in;
    input [1:0] sel;
    output out;

    wire n0, n1, a1, a2, a3, a4;
    
    not (n0, sel[0]);
    not (n1, sel[1]);

    and A1(a1, in[0], n0, n1);
    and A2(a2, in[1], n1, sel[0]);
    and A3(a3, in[2], sel[1], n0);
    and A4(a4, in[3], sel[1], sel[0]);

    or O1(out, a1, a2, a3, a4);

endmodule