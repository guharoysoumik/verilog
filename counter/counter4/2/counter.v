//Created by Soumik Guha Roy and moral support by the great Morris Mano
//2 bit asynchronous counter
module ccCounter(clock_counter,reset_counter,y);
	input clock_counter,reset_counter;
	output[1:0]  y;
	wire[1:0] y;
	wire[1:0] y_bar;

	JK jk_0(1'b1,1'b1,clock_counter,reset_counter,y[0],y_bar[0]); //module JK(j,k,clock,reset,y,y_bar); //LSB 
	JK jk_1(1'b1,1'b1,y_bar[0],reset_counter,y[1],y_bar[1]); //module JK(j,k,clock,reset,y,y_bar); //MSB
endmodule
//End of the functional/behavioral definition of the JK function
