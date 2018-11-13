module fourbitcomp_bh (a, b, l, e, g);
    input [0:3] a;
    input [0:3] b;
    output l, e, g;

    reg l, e, g;

    always@(a or b)
        begin
            l = 0; e = 0; g = 0;
            if(a < b)
                    l = 1;
            else if(a > b)
                    g = 1;
            else
                    e = 1;
        end
endmodule

module fourbitcomp_df (a, b, l, e, g);
    input [0:3] a;
    input [0:3] b;
    output l, e, g;
    
    assign e = (!(a[3] ^ b[3])) & (!(a[2] ^ b[2])) & (!(a[1] ^ b[1])) & (!(a[0] ^ b[0]));
    assign g = a[0] & !b[0] | (a[1] & !b[1] & !(a[0] ^ b[0])) | ( a[2] & !b[2] & !(a[1] ^ b[1]) & !(a[0] ^ b[0]) ) | (!(a[0] ^ b[0]) & !(a[1] ^ b[1]) & !(a[2] ^ b[2]) & a[3] & !b[3]);
    assign l = b[0] & !a[0] | (b[1] & !a[1] & !(a[0] ^ b[0])) | ( b[2] & !a[2] & !(a[1] ^ b[1]) & !(a[0] ^ b[0]) ) | (!(a[0] ^ b[0]) & !(a[1] ^ b[1]) & !(a[2] ^ b[2]) & b[3] & !a[3]);
endmodule 