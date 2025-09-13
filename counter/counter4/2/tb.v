module tb;
	reg clock;
	reg reset;
	wire [3:0] myOutput;

	ccCounter myCounter(clock,reset,myOutput);//module ccCounter(clock,reset);
	initial 
		begin
			clock=1'b0;
			reset=1'b1;
			$dumpfile("wave.vcd");
			$dumpvars(0,tb);
			#100 $finish;
				
		end

	always
		begin
			#5 clock=~clock;
			$display("New Clock");	
		end
endmodule
