//Created by Soumik Guha Roy and moral support by the great Morris Mano
module ffJK(j,k,clock,reset,y,y_bar);
// Using the RESET signal
	input j,k,clock,reset;
	output y,y_bar;
	reg y,y_bar;
	
	initial
		begin
			//This is the initial block
			//this block will be executed only 
			y=1'bx;
			y_bar=1'bx;
			$display("[SGR]Output initialized..");
		end
	always @(posedge reset)
			begin
				if (reset == 1'b1) //My assumption
				begin
					y=1'b0;
					y_bar=1'b1;
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
					y_bar<=1'b1;
				end
				else if (j == 1'b1 && k == 1'b0)
				begin
					y<=1'b1;
					y_bar<=1'b0;
				end
				else if (j == 1'b1 && k == 1'b1)
				begin
					y=!y;
					y_bar=y;
				end
			end
endmodule
//End of the functional/behavioral definition of the JK function
