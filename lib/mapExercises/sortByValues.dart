class pair{
  late String letter;
  late int value;
}


List<String> sortByValue(Map<String, int> letters) {
  List<pair> vals = [];
  for (var key in letters.keys) {
    pair temp = pair();
    temp.letter = key;
    temp.value = letters[key]!;
    vals.add(temp);
  }

  vals.sort((a, b) => a.value.compareTo(b.value));

  List<String> sortedKeys = [];

  vals.forEach((element) {
    sortedKeys.add(element.letter);
  });
  
  return sortedKeys;
}

void main() {
  Map<String, int> letters = {'a': 3, 'b': 1, 'c': 2};
  List<String> sortedKeys = sortByValue(letters);
  print(sortedKeys);
}