module tb;
	reg[1:0] myData;
	OR ourOr(myData[1],myData[0],out);
	initial
	begin
		//intialize the mydata
		myData<=2'b00;
		$dumpfile("wave.vcd");
		$dumpvars(0,tb);
		#500 $finish;
	end
	always 
		begin
			#5 myData<=myData+1;
		end
endmodule
