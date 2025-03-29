


Map<int, int> getOccurences(List<int> numbers) {

  Map<int, int> occurences = Map<int, int> ();
  
  for(int number in numbers) {
    if(occurences[number] == null) {
      occurences[number] = 1;
    } else {
      occurences[number] = occurences[number]! + 1;
    }
  }

  return occurences;
}



void main() {
   List<int> numbers = [1, 2, 2, 3, 3, 3];
   Map<int, int> occurences = getOccurences(numbers);

   print(occurences);
}