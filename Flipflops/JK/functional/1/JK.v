//Created by Soumik Guha Roy and moral support by the great Morris Mano and Jack Killbay
module ffJK(j,k,clock,y);
// Without using the RESET signal
	input j,k,clock;
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
				
				if (j == 1'b0 && k == 1'b0) 				//This always block will be executed when inputs are changed
				begin
					y=y;
				end
				else if (j == 1'b0 && k == 1'b1)
				begin
					y=j;
				end
				else if (j == 1'b1 && k == 1'b0)
				begin
					y=j;
				end
				else if (j == 1'b1 && k == 1'b1)
				begin
					y=!y; //Due to a new feedback in SR, resulting in JK
				end
			end
endmodule
//End of the behavioral/functional definition of the JK function
