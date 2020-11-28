// --- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// --- Examples
//   reverseInt(15) === 51
//   reverseInt(981) === 189
//   reverseInt(500) === 5
//   reverseInt(-15) === -51
//   reverseInt(-90) === -9

int reverseInt(int n) {
  bool negative = (n < 0);
  String number1 = n.toString();
  String number2 = negative ? number1.substring(1) : number1;
  String number3 = reverse(number2);
  int reverseInt = int.parse(number3);

  return negative ? -1 * reverseInt : reverseInt;
}

String reverse(String input) {
  return input.split('').reduce((reserveses, x) => x + reserveses);
}
