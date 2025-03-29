const int infinity = 100000000;
String getMax(Map<String, int> letters) {
  int max = -infinity;
  String ans = '-1';
  for (var key in letters.keys) {
    if (letters[key]! > max) {
      max = letters[key]!;
      ans = key;
    }
  }

  return ans;
}
void main() {
  Map<String, int> letters = {'x': 10, 'y': 50, 'z': 20};
  
  String max = getMax(letters);
  print(max);
}