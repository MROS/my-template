VERILATOR = /usr/local/bin/verilator

CSRCS = $(wildcard csrc/*.cpp)
VSRCS = $(wildcard vsrc/*.v)

obj_dir/Vtop: $(CSRCS) $(VSRCS)
	$(VERILATOR) vsrc/top.v -exe csrc/test.cpp --cc --trace
	make -C obj_dir -f Vtop.mk

waveform.vcd: obj_dir/Vtop
	./obj_dir/Vtop

sim: obj_dir/Vtop
	./obj_dir/Vtop

wave: waveform.vcd
	gtkwave waveform.vcd

clean:
	rm -rf obj_dir waveform.vcd
