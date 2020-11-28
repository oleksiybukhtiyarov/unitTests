// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false

bool palindrome(String input) {
  int length = input.length ~/ 2;
  for (int i = 0; i < length; i++) {
    if (input[i] != input[input.length - 1 - i]) {
      return false;
    }
  }
  return true;
}

bool palindrome2(String input) {
  return input == reverse(input);
}

String reverse(String input) {
  return input.split('').reduce((reserveses, x) => x + reserveses);
}
