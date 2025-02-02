module myMux(I0,I1,I2,I3,S1,S0,E,Y);
	input I0,I1,I2,I3,S1,S0,E;
	output Y;
	reg Y;
	always @(S1 or S0 or E )
	begin
		if (E==1'b1)
		begin
			case ({S1,S0})
				2'b00: Y=I0;
				2'b01: Y=I1;
				2'b10: Y=I2;
				2'b11: Y=I3;
				default: Y=1'bx;
			endcase
		end
		else
			Y=1'bx;
	end
endmodule
