void main() {
  Iterable<int> numbers = Iterable.generate(10, (i) => i);

  print(numbers.first);
  print(numbers.last);

  print(numbers.skip(4));
  print(numbers.skipWhile((n) => n < 5));

  print(numbers.take(6));
  print(numbers.takeWhile((n) => n < 5).toList());

  print(numbers.any((n) => n % 2 == 0));
  print(numbers.every((n) => n % 2 == 0));

  // where method is like the filter.
  bool even(int i) => i.isEven;
  print(numbers.where((i) => even(i)));

  int multiply(i) => i * 2;
  print(numbers.map(multiply));

  int addPreviousValue(int prev, int i) => prev + i;
  print(numbers.reduce(addPreviousValue));

  for(int i in numbers) print(i);
  // or numbers.forEach((n) => print(n));

  List<int> list = numbers.toList();
  Set<int> s = numbers.toSet();
  String str = numbers.toString();

  print(list);
  print(s);
  print(str);
}