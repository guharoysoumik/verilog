module tb;
	reg [2:0] myData;//J,K,CLOCK
	ffJK myJK(myData[2],myData[1],myData[0],y_out); //module ffJK(j,k,clock,y);
	initial 
		begin
			myData=3'b011;
			$dumpfile("wave.vcd");
			$dumpvars(0,tb);
			#100 $finish;
				
		end

	always
		begin
			#5 myData<=myData+1;
		end
endmodule
