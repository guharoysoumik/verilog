rm -f dsn 2> /dev/null
rm -f myOutput.vcd 2> /dev/null
iverilog -o dsn tb.v myHalfAdder.v
vvp dsn
gtkwave myoutput.vcd
