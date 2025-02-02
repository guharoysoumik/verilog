//This is the test suite for the Full Adder
//Created by Soumik Guha Roy
module tb;
	reg[2:0] myData;
	myFA fa(myData[2],myData[1],myData[0],cout,sum);
	initial begin
		myData=3'b000;
		$dumpfile("wave.vcd");
		$dumpvars(0,tb);
		#500 $finish;
	end
	always
		begin
			#5 myData<=myData+1;
		end
endmodule
