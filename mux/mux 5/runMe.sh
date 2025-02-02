rm -f dsn
rm -f wave.vcd
iverilog -o dsn tb.v mux_4_1.v
vvp dsn
gtkwave wave.vcd
exit 0
