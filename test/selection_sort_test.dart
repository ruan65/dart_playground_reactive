import 'package:simple_playground/sorting/selection_sort.dart';
import 'package:test/test.dart';

void main() {
  test('find minimum index test', () {
    expect(findIndexOfMinimum([10, 2, 3]), 1);
    expect(() => findIndexOfMinimum([]), throwsA(TypeMatcher<ArgumentError>()));
    expect(
        () => findIndexOfMinimum(null), throwsA(TypeMatcher<ArgumentError>()));
    expect(findIndexOfMinimum([1]), 0);
    expect(findIndexOfMinimum([1, -1]), 1);
    expect(findIndexOfMinimum([9, 0, 6, 3, 3, 5, 6]), 1);
  });
  test('swap', () {
    var l1 = [10, 2, 3];
    swap(0, 1, l1);
    expect(l1, [2, 10, 3]);

    var l2 = [10, 2, 3, -100];
    swap(3, 1, l2);
    expect(l2, [10, -100, 3, 2]);
  });

  test('selection sort', () {

    var list = [2, 10, 3];
    selectionSort(list);
    expect(list, [2, 3, 10]);

  });
}
