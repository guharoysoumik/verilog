//This is the test bench for the and gate 
//Created by Soumik Guha Roy
module tb;
	reg[1:0] myData;

	myAnd a(myData[1],myData[0],c);
	initial begin
		myData=2'b00;
		$dumpfile("wave.vcd");
		$dumpvars(0,tb);
		#500 $finish;
	end
	always
		#1 myData<=myData+1;
	initial begin
		$monitor("\nmyData[1]: %b\tmyData[0]: %b\tc=%b",myData[1],myData[0],c);
	end

endmodule
