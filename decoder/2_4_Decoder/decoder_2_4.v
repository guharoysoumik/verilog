module decoder_2_4(i1,i0,e,y0,y1,y2,y3);
	input i1,i0,e;
	output y0,y1,y2,y3;
	reg y0,y1,y2,y3;
	
	always @ (i1 or i0 or e)
		begin
			y0=1'b0;y1=1'b0;y2=1'b0;y3=1'b0;
			
			if (e==1'b1)
			begin
				case ({i1,i0})
					2'b00:y0=1'b1;
					2'b01:y1=1'b1;
					2'b10:y2=1'b1;
					2'b11:y3=1'b1;
				endcase
			end
		end
endmodule
