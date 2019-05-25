import 'dart:core';

class MyArrayDeque<T> {
  
  final int initialSize;
  List<T> items;

  
  int head = 0;
  int tail;

  MyArrayDeque({this.initialSize = 1000}) {
    tail = initialSize - 1;
    items = List<T>(initialSize);
  }

  addFirst(T val) {
    items[head++] = val;
  }

  addLast(T val) {
    items[tail--] = val;
  }


  T elementAt(int index) {
    // TODO: implement elementAt
    return null;
  }

  T getFirst() => items[head - 1];
  T getLast() => items[tail + 1];
}