var sources = [
{"label":"test-trans-8.c","name":"/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles8bit/test-trans-8.c","lines":["#include <stdint.h>","#include <crucible.h>","","int main() {","  int8_t x = crucible_int8_t(\"x\");","  int8_t y = crucible_int8_t(\"y\");","  int8_t z = crucible_int8_t(\"z\");","  assuming(x > y);","  check(x > z);","  return 0;","}"]},
]
