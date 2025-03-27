import 'Node.dart';
/// A generic singly linked list class.
class LinkedList<T> {
  Node<T>? head;
  Node<T>? end;
  int _length = 0;

  /// Returns the number of elements in the list.
  int get length => _length;

  /// Adds [value] to the end of the list.
  void add(T value) {
    if (_length == 0) {
      head = Node(value, null);
      end = head;
    }
    else {
      Node<T> newNode = Node(value, null);
      end?.next = newNode;
      end = newNode;
    }
    _length++;
  }

  /// Inserts [value] at the given [index].
  void insert(int index, T value) {
    if (index > _length || index < 0) {
      throw throw IndexError.withLength(index, length);
    }
    Node<T> newNode = Node(value, null);   
    Node<T>? curr = head;
    int counter = 0;
    while (counter <= index && counter < _length) {
      if (counter == index - 1) break;
      curr = curr?.next;
      counter++;
    }
    newNode.next = curr?.next;
    curr?.next = newNode;
  }

  /// Removes and returns the element at [index].
  T removeAt(int index) {
    if (index >= _length || index < 0) {
      throw IndexError.withLength(index, length);
    }

    Node<T> curr = head!;
    int counter = 0;
    while (counter <= index - 1 && counter < _length) {
      if (counter == index - 1) break;
      curr = curr.next!;
      counter++;
    }

    Node<T> deletedNode = curr.next!;
    curr.next = curr.next?.next;
    _length--;
    return deletedNode.data;
  }

  /// Returns `true` if [value] is found in the list.
  bool contains(T value) {
    Node<T> curr = head!;
    while (curr != end) {
      if (curr.data == value) return true;
      curr = curr.next!;  
    }
    return curr.data == value; 
  }

  /// Returns the index of the first occurrence of [value],
  /// or -1 if not found.
  int indexOf(T value) {
    int index = 0;
    Node<T> curr = head!;
    while (curr != end) {
      if (curr.data == value) return index;
      curr = curr.next!;
      ++index;
    }
    return curr.data == value ? index: -1;
  }

  /// Clears the entire list.
  void clear() {
    Node<T> curr = head!;
    
    void remove(Node<T>? currNode) {
      if (currNode == end) {
        currNode = null;
        --_length;
        return;
      }
      remove(currNode?.next);
      --_length;
      currNode = null;
    }
    remove(curr);
  }

  /// Provides read access to element at [index].
  T operator [](int index) {
    if (index >= _length || index < 0) {
      throw IndexError.withLength(index, length);
    }

    Node<T> curr = head!;
    int counter = 0;
    while (counter <= index && counter < _length) {
      if (counter == index) break;
      curr = curr.next!;
      counter++;
    }
    
    return curr.data;
  }

  /// Provides write access to element at [index].
  void operator []=(int index, T value) {
    if (index >= _length || index < 0) {
      throw IndexError.withLength(index, length);
    }
    Node<T> curr = head!;
    int counter = 0;
    while (counter <= index && counter < _length) {
      if (counter == index) break;
      curr = curr.next!;
      counter++;
    }
    curr.data = value;
  }

  /// Concatenates this list with [other] and returns a new list.
  LinkedList<T> operator +(LinkedList<T> other) {
    LinkedList<T> newList = LinkedList<T>();
    Node<T> curr = head!;
    while (curr != end) {
      newList.add(curr.data);
      curr = curr.next!;
    }
    newList.add(curr.data);
    curr = other.head!;
    while (curr != other.end) {
      newList.add(curr.data);
      curr = curr.next!;
    }
    newList.add(curr.data);
    return newList;
  }

  /// Returns a new list with the first occurrence of [value] removed.
  LinkedList<T> operator -(T value) {
    LinkedList<T> newList = LinkedList();
    Node<T> curr = head!;
    while (curr != end) {
      newList.add(curr.data);
      curr = curr.next!;
    }
    newList.add(curr.data);
    int index = newList.indexOf(value);
    if (index != -1) newList.removeAt(index);
    return newList;
  }

  /// Applies the given [action] to each element in the list.
  void forEach(void Function(T) action) {
    try{
      Node<T> curr = head!;
      while (curr != end) {
        action(curr.data);
        curr = curr.next!;
      }
      action(curr.data);
    } catch (error) {
      print(error);
    }
  }

  /// Returns a new [LinkedList] containing the results of applying [transform] to each element.
  LinkedList<S> map<S>(S Function(T) transform) {
    LinkedList<S> newList = LinkedList();
    Node<T> curr = head!;
    while (curr != end) {
      newList.add(transform(curr.data));
      curr = curr.next!;
    }
    newList.add(transform(curr.data));
    return newList;
  }

  /// Returns a new [LinkedList] containing only the elements that satisfy [test].
  LinkedList<T> where(bool Function(T) test) {
    LinkedList<T> newList = LinkedList();
    Node<T> curr = head!;
    while (curr != end) {
      if(test(curr.data)) newList.add(curr.data);
      curr = curr.next!;
    }
   if(test(curr.data)) newList.add(curr.data);
   return newList;
  }

  @override
  String toString() {
    StringBuffer elements = StringBuffer('');
    const seperator = ' ';
    forEach((element){
      elements.write(element);
      elements.write(seperator);
    });

    return "LinkedList: [$elements]";
  }
}