VERILOG = iverilog
TARGET = BCD_To_7.vcd

$(TARGET) : BCD_7.vvp
	vvp BCD_7.vvp

BCD_7.vvp: BCD_7_tb.v BCD_7.v
	$(VERILOG) -o BCD_7.vvp BCD_7_tb.v BCD_7.v

clean:
	del $(TARGET)