module testbench;
    reg [0:3] a;
    reg [0:3] b;
    reg m;
    wire [0:3] answer;
    wire overflow;
    wire finalcarry;
    ADDSUB addsub(a, b, m, answer, overflow, finalcarry);

    initial
        begin
            $monitor(, "a = %b, b = %b, control = %b, answer = %b, overflow = %b, carryout = %b", a, b, m, answer, overflow, finalcarry);
            #0 a = 4'b0011; b = 4'b1001; m = 0;
            #5 a = 4'b0011; b = 4'b1001; m = 1;
            #5 a = 4'b1001; b = 4'b1001; m = 0;
            #5 a = 4'b1001; b = 4'b1001; m = 1;
            #5 a = 4'b1111; b = 4'b0011; m = 0;
            #5 a = 4'b1111; b = 4'b0011; m = 1;
            #5 a = 4'b1110; b = 4'b0111; m = 0;
            #5 a = 4'b1110; b = 4'b0111; m = 1;
            #5 $finish;
        end
    initial
        begin
            $dumpfile("output.vcd");
            $dumpvars();  
        end
endmodule