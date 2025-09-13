//Created by Soumik Guha Roy and moral support by the great Morris Mano
module ffJK(j,k,clock,reset,y);
// Using the RESET signal
	input j,k,clock,reset;
	output y;
	reg y;
	
	initial
		begin
			//This is the initial block
			//this block will be executed only 
			y=1'bx;
			$display("[SGR]Output initialized..");
		end
	always @(posedge reset)
			begin
				if (reset == 1'b1) //My assumption
				begin
					y=1'b0;
				end
			end

	always @(posedge clock)
			begin
				$display("Hello... S:");	
				
				if (j == 1'b0 && k == 1'b0) 				//This always block will be executed when inputs are changed
				begin
					//y<=y;
				end
				else if (j == 1'b0 && k == 1'b1)
				begin
					y<=1'b0;
				end
				else if (j == 1'b1 && k == 1'b0)
				begin
					y<=1'b1;
				end
				else if (j == 1'b1 && k == 1'b1)
				begin
					y<=!y;
				end
			end
endmodule
//End of the functional/behavioral definition of the JK function
