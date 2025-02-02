//This is the test suite for the Full Adder
//Created by Soumik Guha Roy
module tb;
	reg[3:0] operandA;
	reg[3:0] operandB;
	myFA fa0(operandA[0],operandB[0],1'b0,cout0,sum0);
	myFA fa1(operandA[1],operandB[1],cout0,cout1,sum1);
	myFA fa2(operandA[2],operandB[2],cout1,cout2,sum2);
	myFA fa3(operandA[3],operandB[3],cout2,cout3,sum3);
	initial begin
		operandA=4'b0000;
		operandB=4'b0000;
		$dumpfile("wave.vcd");
		$dumpvars(1,tb);
		#500 $finish;
	end
	always
		begin
			#5 operandA<=operandA+1;
			#5 operandB<=operandB+1;
		end
endmodule

