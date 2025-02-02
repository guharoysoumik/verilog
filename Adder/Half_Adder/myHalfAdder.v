module myHalfAdder(cout,sum,A,B);
	input A,B;
	output cout,sum;
	xor x1(sum,A,B);
	and a1(cout,A,B);
endmodule
