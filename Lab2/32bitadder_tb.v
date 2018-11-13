module testbench_thirtytwo;
	reg [31:0]a;
	reg [31:0]b;
	reg cin;
	wire cout;
	wire [31:0]s;
	adder32bit at(a, b, cin, s, cout);
	initial
		begin
			$monitor(,$time," a=%d, b=%d, cin=%d, s=%d,cout=%d",a,b,cin,s,cout);
			#0 a=32'd15; b=32'd25; cin=1'b1;
			#4 a=32'd5; b=32'd35; cin=1'b0;
			#4 a=32'd100; b=32'd200; cin=1'b0;
			#4 a=32'd100; b=32'd1; cin=1'b0;
			#4 a=32'd1000; b=32'd10; cin=1'b0;
			#4 a=32'd1000000; b=32'd1000000; cin=1'b0;
		end
endmodule