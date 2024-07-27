VERILATOR = verilator

MODULE = top

CSRCS = $(wildcard csrc/*.cpp)
VSRCS = $(wildcard vsrc/*.v)

obj_dir/V$(MODULE): $(CSRCS) $(VSRCS)
	$(VERILATOR) $(VSRCS) --top $(MODULE) -exe csrc/$(MODULE).cpp --cc --trace
	make -C obj_dir -f V$(MODULE).mk

waveform.vcd: obj_dir/V$(MODULE)
	./obj_dir/V$(MODULE)

sim: obj_dir/V$(MODULE)
	./obj_dir/V$(MODULE)

wave: waveform.vcd
	gtkwave waveform.vcd

clean:
	rm -rf obj_dir waveform.vcd
