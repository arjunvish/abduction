var sources = [
{"label":"test-maxint-8.c","name":"/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles8bit/test-maxint-8.c","lines":["#include <stdint.h>","#include <crucible.h>","","int main() {","  uint8_t x = crucible_uint8_t(\"x\");","  uint8_t inc = x + 1;","  check(inc > x);","  return 0;","}"]},
]
