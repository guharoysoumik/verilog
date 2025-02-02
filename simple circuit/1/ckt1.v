module ckt1();
	reg[1:0] x,clock=0;
	wire w1,w2;
	
	nand n1(w1,x[1],x[0]);
	nand n2(w2,w1,w1);
	
	always #5 clock=~clock;
		
	initial begin
		$dumpfile("myoutput.vcd");
		$dumpvars(0,ckt1);
		#500 $finish;
	end

	//Design the Test Bench
	initial begin
		$monitor("X=%b	Y=%b	O/P=%b",x,y,w2);
		x=2'b00;
		always @(posedge clock)
		
			
	end
endmodule
