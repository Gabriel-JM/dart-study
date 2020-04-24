int add(int n1, int n2) {
  return n1 + n2;
}

exec(Function op, n1, n2) {
  return op(n1, n2);
}

main() {
  var result = exec(add, 5, 4);
  print("The result is ${result}");
}