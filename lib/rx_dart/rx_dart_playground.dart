import 'dart:async';

import 'package:rxdart/rxdart.dart';

void playWithRx() async {
  print("play rx");

  PublishSubject<int> publishSubject = new PublishSubject();

  StreamSubscription<int> subscription =
      publishSubject.stream.listen((i) => print('int: $i'));

  publishSubject.add(100);

  publishSubject.listen((i) => print('SECOND  LISTENER: $i'));

  publishSubject.add(200);

  await Future.delayed(Duration(milliseconds: 500));

  subscription.cancel();
  publishSubject.close();
}

void periodic() async {
  Observable<String> timerObservable =
      Observable.periodic(Duration(seconds: 1), (i) => i.toString());

  timerObservable.take(7).doOnCancel(() {
    print('doing on cancel!!!');
  }).listen(print, onDone: () {
    print('done...');
  });

  Observable.fromFuture(asyncFun())
      .doOnCancel(() => print('async cancelled'))
      .listen(print);
}

Future<String> asyncFun() async {
  return Future.delayed(Duration(milliseconds: 2500), () => 'Async result');
}
