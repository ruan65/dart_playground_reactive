import 'package:simple_playground/data_structure/array_deque_like_java_hase.dart';
import 'package:test/test.dart';

void main() {

  test('add firsts and get first added', () {

    var deque = MyArrayDeque<int>();
    expect(() => deque.getFirst(), throwsA(RangeError));
    deque.addFirst(100);
    deque.addFirst(1);
    expect(deque.getFirst(), 1);
  });

  test('add lasts and get last added', () {

    var deque = MyArrayDeque<int>();
    expect(() => deque.getLast(), throwsA(RangeError));
    deque.addLast(110);
    deque.addLast(11);
    expect(deque.getLast(), 11);
  });

  test('get first if only last added', () {

    var deque = MyArrayDeque<int>();
    expect(() => deque.getLast(), throwsA(RangeError));
    deque.addLast(110);
    expect(deque.getFirst(), 110);
    deque.addLast(220);
    expect(deque.getFirst(), 110);
  });

  test('test length(), actual elems count/size', () {

    var deque0 = MyArrayDeque<int>(initialSize: 10);
    expect(deque0.length(), 0);

    var deque1 = MyArrayDeque<int>(initialSize: 10);
    deque1.addLast(1);
    expect(deque1.length(), 1);

    var deque5 = MyArrayDeque<int>(initialSize: 10);
    deque5.addLast(11);
    deque5.addLast(12);
    deque5.addFirst(1);
    deque5.addFirst(2);
    deque5.addFirst(3);
    // 3,2,1,11,12
    expect(deque5.length(), 5);
  });


  test('add lasts and firsts and get the right one by index', () {

//    var deque = MyArrayDeque<int>(initialSize: 10);
    var deque = MyArrayDeque<int>();

    expect(() => deque.elementAt(-1), throwsA(ArgumentError));
    expect(() => deque.elementAt(0), throwsA(RangeError));

    deque.addLast(11);
    deque.addLast(12);
    deque.addLast(13);
    deque.addLast(777);
    deque.addFirst(1);
    deque.addFirst(2);
    deque.addFirst(3);
    // 3,2,1,11,12,13,777 head = 7, tail = 3 length = 7
    // [11,12,13,777,null,null,null,3,2,1]
//    expect(deque.head, 7);
//    expect(deque.tail, 3);
    expect(() => deque.elementAt(7), throwsA(RangeError));
    expect(deque.elementAt(0), 3);
    expect(deque.elementAt(6), 777);
    // get added as first
    expect(deque.elementAt(1), 2);
    expect(deque.elementAt(2), 1);
    // get added as last
    expect(deque.elementAt(3), 11);
    expect(deque.elementAt(4), 12);
    expect(deque.elementAt(5), 13);
  });
}
