module arith_4_bit (cin,s2,s1,i,j,sum,carryout);
	input cin,s2,s1;
	input [3:0] i;
	input [3:0] j;
	output [3:0] sum;
	output carryout;
	
	myFA FA_1(i[0],y1,cin,c1,sum[0]);
	myFA FA_2(i[1],y2,c1,c2,sum[1]);
	myFA FA_3(i[2],y3,c2,c3,sum[2]);
	myFA FA_4(i[3],y4,c3,c4,sum[3]);

	mux MUX_1(j[0],!j[0],1'b0,1'b1,s2,s1,1'b1,y1);
	mux MUX_2(j[1],!j[1],1'b0,1'b1,s2,s1,1'b1,y2);
	mux MUX_3(j[2],!j[2],1'b0,1'b1,s2,s1,1'b1,y3);
	mux MUX_4(j[3],!j[3],1'b0,1'b1,s2,s1,1'b1,y4);

endmodule
