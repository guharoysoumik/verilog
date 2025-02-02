module tb;
	reg [1:0] myData;
	wire cout,sum;
	myHalfAdder ha(cout,sum,myData[1],myData[0]);
	initial begin
		$dumpfile("myoutput.vcd");
		$dumpvars(0,tb);
		myData=2'b00;
		while (myData!=2'b11)
		begin
			#2 myData<=myData+1;
			$monitor("%h",myData);
		end
		
	end

	initial begin
		#500 $finish;
	end
endmodule
