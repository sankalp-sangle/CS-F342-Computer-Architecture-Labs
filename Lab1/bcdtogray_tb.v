module testbench();
    reg [0:3] inp;
    wire [0:3] gray;

    bcdtogray_df bcdtogray(inp, gray);
    initial
        begin
            $monitor(, $time, " input = %b,  gray = %b", inp, gray);
            #0 inp = 4'b0000;
            #5 inp = 4'b0001;
            #5 inp = 4'b0010;
            #5 inp = 4'b0011;
            #5 inp = 4'b0100;
            #5 inp = 4'b0101;
            #5 inp = 4'b0110;
            #5 inp = 4'b0111;
            #5 inp = 4'b1000;
            #5 inp = 4'b1001;
            #10 $finish;
        end
    initial
        begin
            $dumpfile("output.vcd");
            $dumpvars();
        end
endmodule