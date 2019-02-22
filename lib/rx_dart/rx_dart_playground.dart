import 'package:rxdart/rxdart.dart';

void playWithRx() {
  print("play rx");

  PublishSubject<int> publishSubject = new PublishSubject();

  publishSubject.stream.listen((i) => print('int: $i'));

  publishSubject.add(100);

  publishSubject.listen((i) => print('SECOND  LISTENER: $i'));

  publishSubject.add(200);
}