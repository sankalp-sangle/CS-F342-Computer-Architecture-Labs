module mux2to1_gl (a,b,s,f);
    input a,b,s;
    output f;
    wire c, d, nots;

    not n1(nots, s);
    and a1(c,a,s);
    and a2(d,b,nots);

    or o1(f,c,d);

endmodule

module mux2to1_bh (a, b, s ,f);
    input a, b, s;
    output f;
    reg f;
    always@(s or a or b)
            if(s == 1)
                f = a;
            else
                f = b;
endmodule

module mux2to1_df (a, b, s, f);
    input a, b, s;
    output f;
    assign f = s ? a : b;
endmodule