import 'dart:math';

List<int> fibo(int size) {
  if (size == 1) {
    return [0];
  }
  if (size == 2) {
    return [0, 1];
  }
  var result = [0, 1];
  do {
    result.add(result.last + result[result.length - 2]);
  } while (result.length < size);
  return result;
}

int fiboNumber(int n) => n <= 1 ? n : fiboNumber(n - 1) + fiboNumber(n - 2);

List<int> fiboRecursive(int size) => List.generate(size, (index) => fiboNumber(index));

const n = 40;

main() {
//  print('fibo $n\n${fibo(n)}');
//  print('fibo $n\n${fiboRecursive(n)}');
print('${pow(2, 63) - 1}');
print('${pow(2, 63) - 2}');

  print('fibo num $n: ${fiboNumber(n)}');
}
