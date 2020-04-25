import 'dart:math';

bubbleSort(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    for (int j = 1; j < numbers.length - i; j++) {
      if (numbers[j - 1] > numbers[j]) {
        swapElementsInList(j, numbers);
      }
    }
  }
}

bubbleSort2(List<int> numbers) {
  numbers.asMap().forEach((i, n) {
    for (int j = 1; j < numbers.length - i; j++) {
      if (numbers[j - 1] > numbers[j]) {
        swapElementsInList(j, numbers);
      }
    }
  });

}

swapElementsInList(int index, List<int> numbers) {
//  int tmp = numbers[index];
  numbers[index] ^= numbers[index - 1];
  numbers[index - 1] ^= numbers[index];
}

final rnd = Random();
final size = 10;

main() {
  final numbers = List.generate(size, (i) => rnd.nextInt(size));
  print('unsorted: $numbers');
  print('\n\n');
  bubbleSort2(numbers);
  print('sorted: $numbers');
}
