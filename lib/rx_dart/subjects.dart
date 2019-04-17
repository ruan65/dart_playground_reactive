import 'package:rxdart/rxdart.dart';

void behaviourSubjectExample() {
  var subject = new BehaviorSubject<String>();
  subject.listen((item) => print(item));
  subject.stream;

  final item1 = "Item1";

  subject.add(item1);
  subject.add("Item2");

  subject.stream
      .map((s) => 'bbb... $s')
      .listen((item) => print(item.toUpperCase()));

  subject.add("b Item3");
}

void behaviourSubjectDistinctExample() {
  var subject = new BehaviorSubject<String>();
  subject.distinct().asBroadcastStream().listen((item) => print(item));

  final item1 = "Item1";

  subject.add(item1);
  subject.add(item1);
  subject.add("Item2");
  subject.add("Item2");
}

void publishSubjectExample() {
  var subject = new BehaviorSubject<String>();
//  var subject = new PublishSubject<String>();

//  subject.listen((item) => print(item));

  subject.add("Item1");
  subject.add("Item2");

  subject
      .where((s) => s.length < 3)
      .map((s) => 'publish ...$s')
      .map((s) => 'second map $s')
      .listen((item) => print(item.toUpperCase()));

  subject.add("I2");
  subject.add("p Item3");
}
