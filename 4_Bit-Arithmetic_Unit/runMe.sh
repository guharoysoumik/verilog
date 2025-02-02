#Created by Soumik Guha Roy
rm -f dsn 2> /dev/null
rm -f wave.vcd 2> /dev/null
iverilog -o dsn arith_4_bit.v myFA.v mux.v tb.v
vvp dsn
gtkwave wave.vcd
exit 0
