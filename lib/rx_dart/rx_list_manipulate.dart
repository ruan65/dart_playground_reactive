import 'package:rxdart/rxdart.dart';

void streamOfLists() {
  var behaviorSubject = new BehaviorSubject();

  behaviorSubject.add(List.generate(5, (i) => i));

  behaviorSubject
      .mergeWith([Observable.just(['100', '200'])])
      .expand((s) => s.map((i) => 'i $i'))
      .listen((i) => print(i));
}

void mergeExample() {
  new Observable.timer(1, new Duration(seconds: 1))
      .map((i) => '$i second')
      .mergeWith([new Observable.just('2000')]).listen(print);
}
