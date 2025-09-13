module tb;
	reg [3:0] myData;//S,R,CLOCK,Reset
	ffSR mySR(myData[3],myData[2],myData[1],myData[0],y_out); //module ffSR(s,r,clock,reset,y);
	initial 
		begin
			myData=4'b0000;
			$dumpfile("wave.vcd");
			$dumpvars(0,tb);
			#100 $finish;
				
		end

	always
		begin
			#5 myData<=myData+1;
			//#5 myData[1]<= !myData[1];
			//#5 myData[2]<= !myData[2];
			//#5 myData[3]<= !myData[3];
		end
endmodule
