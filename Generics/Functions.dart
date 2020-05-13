void main() {
  print(generic('Me', 'You'));

  print(generic(1, 2));

  print(generic<int, String>(2, 'Me'));

  print(generic2<int, double>(2, 3.6));
}

String generic <T, S>(T a, S b) {
  return '$a and $b';
}

// The types must extends an existing type, because the + sign.
T generic2 <T extends num, S extends num> (T a, S b) {
  return a + b;
}