//This is the test suite for the Full Adder
//Created by Soumik Guha Roy
module myPAdder(operandA,operandB,Cin,Cout,mySum);
	input operandA,operandB,Cin;
	output mySum,Cout;
//	reg[3:0] operandA;
//	reg[3:0] operandB;
	reg[3:0] mySum;
	reg Cout;
	myFA fa0(operandA[0],operandB[0],Cin,cout0,mySum[0]);
	myFA fa1(operandA[1],operandB[1],cout0,cout1,mySum[1]);
	myFA fa2(operandA[2],operandB[2],cout1,cout2,mySum[2]);
	myFA fa3(operandA[3],operandB[3],cout2,Cout,mySum[3]);
endmodule

