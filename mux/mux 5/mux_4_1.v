module mux_4_1(s1,s0,i0,i1,i2,i3,e,y);
	input e,s1,s0,i0,i1,i2,i3;
	output y;
	reg y;
	
	always @ (e or s1 or s0)
	begin
		if (e==1'b0)
		begin
			y=1'bx;
		end
		else
		begin
			case ({s1,s0})
				2'b00:y=i0;
				2'b01:y=i1;
				2'b10:y=i2;
				2'b11:y=i3;
			endcase
		end
	end
endmodule
