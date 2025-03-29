import 'dart:io';

String getSmallest(Map<String, double> probability) {
  double mn = 2;
  String ans = '!';
  for(var letter in probability.keys) {
    if(probability[letter]! < mn) {
      ans = letter;
      mn = probability[letter]!;
    }
  }

  return ans;
}

void solve(Map<String, double> probability, Map<String, String> code) {

  if(probability.length <= 1) {
    return;
  }

  String smallest1 = getSmallest(probability);
  String smallest2 = getSmallest(probability);

  double newValue = (probability[smallest1] ?? 0) + (probability[smallest2] ?? 0);
  probability.remove(smallest1);
  probability.remove(smallest2);

  String newKey = smallest1 + smallest2;
  probability[newKey] = newValue;

  solve(probability, code);

  code[smallest1] = '0' + (code[newKey] ?? '');
  code[smallest2] = '1' + (code[newKey] ?? '');
}


void main() {

  print('enter the number of symbols');
  int? size = int.parse(stdin.readLineSync()!);
  double value;
  Map<String, double> probability = {};
  print('now enter the input as this: the letter the number of occurences');
  for(int i = 0; i < size; i++) {
    String? letter = stdin.readLineSync();
    value = double.parse(stdin.readLineSync()!);
    if(value < 0 || value > 1) {
      print('invalid input');
      return;
    }
    probability[letter!] = value;
  }
  Map<String, String> huffmanCode = {};

  probability.forEach((key, value) => huffmanCode[key] = '');
  solve(probability, huffmanCode);

  huffmanCode.forEach((key, value) => print('$key = $value')) ;

}