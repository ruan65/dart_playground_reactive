import 'dart:core';

class MyArrayDeque<T> {
  final int initialSize;
  final List<T> items;

  int head;
  int tail = -1;

  MyArrayDeque({this.initialSize = 1000}) : items = List<T>(initialSize) {
    head = initialSize;
  }

  addFirst(T value) {
    items[--head] = value;
  }

  addLast(T value) {
    items[++tail] = value;
  }

  int length() => initialSize - head + tail + 1;

  T elementAt(int index) {

    if (index < 0) throw ArgumentError;
    if (index >= length()) throw RangeError;
    // edges
    if (index == 0) return getFirst();
    if (index == length() - 1) return getLast();
    // inside
    if (index < initialSize - head) return items[head + index];
    return items[index - tail];
  }

  T getFirst() {
    if(length() == 0) throw RangeError;
    if(length() == 1) return items[0];
    return items[head];
  }

  T getLast() {
    if(length() == 0) throw RangeError;
    if(length() == 1) return items[0];
    return items[tail];
  }
}

main() {
  var arrayD = MyArrayDeque();
  arrayD.addLast(100);
  print(arrayD.getLast());
  print(arrayD.getFirst());
  arrayD.addLast(200);
  print(arrayD.getLast());
  print(arrayD.getFirst());

}
