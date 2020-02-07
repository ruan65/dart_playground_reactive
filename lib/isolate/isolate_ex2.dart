import 'dart:async';
import 'dart:isolate';

isolateExTwo() async {
  var operator1 = ReceivePort();

  await Isolate.spawn(client, operator1.sendPort);

  var clientPort = await operator1.first;

  var operator2 = ReceivePort();

  clientPort.send(['we send you money 1000\$', operator2.sendPort]);

  var msg = await operator2.first;

  print('main received: $msg');

  var operator3 = ReceivePort();

  clientPort.send(['send our money back!!!! \$1000,000.00', operator3.sendPort]);

  operator3.first.then((msg) {
    print('main then received msg: $msg');
  });

  print('end of main');
}

client(SendPort sendPort) async {
  var phone = ReceivePort();

  // giving the phone number
  sendPort.send(phone.sendPort);

  await for (var msg in phone) {
    var data = msg[0];
    print('echo received: $data');
    SendPort operatorChannel = msg[1];

    Future.delayed(const Duration(milliseconds: 200), () {
      operatorChannel.send('take it back oper: $data');
    });

    if (data == 'exit') {
      phone.close();
    }
  }
}
