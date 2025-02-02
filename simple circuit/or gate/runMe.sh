rm -f dsn
rm -f wave.vcd
iverilog -o dsn tb.v OR.v
vvp dsn # vvp generates the wave.vcd
gtkwave wave.vcd
exit 0
#end of script
