module testbench();
    reg [0:15] inp;
    reg [0:3] sel;
    wire out;

    mux16to1 myMux(out, inp, sel);

    initial
        begin
            $monitor(, $time, " inp = %b, sel = %b, out = %b", inp, sel, out);
            #3 inp=16'b0010000000000000; sel=4'b0010;
            #3 inp=16'b0001000000000000; sel=4'b0011;
            #3 inp=16'b0000100000000000; sel=4'b0100;
            #3 inp=16'b0000010000000000; sel=4'b0101;
            #3 inp=16'b0000001000000000; sel=4'b0110;
            #3 inp=16'b0000000100000000; sel=4'b0111;
            #3 inp=16'b0000000010000000; sel=4'b1000;
            #3 inp=16'b0000000001000000; sel=4'b1001;
            #3 inp=16'b0000000000100000; sel=4'b1010;
            #3 inp=16'b0000000000010000; sel=4'b1011;
            #3 inp=16'b0000000000001000; sel=4'b1100;
            #3 inp=16'b0000000000000100; sel=4'b1101;
            #3 inp=16'b0000000000000010; sel=4'b1110;
            #3 inp=16'b0000000000000001; sel=4'b1111;
            #3 $finish;
        end
    initial
        begin
            $dumpfile("output.vcd");
            $dumpvars(); 
        end
endmodule