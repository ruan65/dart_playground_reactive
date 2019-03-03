class A {
  String getAMessage() => 'A';
}

class B {
  String getMessage() => 'B';
}

class P {
  String getPMessage() => 'P';
}

class AB extends P with A, B {}

class BA extends P with B, A {}

void main() {
  AB ab = AB();
  print(ab is P);
  print(ab is A);
  print(ab is B);

  BA ba = BA();
  print(ba is P);
  print(ba is A);
  print(ba is B);
  print(ba.getMessage());
}
