int add(int a, int b) {
  return a + b;
}

Function fun;

main() {
	fun = add;

	var result = fun(20, 30);

	print("The result is ${result}");
}