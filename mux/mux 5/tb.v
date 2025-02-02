module tb;
	reg [6:0] myData;
	mux_4_1 myMux(myData[6],myData[5],myData[4],myData[3],myData[2],myData[1],myData[0],y);
	
	initial 
		begin
			myData=7'b0;
			$dumpfile("wave.vcd");
			$dumpvars(0,tb);
			#500 $finish;
		end
	
	always
		begin
			#5 myData<=myData+1;
		end
endmodule
