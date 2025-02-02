//This module simulates the behavour of AND gate 
//Created by Soumik Guha Roy
module myAnd(a,b,c);
	input a,b;
	output c;

	reg c;

	always @(a or b)
	begin
	//Whenever a or b changes this block executes
		if ( ((a==1'b1) && (b==1'b1) ))
		begin
			c =1'b1;
			$monitor("I am at if part");
			
		end
		else
			c=1'b0;
			$monitor("I am at else part");			

	end
endmodule
//End of the module
