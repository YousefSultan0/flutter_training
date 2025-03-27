import 'LinkedList.dart';


LinkedList<int> list = LinkedList<int>();



void expect(dynamic retunredValue, dynamic expectedValue) {
  bool passed = (retunredValue.toString() == expectedValue.toString());
  print (passed ? ('passed'): ('failed'));
}

void test(String info, Function testFunction) {
  print('testing $info ');
  testFunction();
}

void setUp(Function settingUpLinkedList) {
  settingUpLinkedList();
}



void main() {
    
    // group('LinkedList Basic Operations');
    // test('initial length should be zero', () {
    //   expect(list.length, 0);
    // });

    // test('add should append an element', () {
    //   list.add(10);
    //   expect(list.length, (1));
    //   expect(list[0], (10));
    // });

    // test('insert should insert at the correct index', () {
    //   list.add(1);
    //   list.add(3);
    //   list.insert(1, 2);
    //   expect(list[1], (2));
    //   expect(list.length, (3));
    // });

    // test('removeAt should remove the element at given index', () {
    //   list.add(1);
    //   list.add(2);
    //   list.add(3);
    //   final removed = list.removeAt(1);
    //   expect(removed, (2));
    //   expect(list.length, (2));
    // });

    // test('contains should return true if element exists', () {
    //   list.add(5);
    //   expect(list.contains(5), true);
    //   expect(list.contains(6), false);
    // });

    // test('indexOf should return correct index', () {
    //   list.add(7);
    //   list.add(8);
    //   expect(list.indexOf(8), (1));
    //   expect(list.indexOf(9), (-1));
    // });

    // test('clear should remove all elements', () {
    //   list.add(1);
    //   list.add(2);
    //   list.clear();
    //   expect(list.length, (0));
    // });

    // test('operator [] and []= should work correctly', () {
    //   list.add(1);
    //   list.add(2);
    //   list[1] = 20;
    //   expect(list[1], (20));
    // });

    // test('operator + should concatenate two lists', () {
    //   final list2 = LinkedList<int>();
    //   list.add(1);
    //   list.add(2);
    //   list2.add(3);
    //   list2.add(4);
    //   final combined = list + list2;
    //   expect(combined.length, (4));
    //   expect(combined[2], (3));
    // });

    // test('operator - should remove the first occurrence of an element', () {
    //   list.add(1);
    //   list.add(2);
    //   list.add(3);
    //   final newList = list - 2;
    //   expect(newList.length, (2));
    //   expect(newList.contains(2), false);
    // });
  // });

  // group('LinkedList Anonymous Function Methods', () {
  //   late LinkedList<int> list;

    setUp(() {
      list.add(1);
      list.add(2);
      list.add(3);
      list.add(4);
    });
    
    test('forEach should apply the function to each element', () {
      final List<int> result = [];
      list.forEach((element) {
        result.add(element * 10);
      });
      expect(result, ([10, 20, 30, 40]));
    });

    test('map should transform each element and return a new list', () {
      final mapped = list.map((element) => element * 2);
      expect(mapped.length, (4));
      expect(mapped[0], (2));
      expect(mapped[1], (4));
      expect(mapped[2], (6));
      expect(mapped[3], (8));
    });

    test('where should filter elements based on a test and return a new list', () {
      final filtered = list.where((element) => element % 2 == 0);
      expect(filtered.length, (2));
      expect(filtered[0], (2));
      expect(filtered[1], (4));
    });
  // });
}
