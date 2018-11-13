module testbench();
    reg [0:3] a;
    reg [0:3] b;
    wire l, e, g;

    fourbitcomp_df fourbitcomp(a, b, l, e, g);

    initial
        begin
            $monitor(, $time," a = %b , b = %b, l = %b, e = %b, g = %b", a, b, l, e, g);
            #0 a=4'b0000; b=4'b0011;
            #5 a=4'b0011; b=4'b001;
            #5 a=4'b1100; b=4'b1100;
            #5 $finish;
        end
    initial
        begin
            $dumpfile("output.vcd");
            $dumpvars();
        end
endmodule