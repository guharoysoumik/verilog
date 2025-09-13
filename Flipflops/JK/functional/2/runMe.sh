iverilog -o myOP JK.v tb.v
vvp myOP
gtkwave wave.vcd
exit 0
