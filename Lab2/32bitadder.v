module adder32bit(a, b, cin, answer, cout);
    input [0:31] a;
    input [0:31] b;
    input cin;
    output cout;
    output [0:31] answer;

    wire intermediatecarrys[0:2];

    adder8bit a0(a[24:31], b[24:31], intermediatecarrys[0], answer[24:31], cin);
    adder8bit a1(a[16:23], b[16:23], intermediatecarrys[1], answer[16:23], intermediatecarrys[0]);
    adder8bit a2(a[8:15], b[8:15], intermediatecarrys[2], answer[8:15], intermediatecarrys[1]);
    adder8bit a3(a[0:7], b[0:7], cout, answer[0:7], intermediatecarrys[2]);

endmodule