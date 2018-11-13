module testbench;
	reg [0:7] a;
	reg [0:7] b;
	reg cin;
	wire cout;
	wire [0:7] answer;
	adder8bit adder(a, b, answer, cin, cout);
	initial
        begin
		$monitor(,$time," a=%b, b=%b, cin=%b, answer=%b, cout=%b",a,b,cin,answer,cout);
		#0 a=8'b00000101; b=8'b01010101; cin=1'b0;
		#5 a=8'b10000101; b=8'b10101010; cin=1'b1;
		end
endmodule