module andGate(a,b,y);
	input a,b;
	output y;
	reg y;
	
	initial
		begin
			//This is the initial block
			//this block will be executed only 
		end

	always @(a or b )
		begin
			//This always block will be executed when inputs are changed
			if (a == 1'b0 || b == 1'b0)
			begin
				y=1'b0;
			end
			else
			begin
				y=1'b1;
			end
		end
endmodule
//End of the definition of the AND function
