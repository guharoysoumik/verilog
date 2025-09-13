iverilog -o myOP_counter_4bit JK.v counter_4bit.v  tb_counter_4bit.v
vvp myOP_counter_4bit
gtkwave wave.vcd
exit 0
