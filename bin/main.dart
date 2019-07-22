import 'package:simple_playground/algo/find_circle_road.dart';

import '../lib/isolate/isolate_ex1.dart';


void main() {
//  print(findCircularRoad(input1));
//  print(findCircularRoad(input2));
//  print(findCircularRoad(input3));
//  print(findCircularRoad(input4));

  startIsolate();
}

List<Road> input1 = [
  Road('m', 'y'),
  Road('mu', 'y'),
  Road('mu', 'nord_pole'),
  Road('m', 'my'),
  Road('y', 'r'),
  Road('r', 's'),
  Road('m', 's'),
];

List<Road> input2 = [
  Road('m', 'y'),
  Road('y', 'r'),
  Road('r', 'm'),
];

List<Road> input3 = [
  Road('m', 'y'),
  Road('y', 'r'),
];

List<Road> input4 = [
  Road('m', 'y'),
  Road('mu', 'y'),
  Road('m', 'my'),
  Road('y', 'r'),
  Road('r', 's'),
  Road('m', 's'),
  Road('m', 'n'),
  Road('m', 'x'),
  Road('z', 'x'),
];
