
Map<String, int> merge(Map<String, int> map1, Map<String, int> map2) {
  Map<String, int> mergedMap = Map<String, int> ();
  
  for (var i in map1.keys) {
    if (map2.containsKey(i)) {
      mergedMap[i] = map1[i]! + map2[i]!;
    }
    else {
      mergedMap[i] = map1[i]!;
    }
  }

  for(var i in map2.keys) {
    if (!map1.containsKey(i)) {
      mergedMap[i] = map2[i]!;
    }
  }

  return mergedMap;
}

void main() {
  Map<String, int> map1 = {'a': 1, 'b': 2};
  Map<String, int> map2 = {'b': 3, 'c': 4};

  Map<String, int> mergedMap = merge(map1, map2);

  print(mergedMap);
}