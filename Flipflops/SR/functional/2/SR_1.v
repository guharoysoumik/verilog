//Created by Soumik Guha Roy and moral support by the great Morris Mano
module ffSR(s,r,clock,reset,y);
// Using the RESET signal
	input s,r,clock,reset;
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
	always @( s && r )
	begin
		$display("Proh state");
		$monitor("Time: %0t, S: %b, R: %b, Y: %b", $time, s, r, y);
	end
	
	always @( s || r )
	begin
		$display("1-0");
		$monitor("Time: %0t, S: %b, R: %b, Y: %b", $time, s, r, y);
	end

	always @(posedge clock)
			begin
				$display("Hello... S:");	
				
				if (s == 1'b0 && r == 1'b0) 				//This always block will be executed when inputs are changed
				begin
					//y<=y;
				end
				else if (s == 1'b0 && r == 1'b1)
				begin
					y<=1'b0;
				end
				else if (s == 1'b1 && r == 1'b0)
				begin
					y<=1'b1;
				end
				else if (s == 1'b1 && r == 1'b1)
				begin
					y<=1'bx;
				end
			end
endmodule
//End of the definition of the SR function
