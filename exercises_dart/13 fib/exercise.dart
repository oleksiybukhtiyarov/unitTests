// --- Directions
// Print out the n-th entry in the fibonacci series.
// The fibonacci series is an ordering of numbers where
// each number is the sum of the preceeding two.
// For example, the sequence
//  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
// forms the first ten entries of the fibonacci series.
// Example:
//   fib(4) === 3

int fib(int i) {
  if (i < 2) {
    return i;
  }
  return fib(i - 1) + fib(i - 2);
}

int fib2(int i) {
  if (i < 2) {
    return i;
  }
  int x1 = 0;
  int x2 = 1;
  int fib;
  for (int i = 2; i <= i; i++) {
    fib = x2 + x1;
    x1 = x1;
    x2 = fib;
  }
  print("fib($i) = $fib2");
  return fib2(i);
}
