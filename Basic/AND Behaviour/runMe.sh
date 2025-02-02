iverilog -o myOP andGate.v tb.v
vvp myOP
gtkwave wave.vcd
exit 0
