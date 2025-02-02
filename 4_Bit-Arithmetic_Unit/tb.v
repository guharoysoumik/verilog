module tb;

	reg [10:0] myData;
	wire [3:0] sum;
	arith_4_bit unit(myData[10],myData[9],myData[8],myData[7:4],myData[3:0],sum[3:0],cout);
	
	initial
		begin
			myData=11'b0;
			$dumpfile ("wave.vcd");
			$dumpvars(1,tb);
			#5000 $finish;
		end

	always 
		begin
			#5 myData<=myData+1;
		end
	
endmodule
