import 'dart:async';

Iterable<int> get ints sync* {
  int i = 0;
  while (true) yield i++;
}

void simpleStreamExample() {
  StreamController controller = StreamController();

  final StreamSubscription subscription =
      controller.stream.listen((data) => print('$data'));
//  final StreamSubscription subscription2 = controller.stream.listen((data) => print('$data'));

  controller.sink.add("my name");
  controller.sink.add("hello");
  controller.sink.add({'a': 'elem a', 1: "hi"});
  ints.take(11).forEach((i) => controller.sink.add(i));

  controller.close();

}

void broadcastStreamExample() {
  final StreamController<int> streamController =
      StreamController<int>.broadcast();

  final subscription = streamController.stream
      .where((i) => i % 2 == 1)
      .listen((i) => print('odd num $i'));

  final subscription2 = streamController.stream
      .where((i) => i % 2 == 0)
      .listen((i) => print('even num $i'));

  ints.skip(100).take(15).forEach((i) => streamController.sink.add(i));

  streamController.close();

//  subscription2.cancel();
//  subscription.cancel();


}
