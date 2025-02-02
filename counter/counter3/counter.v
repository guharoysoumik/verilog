module counter(out,clock,reset);
	input clock,reset;
	output[7:0] out;
	reg[7:0] out;
	assign out=8'b00000000;
	always @(posedge clock)
		out<=out+1;

endmodule
