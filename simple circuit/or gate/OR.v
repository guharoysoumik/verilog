module OR(a,b,c);
	input a,b;
	output c;
	reg c;
	always @ (a or b)	
	begin
		c<=a || b;
	end
endmodule
