import 'package:simple_playground/algo/reverse_str.dart';
import 'package:test/test.dart';

void main() {
  test('rev str', () {
    var reversed = reverseStr('hello');
    print(reversed);
    expect(reverseStr(''), '');
    expect(reverseStr('a'), 'a');
    expect(reverseStr('ab'), 'ba');

    var reversed2 = reverseStr('хорошо пошла');
    print(reversed2);
  });
}
