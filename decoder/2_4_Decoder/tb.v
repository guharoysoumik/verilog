module tb;
	reg[2:0] myData;
	decoder_2_4 dcode_2_4(myData[2],myData[1],myData[0],o0,o1,o2,o3);
	initial
		begin
			myData=3'b000;
			$dumpfile("decoder_2_4_wave.vcd");
			$dumpvars(0,tb);
			#500 $finish;
		end
	always
		begin
			#5 myData=myData+1;
		end
	
endmodule
