module mux2to1 (a,b,s,f);
    input a,b,s;
    output f;
    wire c, d, nots;

    not n1(nots, s);
    and a1(c,a,s);
    and a2(d,b,nots);

    or o1(f,c,d);

endmodule