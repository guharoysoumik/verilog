//This module simulates Full adder operation using behavioral fashion
//Created by Soumik Guha Royresponse.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
module myFA(a,b,cin,cout,sum);
	input a,b,cin;
	output cout,sum;
	reg cout,sum;
	
	always @(a or b or cin )
	begin
		sum=(a^b^cin);
		cout=(a&b)|(cin&(a^b));
	end
endmodule
