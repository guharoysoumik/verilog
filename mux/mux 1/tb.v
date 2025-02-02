//THIS IS THE TEST BENCH OF 2x1 MUX
//CREATED BY SOUMIK GUHA ROY
module tb;
	reg [5:0]	myData;
	mux myMux(myData[5],myData[4],myData[3],myData[2],myData[1],myData[0],out);
	initial begin
		$dumpfile ("wave.vcd");
		$dumpvars(0,tb);
		myData=6'b000000;
		#500 $finish;
	end

	always 
		#2 myData<=myData+1;
endmodule
