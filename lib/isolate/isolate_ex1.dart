import 'dart:async';
import 'dart:io';
import 'dart:isolate';

Isolate isolate;

void startIsolate() async {
  ReceivePort receivePort = ReceivePort();

  isolate = await Isolate.spawn(runTimer, receivePort.sendPort);

  receivePort.listen((data) {
    stdout.write('received: ' + data + ',\n');
  });
}


void runTimer(SendPort sendPort) {

  int counter = 0;
  Timer.periodic(Duration(seconds: 1), (Timer t) {
    counter++;
    String msg = 'notification ${counter}';
    stdout.write('send: ' + msg + ' - ');

    sendPort.send(msg);
  });
}
