test: test.s
  as -o test.o test.s
  ld -o test test.0
  rm test.0
