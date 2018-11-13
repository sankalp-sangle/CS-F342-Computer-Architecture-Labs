module ADDSUB(a, b, m, answer, v, finalcarry);
    
    input [0:3] a;
    input [0:3] b;
    input m;
    output [0:3] answer;
    output v;
    output finalcarry;
    wire transformedB[0:3];
    wire intermediatecarrys[0:3];

    assign transformedB[0] = m ^ b[0];
    assign transformedB[1] = m ^ b[1];
    assign transformedB[2] = m ^ b[2];
    assign transformedB[3] = m ^ b[3];

    fadderbh f1(answer[3], intermediatecarrys[0], a[3], transformedB[3], m);
    fadderbh f2(answer[2], intermediatecarrys[1], a[2], transformedB[2], intermediatecarrys[0]);
    fadderbh f3(answer[1], intermediatecarrys[2], a[1], transformedB[1], intermediatecarrys[1]);
    fadderbh f4(answer[0], finalcarry, a[0], transformedB[0], intermediatecarrys[2]);

    assign v = finalcarry ^ intermediatecarrys[2];

endmodule