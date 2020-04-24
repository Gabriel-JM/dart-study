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

  if(b) {
    print('Simple if with a boolean :)');
  }

  print('Normal for:');
  for(int i = 0; i < l.length; i++) {
    print(i);
  }

  print('\nFor in:');
  for(int i in l) {
    print(i);
  }

  print('\nWhile and Do while:');
  int j = 10;
  while(j > 1) {
    print(j);
    j--;
  }
  j = 10;
  do {
    print(j--);
  } while(j > 1);
}