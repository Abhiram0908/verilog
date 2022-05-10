// 4:1 multiplexer mux
module m41 (
	a,b,c,d,s0,s1,out
);
	input a,b,c,d,s0,s1;
	output out;
	assign out = a&(~s0)&(~s1)|b&(~s0)&(s1)|c&(s0)&(~s1)|d&s0&s1;
endmodule

// Testbench
module tb;
	reg a,b,c,d,s0,s1;
	wire out;
	m41 my_circuit(a,b,c,d,s0,s1,out);
	initial begin
		$display("a b c d s0 s1 out");
		$monitor("%b %b %b %b %b %b %b",a,b,c,d,s0,s1,out);
		a=0; b=0; c=0; d=0; s0=0; s1=0;
		#5
		a=1; b=0; c=0; d=0; s0=0; s1=0;
		#5
		a=0; b=1; c=0; d=0; s0=0; s1=1;
		#5
		a=0; b=0; c=1; d=0; s0=1; s1=0;
		#5
		a=0; b=0; c=0; d=1; s0=1; s1=1;
	end
endmodule