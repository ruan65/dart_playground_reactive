import 'package:simple_playground/data_structure/array_deque_like_java_hase.dart';
import 'package:test/test.dart';

void main() {

  test('test add first and get it', () {

    var deque = MyArrayDeque<int>();
    deque.addFirst(1);
    expect(deque.getFirst(), 1);
  });

  test('test add last and get it', () {

    var deque = MyArrayDeque<int>();
    deque.addLast(11);
    expect(deque.getLast(), 11);
  });
}
