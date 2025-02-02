module tb();
	reg[3:0] opA;
	reg[3:0] opB;
	reg[3:0] sum;
	myPAdder pa(opA,opB,1'b0,Carry_Out,sum);
	initial
		begin
			opA=4'b0000;
			opB=4'b0000;
			$dumpfile("wave.vcd");
			$dumpvars(2,tb);
			#500 $finish;
		end

	always
		begin
			#5 opA<=opA+1;
			#5 opB<=opB+1;
		end
endmodule

