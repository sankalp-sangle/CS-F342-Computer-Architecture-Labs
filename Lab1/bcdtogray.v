module bcdtogray_df (inp, gray);
    input [0:3] inp;
    output [0:3] gray;

    assign gray[0] = inp[0];
    assign gray[1] = inp[0] ^ inp[1];
    assign gray[2] = inp[1] ^ inp[2];
    assign gray[3] = inp[2] ^ inp[3];
endmodule

module bcdtogray_gl (inp, gray);
    input [0:3] inp;
    output [0:3] gray;

    buf(gray[0], inp[0]);
    xor(gray[1], inp[0], inp[1]);
    xor(gray[2], inp[1], inp[2]);
    xor(gray[3], inp[2], inp[3]);
endmodule