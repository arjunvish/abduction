var sources = [
{"label":"test-file-8.c","name":"/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles8bit/test-file-8.c","lines":["#include <stdint.h>","#include <crucible.h>","","int8_t f(int8_t x) {","  return x + 1;","}","","int main() {","  int8_t x = crucible_int8_t(\"x\");","  assuming(x < 100);","  check(f(x) < 100);","  return 0;","}"]},
]
