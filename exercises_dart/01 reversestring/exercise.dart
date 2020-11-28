// --- Directions
// Given a string, return a new string with the reversed
// order of characters
// --- Examples
//   reverse('apple') === 'leppa'
//   reverse('hello') === 'olleh'
//   reverse('Greetings!') === '!sgniteerG'

String reverse(String input) {
  String reverses = '';
  for (var i = 0; i < input.length; i++) {
    reverses = '${input[i]}$reverses';
  }
  return reverses;
}

String reverse2(String input) {
  String reverses = '';
  for (var x in input.split('')) {
    reverses = x + reverses;
  }
  return reverses;
}

String reverse3(String input) {
  return input.split('').reduce((reserveses, x) => x + reserveses);
}
