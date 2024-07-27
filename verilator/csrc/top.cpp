#include "Vtop.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <verilated.h>
#include <verilated_vcd_c.h>

int main() {
  Vtop *top = new Vtop();

  Verilated::traceEverOn(true);
  VerilatedVcdC *m_trace = new VerilatedVcdC;
  top->trace(m_trace, 5);
  m_trace->open("waveform.vcd");
  printf("start\n");

  int count = 0;

  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 16; j++) {
      top->x = i;
      top->y = j;
      top->op = 1;
      top->eval();
      assert(top->out == (i & j));
      m_trace->dump(count++);
    }
  }
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 16; j++) {
      top->x = i;
      top->y = j;
      top->op = 0;
      top->eval();
      assert(top->out == (i | j));
      m_trace->dump(count++);
    }
  }
  m_trace->close();
}
