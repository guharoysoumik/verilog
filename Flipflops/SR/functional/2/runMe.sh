iverilog -o myOP SR_1.v tb.v
vvp myOP
gtkwave wave.vcd
exit 0
