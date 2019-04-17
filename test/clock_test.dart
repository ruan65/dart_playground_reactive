import 'package:simple_playground/algo/clock.dart';
import 'package:test/test.dart';

void main() {
  test('test grad hour arrow passed', () {
    expect(getHourAngle(3, 0), 90);
    expect(getHourAngle(6, 0), 180);
    expect(getHourAngle(0, 0), 0);
  });

  test('test grad minute arrow passed', () {
    expect(getMinutesAngle(10), 60);
    expect(getMinutesAngle(15), 90);
    expect(getMinutesAngle(30), 180);
    expect(getMinutesAngle(0), 0);
  });

  test('getAngleBetweenArrows', () {
    expect(getAngleBetweenArrows(3, 0), 90);
    expect(getAngleBetweenArrows(9, 0), 90);
    expect(getAngleBetweenArrows(0, 0), 0);
    expect(getAngleBetweenArrows(6, 20), 50);
    expect(getAngleBetweenArrows(6, 30), 15);
  });
}
