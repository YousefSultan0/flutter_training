

Map<String, List<String>> groupByFirstChar(List<String> fruits) {
  Map<String, List<String>> newMap = {};

  fruits.forEach((fruit) {
    if (newMap.containsKey(fruit[0]) ) {
      newMap[fruit[0]]!.add(fruit);
    }
    else {
      newMap[fruit[0]] = [fruit];
    }
  });

  return newMap;
}

void main() {  
  List<String> fruits = ['apple', 'apricot', 'banana', 'blueberry', 'cherry'];
  Map<String, List<String>> groupMap = groupByFirstChar(fruits);

  print(groupMap);

}