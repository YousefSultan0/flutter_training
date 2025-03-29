Map<int, String> invert(Map<String, int> fruits) {
  Map<int, String> invertedMap = Map<int, String>();

  for (var key in fruits.keys) {
    invertedMap[fruits[key]!] = key;
  }

  return invertedMap;
}

void main() {
  Map<String, int> fruits = {'apple': 1, 'banana': 2, 'cherry': 3};

  Map<int, String> invertedMap = invert(fruits);
  print(invertedMap);
}