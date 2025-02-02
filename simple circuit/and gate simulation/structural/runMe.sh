rm -f dsn 2> /dev/null
rm -f *.vcd 2> /dev/null
iverilog -o dsn tb.v myAnd.v
vvp dsn
gtkwave wave.vcd
