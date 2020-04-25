import 'dart:math';

int findIndexOfMinimum(List<int> input) {
  if (input == null || input.isEmpty) {
    throw ArgumentError('should be non empty list');
  }
  int result = 0;
  int minimum = input[0];

  input.asMap().forEach((index, value) {
    if (value < minimum) {
      minimum = value;
      result = index;
    }
  });

  return result;
}

swap(int i, int j, List<int> input) {
  var tmp = input[i];
  input[i] = input[j];
  input[j] = tmp;
}

selectionSort(List<int> input) {
  for (var i = 0; i < input.length - 1; i++) {
    var sublist = input.sublist(i + 1);

    int minIndex = findIndexOfMinimum(sublist) + 1 + i;

    if (input[minIndex] < input[i]) {
      swap(i, minIndex, input);
    }
  }
}

int size = 100;
final rnd = Random();

main() {
  final list = List.generate(size, (_) => rnd.nextInt(100));

  print(list);

  selectionSort(list);

  print(list);
}
