var sources = [
{"label":"test-maxint-32.c","name":"/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-maxint-32.c","lines":["#include <stdint.h>","#include <crucible.h>","","int main() {","  uint32_t x = crucible_uint32_t(\"x\");","  check(x + 1 > x);","  return 0;","}"]},
]
