#include "Vtop.h"
#include <verilated.h>
#include <verilated_vcd_c.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

int main()
{
	Vtop *top = new Vtop();

	Verilated::traceEverOn(true);
	VerilatedVcdC *m_trace = new VerilatedVcdC;
	top->trace(m_trace, 5);
	m_trace->open("waveform.vcd");

	top->en = 1;

	for (int i = 0; i < 4; i++)
	{
		top->x = i;
		top->eval();
		assert(top->y == (1 << i));
		m_trace->dump(i);
	}
	m_trace->close();
}
