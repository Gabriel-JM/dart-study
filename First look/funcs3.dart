int add(int n1, int n2) => n1 + n2;
int sub(int n1, int n2) => n1 - n2;

Function choose(bool op) {
  return op ? add : sub;
}

main() {
  int result = choose(true)(20, 30);

  print("The result is ${result}");
}