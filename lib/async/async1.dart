import 'package:http/http.dart' show Response, get;

//const urlPics = 'https://jsonplaceholder.typicode.com/photos/';
const urlPics = 'https://google.com';

main() async {
  String googleHtml = await doSomething();
  print(googleHtml);
}

Future<String> doSomething({resp}) async {
//  await Future.delayed(Duration(seconds: 2));

  print('requesting...');
  Response response = await get(urlPics);

  String replaced = response.body.replaceAll('href', 'HELLO!!!!!!');

  return replaced;
}
