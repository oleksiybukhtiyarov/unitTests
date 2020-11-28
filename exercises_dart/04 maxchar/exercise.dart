// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

String maxChar(String input) {
  Map<String, int> letter = {};
  List<String> character = input.split('');
  for (String i in character) {
    if (letter[i] == null) {
      letter[i] = 1;
    } else {
      letter[i] = 2;
    }
  }
  print(letter);
  MapEntry<String, int> currentChar = MapEntry("", 0);
  for (var mapEntry in letter.entries) {
    if (mapEntry.value > currentChar.value) {
      currentChar = mapEntry;
    }
  }

  return currentChar.key;
}
