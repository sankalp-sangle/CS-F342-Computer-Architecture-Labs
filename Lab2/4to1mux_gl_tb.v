module testbench();
    reg [0:3] inp;
    reg [1:0] sel;
    wire out;
    mux4to1_gate myMux(out, inp, sel);

    initial
    begin
        $monitor(, $time, "inp = %b, sel = %b, output = %b", inp, sel, out);
        #0 inp = 4'b0011; sel = 2'b00;
        #5 inp = 4'b1101; sel = 2'b01;
        #5 inp = 4'b0001; sel = 2'b10;
        #5 inp = 4'b1001; sel = 2'b01;
        #5 $finish;
    end
    initial
    begin
        $dumpfile("output.vcd");
        $dumpvars();
    end
endmodule