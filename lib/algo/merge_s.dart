List<int> mergeSort(List<int> array) {
  if (array.isEmpty || array.length == 1) return array;
  List<int> left = array.sublist(0, array.length ~/ 2);
  List<int> right = array.sublist(array.length ~/ 2);
  return merge(mergeSort(left), mergeSort(right));
}

List<int> merge(List<int> first, List<int> second) {
  final result = <int>[];

  while (first.isNotEmpty && second.isNotEmpty) {
    result.add(
        first.first < second.first ? first.removeAt(0) : second.removeAt(0));
  }
  result.addAll(first.isNotEmpty ? first : second);
  return result;
}
