module tb;
	reg reset=0;
	
	initial begin
		$dumpfile("myoutput.vcd");
		$dumpvars(0,tb);
		
		#15	reset=1;
		
		#10	reset=0;
		//#20	reset=1;
		//#5	reset=0;
		
		#500	$finish;
		
	end
	
	//Make a regular pulsating clock
	reg clk=0;
	always
		#1	clk=!clk;

	wire [7:0] value;
	counter c(value,clk,reset);

endmodule
