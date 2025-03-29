Map<String, int> getStudentsWithGreaterThreshold(Map<String, int> students, int threshold) {
  Map<String, int> newMap = Map<String, int>();
  for(var student in students.keys) {
    if(students[student]! > threshold) {
      newMap[student] = students[student]!;
    }
  }
  return newMap;
}
void main() {
  Map<String, int> students = {'Alice': 80, 'Bob': 45, 'Charlie': 70};
  int threshold = 50;
  Map<String, int> studensanTheThreshold = getStudentsWithGreaterThreshold(students, threshold);
  print(studensanTheThreshold);
}