//Created by Soumik Guha Roy and moral support by the great Morris Mano
//4 bit asynchronous MOD 5 counter 
module ccCounter(clock_counter,reset_counter,y);
	input clock_counter,reset_counter;
	output[3:0]  y;
	wire[3:0] y;
	wire[3:0] y_bar;

	JK jk_0(1'b1,1'b1,clock_counter,reset_counter,y[0],y_bar[0]); //module JK(j,k,clock,reset,y,y_bar); //LSB 
	JK jk_1(1'b1,1'b1,y_bar[0],reset_counter,y[1],y_bar[1]); //module JK(j,k,clock,reset,y,y_bar); 
	JK jk_2(1'b1,1'b1,y_bar[1],reset_counter,y[2],y_bar[2]); //module JK(j,k,clock,reset,y,y_bar); 
	JK jk_3(1'b1,1'b1,y_bar[2],reset_counter,y[3],y_bar[3]); //module JK(j,k,clock,reset,y,y_bar); //MSB
endmodule
//End of the functional/behavioral definition of the JK function
