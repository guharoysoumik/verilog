iverilog -o myOP JK.v counter.v  tb.v
vvp myOP
gtkwave wave.vcd
exit 0
