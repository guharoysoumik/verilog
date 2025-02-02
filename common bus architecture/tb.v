module tb;
	reg [17:0] myData;
	//cbus myCommonBus(myData[17:14],myData[13:10],myData[9:6],myData[5:2],myData[1:0],myOutput);
	initial 
		begin
			myData=10'b0;
			$dumpfile("wave.vcd");
			$dumpvars(1,tb);
			#5000 $finish;
		end

	always
		begin
			#5 
		end
endmodule
