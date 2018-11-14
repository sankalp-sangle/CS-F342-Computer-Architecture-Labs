module testbench;
    reg clearb, d, clock;
    wire q;
    dff_async_clear dff(d, clearb, clock, q);

    always @(posedge clock)
    begin
        $display("d=%b, clk=%b, rst=%b, q=%b\n", d, clock, clearb, q);
    end

    initial
        begin
            forever 
                begin
                    clock=0;
                    #5
                    clock=1;
                    #5
                    clock=0;
                end
        end

    initial
        begin
            d=0; clearb=1;
            #4
            d=1; clearb=0;
            #50
            d=1; clearb=1;
            #20
            d=0; clearb=0;
            #10 $finish;
	
	end
	
	initial
		begin
			$dumpfile("testasync.vcd");
			$dumpvars();
	end
        

endmodule