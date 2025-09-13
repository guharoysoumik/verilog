//Created by Soumik Guha Roy and moral support by the great Morris Mano
module ffSR(s,r,clock,y);
// Without using the RESET signal
	input s,r,clock;
	output y;
	reg y;
	
	initial
		begin
			//This is the initial block
			//this block will be executed only 
			y=1'b0;
		end

		always @(posedge clock)
			begin
				
				if (s == 1'b0 && r == 1'b0) 				//This always block will be executed when inputs are changed
				begin
					y=y;
				end
				else if (s == 1'b0 && r == 1'b1)
				begin
					y=s;
				end
				else if (s == 1'b1 && r == 1'b0)
				begin
					y=s;
				end
				else
				begin
					y=1'bx;
				end
			end
endmodule
//End of the definition of the SR function
