import 'dart:async';

import 'package:rxdart/rxdart.dart';

void playWithRx() async {

  print("play rx");

  PublishSubject<int> publishSubject = new PublishSubject();

  StreamSubscription<int> subscription = publishSubject.stream.listen((i) => print('int: $i'));

  publishSubject.add(100);

  publishSubject.listen((i) => print('SECOND  LISTENER: $i'));

  publishSubject.add(200);

  await Future.delayed(Duration(milliseconds: 500));

  subscription.cancel();
  publishSubject.close();
}

void periodic() async {
  Observable<String> timerObservable = Observable.periodic(Duration(seconds: 1), (i) => i.toString());
  StreamSubscription subscription = timerObservable.listen(print);

  await Future.delayed(Duration(seconds: 10));

  subscription.cancel();
}