module adder8bit(a, b, cout, answer, cin);
    input [0:7] a;
    input [0:7] b;
    input cin;
    output [0:7] answer;
    output cout;

    wire intermediatecarrys[0:6];

    FADDER f0(answer[7], intermediatecarrys[0], a[7], b[7] , cin);
    FADDER f1(answer[6], intermediatecarrys[1], a[6], b[6], intermediatecarrys[0]);
    FADDER f2(answer[5], intermediatecarrys[2], a[5], b[5], intermediatecarrys[1]);
    FADDER f3(answer[4], intermediatecarrys[3], a[4], b[4], intermediatecarrys[2]);
    FADDER f4(answer[3], intermediatecarrys[4], a[3], b[3], intermediatecarrys[3]);
    FADDER f5(answer[2], intermediatecarrys[5], a[2], b[2], intermediatecarrys[4]);
    FADDER f6(answer[1], intermediatecarrys[6], a[1], b[1], intermediatecarrys[5]);
    FADDER f7(answer[0], cout, a[0], b[0], intermediatecarrys[6]);
    
endmodule