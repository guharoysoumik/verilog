module tb;
	reg [1:0] myData;
	andGate myAnd(myData[1],myData[0],y_out);
	initial 
		begin
			myData=2'b00;
			$dumpfile("wave.vcd");
			$dumpvars(0,tb);
			#100 $finish;
				
		end

	always
		begin
			#5 myData<=myData+1;
		end
endmodule
