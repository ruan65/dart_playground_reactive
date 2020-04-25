import 'dart:math';

import 'package:simple_playground/sorting/dummy_sort.dart';

swap(int index, List<int> input) {
  var tmp = input[index];
  input[index] = input[index - 1];
  input[index - 1] = tmp;
}

bubbleSort(List<int> unsortedList) {
  final size = unsortedList.length;

  for (int index = 0; index < size; index++) {
    for (int j = 1; j < size - index; j++) {
      if (unsortedList[j - 1] > unsortedList[j]) {
        swap(j, unsortedList);
      }
    }
  }
}

const listSize = 10000;
final rnd = Random();
main() {
  List<int> numbers = List.generate(listSize, (_) => rnd.nextInt(listSize));

//  print('unsorted: $numbers\n\n');

  var start = DateTime.now().millisecondsSinceEpoch;
  bubbleSort(numbers);
  print('perfomance buble: ${DateTime.now().millisecondsSinceEpoch - start}');

  List<int> numbers2 = List.generate(listSize, (_) => rnd.nextInt(listSize));
  start = DateTime.now().millisecondsSinceEpoch;

  numbers2.sort();

  print('perfomance default sort: ${DateTime.now().millisecondsSinceEpoch - start}');

//  print('sorted: $numbers');
}
