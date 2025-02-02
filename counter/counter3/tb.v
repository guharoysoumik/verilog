module tb;
	reg myClock=0,myReset=0;
	output [7:0] myOutput;
	counter c(myOutput,myClock,myReset);

	initial begin
		$dumpfile("wave.vcd");
		$dumpvars(0,tb);
		#500 $finish;
	end
	always #1 myClock=!myClock;
endmodule
