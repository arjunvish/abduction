var sources = [
{"label":"test-multident-32.c","name":"/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-multident-32.c","lines":["#include <stdint.h>","#include <crucible.h>","","int main() {","  int32_t x = crucible_int32_t(\"x\");","  int32_t y = crucible_int32_t(\"y\");","  check(x * y == x);","  return 0;","}"]},
]
