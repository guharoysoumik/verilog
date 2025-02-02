rm -f dsn 2> /dev/null
rm -f *.vcd 2> /dev/null
iverilog -o dsn tb.v counter.v
vvp dsn
gtkwave myoutput.vcd


