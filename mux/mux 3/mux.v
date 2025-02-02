//THIS IS A 4x1 MUX WITH  ENABLE INPUT
//CREATED BY SOUMIK GUHA ROY
module mux(I0,I1,I2,I3,s1,s0,Enable,y);
	input I0,I1,I2,I3,s1,s0,Enable;
	output y;
	reg y;
	always @( I0 or I1 or I2 or I3 or s1 or s0 or Enable)	
	begin
		if (Enable ==1 )
		begin
			if (s1==0 && s0==0 )
				y<=I0;
			else if(s1==0 && s0==1)
				y<=I1;
			else if(s1==1 && s0==0)
				y<=I2;
			else
				y<=I3;
		end
		else
			y=0;

	end
endmodule
