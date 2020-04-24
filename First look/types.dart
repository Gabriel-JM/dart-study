void main() {
  int x = 10;
  double y = 10.5;

  String text = "${x + y}";

  bool b = true;

  List l = [1, 2, 3];

  List<String> ls = ['a', 'b', 'c'];

  print(text);
  print(b);
  print(l);
  print(ls);

  Map map = {
    'a': 10,
    'b': 20,
    'c': 30
  };

  print(map);
  print(map['b']);
}