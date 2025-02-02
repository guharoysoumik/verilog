rm -f 2>/dev/null
rm -f *.vcd 2>/dev/null
iverilog -o dsn tb.v mux.v
vvp dsn
gtkwave wave.vcd

