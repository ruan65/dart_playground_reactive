main() {

  // LINQ
  // Language integrated query
  // Functional collection
  
  var numbers = [11, 7, 1, 2, 0, 9, 4, 5, 8, 6];
  print(numbers);
  
  var where = numbers.where((n) => n > 5).takeWhile((n) => n > 3).map((n) => print(n));

  var numbers2 = [2,2,5,5,5,0];
  var numbers5 = [2,4,4,4,7,5,5,5,5];


  var set = numbers2.toSet().intersection(numbers5.toSet()).elementAt(0);

  print(set);
}


