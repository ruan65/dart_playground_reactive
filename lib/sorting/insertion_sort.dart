import 'dart:math';

List<int> insertor(List<int> list, int n) {
  for (int i = 0; i < list.length; i++) {
    if (n < list[i]) {
      var sublistLt = list.sublist(0, i);
      var sublistGt = list.sublist(i);
      sublistLt.add(n);
      sublistLt.addAll(sublistGt);
      return sublistLt;
    }
  }

  var copy = list.sublist(0, list.length);
  copy.add(n);
  return copy;
}

List<int> insertionSort(List<int> unsorted) {
  if (unsorted == null || unsorted.isEmpty) {
    throw ArgumentError('invalid input');
  }
  var result = [unsorted[0]];

  for (int i = 1; i < unsorted.length; i++) {
    result = insertor(result, unsorted[i]);
  }
  return result;
}

const size = 50000;
final rnd = Random();

main() {
  var unsorted = List.generate(size, (_) => rnd.nextInt(100));

//  print(unsorted);

  print('\n\n');

  var sorted = insertionSort(unsorted);

//  print(sorted);
}
