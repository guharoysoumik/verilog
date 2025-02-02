module cbus(regA,regB,regC,regD,muxSelect,myOutput);
	input	[3:0] regA;
	input	[3:0] regB;
	input	[3:0] regC;
	input	[3:0] regD;
	input	[1:0] muxSelect;
	output  [3:0] myOutput;
	mux mux_1(regA[3],regB[3],regC[3],regD[3],muxSelect[1],muxSelect[0],1'b1,myOutput[3]);
	mux mux_2(regA[2],regB[2],regC[2],regD[2],muxSelect[1],muxSelect[0],1'b1,myOutput[2]);
	mux mux_3(regA[1],regB[1],regC[1],regD[1],muxSelect[1],muxSelect[0],1'b1,myOutput[1]);
	mux mux_4(regA[0],regB[0],regC[0],regD[0],muxSelect[1],muxSelect[0],1'b1,myOutput[0]);
endmodule
