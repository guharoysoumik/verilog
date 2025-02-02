module tb;
	reg [6:0] myData;
	myMux m(myData[6],myData[5],myData[4],myData[3],myData[2],myData[1],myData[0],Y);
	initial begin
		myData=7'b0000000;
		$dumpfile("wave.vcd");
		$dumpvars(0,tb);
		#500 $finish;
	end

	always
		#5 myData<=myData+1;
endmodule
