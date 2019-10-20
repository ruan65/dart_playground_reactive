main() async {
  await for(int n in numbersDownForm(10)) {

    print('hello $n');
  }
}

Stream<int> numbersDownForm(int input) async* {
  if(input >= 0) {
    await Future.delayed(Duration(milliseconds: 100));
    yield input;
    yield* numbersDownForm(input - 1);
  }
}