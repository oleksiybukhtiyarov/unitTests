// --- Directions
// Write a program that console logs the numbers
// from 1 to n. But for multiples of three print
// “fizz” instead of the number and for the multiples
// of five print “buzz”. For numbers which are multiples
// of both three and five print “fizzbuzz”.
// --- Example
//   fizzBuzz(5);
//   1
//   2
//   fizz
//   4
//   buzz

fizzBuzz(int maxN, {Function(String) printForUnitTest}) {
  for (int i = 1; i <= maxN; i++)
    if (i % (3 * 5) == 0) {
      printForUnitTest("fizzbuzz");
    } else if (i % 3 == 0) {
      printForUnitTest("fizz");
    } else if (i % 5 == 0) {
      printForUnitTest("buzz");
    } else {
      printForUnitTest("$i");
    }
}
