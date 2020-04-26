import 'package:simple_playground/sorting/insertion_sort.dart';
import 'package:simple_playground/sorting/selection_sort.dart';
import 'package:test/test.dart';

void main() {
  test('inserter test', () {
    var l1 = [3, 6, 10];

    expect(insertor(l1, 8), [3, 6, 8, 10]);

    var l2 = [10];
    expect(insertor(l2, 8), [8, 10]);

    var l3 = [10];
    expect(insertor(l3, 18), [10, 18]);
  });

  test('insertion sort test', () {
    var l1 = [3, 0, 9, 1];

    expect(insertionSort(l1), [0, 1, 3, 9]);

    var l2 = <int>[];

    expect(() => insertionSort(l2), throwsA(TypeMatcher<ArgumentError>()));

    var l3;

    expect(() => insertionSort(l3), throwsA(TypeMatcher<ArgumentError>()));

    var l4 = [3];

    expect(insertionSort(l4), [3]);



  });
}
