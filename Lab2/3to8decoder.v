module DECODER(d0, d1, d2, d3, d4, d5, d6, d7, x, y, z);
    input x, y, z;
    output d0, d1, d2, d3, d4, d5, d6, d7;

    wire notx, noty, notz;
    not nx(notx, x);
    not nx(noty, y);
    not nx(notz, z);

    and a0(d0, notx, noty, notz);
    and a1(d1, notx, noty, z);
    and a2(d2, notx, y, notz);
    and a3(d3, notx, y, z);
    and a4(d4, x, noty, notz);
    and a5(d5, x, noty, z);
    and a6(d6, x, y, notz);
    and a7(d7, x, y, z);

endmodule