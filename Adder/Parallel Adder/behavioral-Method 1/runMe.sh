#Created by Soumik Guha Roy
rm -f dsn 2> /dev/null
rm -f wave.vcd 2> /dev/null
iverilog -o dsn tb.v myFA.v
vvp dsn
gtkwave wave.vcd

