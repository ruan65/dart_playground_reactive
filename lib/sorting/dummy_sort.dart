List<int> numbers = [34, 545, 6, 1, 23, 67, 99, 7, 7];

int findMinInList(List<int> input) {
  int min = input[0];

  for (int i = 0; i < input.length; i++) {
    if (input[i] < min) {
      min = input[i];
    }
  }
  print('found min: $min');
  return min;
}

List<int> dummySort(List<int> initialList) {
  List<int> result = [];

  while (initialList.isNotEmpty) {
    final min = findMinInList(initialList);
    result.add(min);
    initialList.remove(min);
  }

  
  return result;
}

main() {
  print(dummySort(numbers));
}
